/*
 * This file is part of the FirelandsCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "Map.h"
#include "MotionMaster.h"
#include "ScriptedCreature.h"
#include "the_stockade.h"

enum Says
{
    SAY_AGGRO      = 0,
    SAY_ENRAGE     = 1,
    SAY_DEATH      = 2,

    SAY_WARDEN_1   = 0,
    SAY_WARDEN_2   = 1,
    SAY_WARDEN_3   = 2
};

enum Spells
{
    SPELL_VICIOUS_SLICE     = 86604,
    SPELL_MADDENING_CALL    = 86620,
    SPELL_ENRAGE            = 86736
};

enum Events
{
    EVENT_VICIOUS_SLICE = 1,
    EVENT_MADDENING_CALL,

    EVENT_SAY_WARDEN_1,
    EVENT_SAY_WARDEN_2,
    EVENT_SAY_WARDEN_3
};

enum Points
{
    POINT_FINISH = 0
};

Position const WardenThelwaterMovePos = { 152.019f, 106.198f, -35.1896f, 1.082104f };
Position const WardenThelWaterPos = { 138.369f, 78.2932f, -33.85627f, 1.082104f };

struct boss_hogger : public BossAI
{
    boss_hogger(Creature* creature) : BossAI(creature, DATA_HOGGER), _hasEnraged(false) { }

    void JustEngagedWith(Unit* who) override
    {
        BossAI::JustEngagedWith(who);
        Talk(SAY_AGGRO);
        events.ScheduleEvent(EVENT_VICIOUS_SLICE, 3s, 4s);
        events.ScheduleEvent(EVENT_MADDENING_CALL, 1s, 2s);
    }

    void JustDied(Unit* /*killer*/) override
    {
        Talk(SAY_DEATH);
        _JustDied();
        if (instance->instance->GetTeamInInstance() == ALLIANCE)
            me->SummonCreature(NPC_WARDEN_THELWATER, WardenThelWaterPos);
    }

    void JustSummoned(Creature* summon) override
    {
        BossAI::JustSummoned(summon);
        if (summon->GetEntry() == NPC_WARDEN_THELWATER)
            summon->GetMotionMaster()->MovePoint(POINT_FINISH, WardenThelwaterMovePos);
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_VICIOUS_SLICE:
                    DoCastVictim(SPELL_VICIOUS_SLICE);
                    events.Repeat(10s, 14s);
                    break;
                case EVENT_MADDENING_CALL:
                    DoCast(SPELL_MADDENING_CALL);
                    events.Repeat(15s, 20s);
                    break;
            }
            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;
        }

        DoMeleeAttackIfReady();
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage) override
    {
        if (me->HealthBelowPctDamaged(30, damage) && !_hasEnraged)
        {
            _hasEnraged = true;
            Talk(SAY_ENRAGE);
            DoCastSelf(SPELL_ENRAGE);
        }
    }

private:
    bool _hasEnraged;
};

struct npc_warden_thelwater : public ScriptedAI
{
    npc_warden_thelwater(Creature* creature) : ScriptedAI(creature) {}

    void MovementInform(uint32 type, uint32 id) override
    {
        if (type == POINT_MOTION_TYPE && id == POINT_FINISH)
            _events.ScheduleEvent(EVENT_SAY_WARDEN_1, 1s);
    }

    void UpdateAI(uint32 diff) override
    {
        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_SAY_WARDEN_1:
                    Talk(SAY_WARDEN_1);
                    _events.ScheduleEvent(EVENT_SAY_WARDEN_2, 4s);
                    break;
                case EVENT_SAY_WARDEN_2:
                    Talk(SAY_WARDEN_2);
                    _events.ScheduleEvent(EVENT_SAY_WARDEN_3, 3s);
                    break;
                case EVENT_SAY_WARDEN_3:
                    Talk(SAY_WARDEN_3);
                    break;
            }
        }
    }
private:
    EventMap _events;
};

void AddSC_boss_hogger()
{
    RegisterStormwindStockadeAI(boss_hogger);
    RegisterStormwindStockadeAI(npc_warden_thelwater);
}
