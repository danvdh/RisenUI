
SW_ClassNames = {
	["HUNTER"] = "",
	["WARRIOR"] = "Warrior",
	["ROGUE"] = "",
	["MAGE"] = "Mage",
	["done"] = false,
	["PRIEST"] = "Priest",
	["WARLOCK"] = "",
	["DRUID"] = "",
	["PALADIN"] = "",
	["SHAMAN"] = "",
}
SW_Parser = {
	["fallbackBlock"] = {
	},
	["eventMap"] = {
		["CHAT_MSG_SPELL_BREAK_AURA"] = {
			[1] = "AURADISPELOTHER",
			[2] = "AURADISPELSELF",
		},
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = {
			[1] = "SPELLPOWERLEECHOTHEROTHER",
			[2] = "AURAAPPLICATIONADDEDOTHERHARMFUL",
			[3] = "SPELLPOWERDRAINOTHEROTHER",
			[4] = "PERIODICAURADAMAGEOTHEROTHER",
			[5] = "SPELLLOGABSORBOTHEROTHER",
			[6] = "AURAADDEDOTHERHARMFUL",
			[7] = "PERIODICAURADAMAGESELFOTHER",
		},
		["CHAT_MSG_COMBAT_FRIENDLYPLAYER_MISSES"] = {
			[1] = "VSPARRYOTHEROTHER",
			[2] = "MISSEDOTHEROTHER",
			[3] = "VSDODGEOTHEROTHER",
			[4] = "VSBLOCKOTHEROTHER",
			[5] = "VSABSORBOTHEROTHER",
			[6] = "VSIMMUNEOTHEROTHER",
			[7] = "VSEVADEOTHEROTHER",
		},
		["CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_BUFFS"] = {
			[1] = "PERIODICAURAHEALOTHEROTHER",
			[2] = "POWERGAINOTHEROTHER",
			[3] = "AURAAPPLICATIONADDEDOTHERHELPFUL",
			[4] = "AURAADDEDOTHERHELPFUL",
		},
		["CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_DAMAGE"] = {
			[1] = "PERIODICAURADAMAGEOTHEROTHER",
			[2] = "SPELLLOGABSORBOTHEROTHER",
			[3] = "AURAAPPLICATIONADDEDOTHERHARMFUL",
			[4] = "SPELLPOWERDRAINOTHEROTHER",
			[5] = "PERIODICAURADAMAGESELFOTHER",
			[6] = "SPELLLOGABSORBSELFOTHER",
			[7] = "SPELLPOWERDRAINOTHERSELF",
			[8] = "AURAADDEDOTHERHARMFUL",
		},
		["CHAT_MSG_SPELL_SELF_BUFF"] = {
			[1] = "HEALEDSELFSELF",
			[2] = "HEALEDCRITSELFSELF",
			[3] = "POWERGAINSELFSELF",
			[4] = "SPELLEXTRAATTACKSSELF_SINGULAR",
			[5] = "SPELLTERSE_SELF",
			[6] = "SPELLCASTGOSELFTARGETTED",
			[7] = "HEALEDSELFOTHER",
			[8] = "HEALEDCRITSELFOTHER",
			[9] = "SIMPLEPERFORMSELFSELF",
			[10] = "SPELLEVADEDSELFOTHER",
			[11] = "SPELLIMMUNESELFOTHER",
			[12] = "SPELLSPLITDAMAGESELFOTHER",
			[13] = "SIMPLEPERFORMSELFSELF",
			[14] = "SPELLTERSE_SELF",
		},
		["CHAT_MSG_COMBAT_CREATURE_VS_PARTY_MISSES"] = {
			[1] = "VSDODGEOTHEROTHER",
			[2] = "VSPARRYOTHEROTHER",
			[3] = "MISSEDOTHEROTHER",
			[4] = "VSABSORBOTHEROTHER",
			[5] = "VSBLOCKOTHEROTHER",
			[6] = "VSIMMUNEOTHEROTHER",
		},
		["CHAT_MSG_COMBAT_HOSTILEPLAYER_HITS"] = {
			[1] = "VSENVIRONMENTALDAMAGE_FALLING_OTHER",
			[2] = "COMBATHITOTHEROTHER",
			[3] = "COMBATHITCRITOTHEROTHER",
			[4] = "COMBATHITOTHERSELF",
			[5] = "COMBATHITCRITOTHERSELF",
			[6] = "VSENVIRONMENTALDAMAGE_FIRE_OTHER",
			[7] = "VSENVIRONMENTALDAMAGE_LAVA_OTHER",
		},
		["CHAT_MSG_SPELL_DAMAGESHIELDS_ON_OTHERS"] = {
			[1] = "DAMAGESHIELDOTHEROTHER",
			[2] = "SPELLRESISTOTHEROTHER",
			[3] = "DAMAGESHIELDOTHERSELF",
			[4] = "SPELLRESISTOTHERSELF",
		},
		["CHAT_MSG_SPELL_PARTY_BUFF"] = {
			[1] = "HEALEDOTHEROTHER",
			[2] = "HEALEDCRITOTHEROTHER",
			[3] = "SPELLCASTGOOTHERTARGETTED",
			[4] = "SPELLRESISTOTHEROTHER",
			[5] = "SPELLIMMUNEOTHEROTHER",
			[6] = "DISPELFAILEDOTHEROTHER",
			[7] = "HEALEDOTHERSELF",
			[8] = "PROCRESISTOTHEROTHER",
			[9] = "SPELLDODGEDOTHEROTHER",
			[10] = "SPELLMISSOTHEROTHER",
			[11] = "SPELLPARRIEDOTHEROTHER",
			[12] = "SPELLCASTGOOTHER",
		},
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_BUFFS"] = {
			[1] = "PERIODICAURAHEALOTHEROTHER",
			[2] = "POWERGAINOTHEROTHER",
			[3] = "AURAAPPLICATIONADDEDOTHERHELPFUL",
			[4] = "AURAADDEDOTHERHELPFUL",
			[5] = "PERIODICAURAHEALSELFOTHER",
			[6] = "POWERGAINOTHERSELF",
		},
		["CHAT_MSG_COMBAT_HOSTILE_DEATH"] = {
			[1] = "UNITDIESOTHER",
			[2] = "SELFKILLOTHER",
			[3] = "PARTYKILLOTHER",
			[4] = "UNITDESTROYEDOTHER",
		},
		["CHAT_MSG_SPELL_PET_DAMAGE"] = {
			[1] = "SPELLLOGSCHOOLOTHEROTHER",
			[2] = "SPELLLOGCRITSCHOOLOTHEROTHER",
			[3] = "SPELLRESISTOTHEROTHER",
			[4] = "IMMUNESPELLOTHEROTHER",
			[5] = "SPELLCASTGOOTHERTARGETTED",
			[6] = "SIMPLEPERFORMOTHERSELF",
			[7] = "SPELLCASTOTHERSTART",
			[8] = "SPELLDODGEDOTHEROTHER",
			[9] = "SPELLIMMUNEOTHEROTHER",
			[10] = "SPELLINTERRUPTOTHEROTHER",
			[11] = "SPELLLOGABSORBOTHEROTHER",
			[12] = "SPELLLOGCRITOTHEROTHER",
			[13] = "SPELLLOGOTHEROTHER",
			[14] = "SPELLLOGSCHOOLOTHERSELF",
			[15] = "SPELLMISSOTHEROTHER",
			[16] = "SPELLPARRIEDOTHEROTHER",
			[17] = "SPELLREFLECTOTHEROTHER",
		},
		["CHAT_MSG_COMBAT_FRIENDLYPLAYER_HITS"] = {
			[1] = "VSENVIRONMENTALDAMAGE_FALLING_OTHER",
			[2] = "COMBATHITCRITOTHEROTHER",
			[3] = "COMBATHITOTHEROTHER",
			[4] = "VSENVIRONMENTALDAMAGE_FIRE_OTHER",
			[5] = "VSENVIRONMENTALDAMAGE_LAVA_OTHER",
		},
		["CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE"] = {
			[1] = "SPELLLOGSCHOOLOTHERSELF",
			[2] = "SPELLLOGCRITSCHOOLOTHERSELF",
			[3] = "SPELLPOWERLEECHOTHERSELF",
			[4] = "SPELLLOGOTHERSELF",
			[5] = "SPELLLOGCRITOTHERSELF",
			[6] = "SPELLRESISTOTHERSELF",
			[7] = "SPELLIMMUNEOTHERSELF",
			[8] = "SPELLLOGABSORBOTHERSELF",
			[9] = "SPELLDODGEDOTHERSELF",
			[10] = "SPELLMISSOTHERSELF",
			[11] = "SIMPLEPERFORMOTHERSELF",
			[12] = "SIMPLEPERFORMOTHEROTHER",
			[13] = "SPELLDODGEDOTHEROTHER",
			[14] = "SPELLINTERRUPTOTHEROTHER",
			[15] = "SPELLINTERRUPTOTHERSELF",
			[16] = "SPELLLOGABSORBOTHEROTHER",
			[17] = "SPELLLOGOTHEROTHER",
			[18] = "SPELLLOGSCHOOLOTHEROTHER",
			[19] = "SPELLMISSOTHEROTHER",
			[20] = "SPELLPARRIEDOTHEROTHER",
			[21] = "SPELLPARRIEDOTHERSELF",
			[22] = "SPELLRESISTOTHEROTHER",
		},
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = {
			[1] = "SPELLPOWERLEECHOTHEROTHER",
			[2] = "SPELLLOGSCHOOLOTHEROTHER",
			[3] = "SPELLLOGCRITSCHOOLOTHEROTHER",
			[4] = "SPELLIMMUNEOTHEROTHER",
			[5] = "SPELLRESISTOTHEROTHER",
			[6] = "SPELLLOGOTHEROTHER",
			[7] = "SPELLLOGCRITOTHEROTHER",
			[8] = "SPELLLOGABSORBOTHEROTHER",
			[9] = "SPELLDODGEDOTHEROTHER",
			[10] = "SPELLMISSOTHEROTHER",
			[11] = "SPELLCASTGOOTHERTARGETTED",
			[12] = "SPELLBLOCKEDOTHEROTHER",
			[13] = "SPELLPERFORMOTHERSTART",
			[14] = "SIMPLEPERFORMOTHEROTHER",
			[15] = "SPELLPARRIEDOTHEROTHER",
			[16] = "SPELLCASTOTHERSTART",
			[17] = "IMMUNESPELLOTHEROTHER",
			[18] = "SIMPLEPERFORMOTHEROTHER",
			[19] = "SPELLINTERRUPTOTHEROTHER",
			[20] = "SPELLTERSEPERFORM_OTHER",
			[21] = "SPELLCASTGOOTHER",
		},
		["CHAT_MSG_COMBAT_PET_MISSES"] = {
			[1] = "MISSEDOTHEROTHER",
			[2] = "VSABSORBOTHEROTHER",
			[3] = "VSBLOCKOTHEROTHER",
			[4] = "VSDODGEOTHEROTHER",
			[5] = "VSIMMUNEOTHEROTHER",
			[6] = "VSPARRYOTHEROTHER",
		},
		["CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS"] = {
			[1] = "PERIODICAURAHEALSELFSELF",
			[2] = "PERIODICAURAHEALOTHERSELF",
			[3] = "AURAAPPLICATIONADDEDSELFHELPFUL",
			[4] = "AURAADDEDSELFHELPFUL",
			[5] = "AURAADDEDOTHERHELPFUL",
			[6] = "PERIODICAURAHEALOTHEROTHER",
			[7] = "PERIODICAURAHEALSELFOTHER",
			[8] = "POWERGAINSELFSELF",
		},
		["CHAT_MSG_SPELL_DAMAGESHIELDS_ON_SELF"] = {
			[1] = "DAMAGESHIELDSELFOTHER",
			[2] = "SPELLRESISTSELFOTHER",
		},
		["CHAT_MSG_SPELL_HOSTILEPLAYER_DAMAGE"] = {
			[1] = "SPELLSPLITDAMAGEOTHEROTHER",
			[2] = "SPELLLOGOTHEROTHER",
			[3] = "SPELLLOGCRITOTHEROTHER",
			[4] = "SPELLRESISTOTHEROTHER",
			[5] = "SPELLLOGSCHOOLOTHEROTHER",
			[6] = "SPELLLOGCRITSCHOOLOTHEROTHER",
			[7] = "SPELLLOGABSORBOTHEROTHER",
			[8] = "SPELLIMMUNEOTHEROTHER",
			[9] = "SPELLLOGABSORBOTHERSELF",
			[10] = "SPELLLOGSCHOOLOTHERSELF",
			[11] = "SPELLLOGCRITSCHOOLOTHERSELF",
			[12] = "SPELLLOGCRITOTHERSELF",
			[13] = "SPELLLOGOTHERSELF",
			[14] = "SPELLRESISTOTHERSELF",
			[15] = "SPELLMISSOTHEROTHER",
			[16] = "SPELLCASTGOOTHERTARGETTED",
			[17] = "SPELLIMMUNEOTHERSELF",
			[18] = "SPELLMISSOTHERSELF",
			[19] = "SIMPLECASTOTHERSELF",
			[20] = "SPELLDODGEDOTHEROTHER",
			[21] = "SPELLBLOCKEDOTHEROTHER",
			[22] = "SPELLDODGEDOTHERSELF",
			[23] = "SPELLPOWERDRAINOTHEROTHER",
			[24] = "SPELLPOWERDRAINOTHERSELF",
			[25] = "SPELLCASTOTHERSTART",
			[26] = "SPELLTERSEPERFORM_OTHER",
			[27] = "SPELLPERFORMOTHERSTART",
			[28] = "SPELLPARRIEDOTHEROTHER",
			[29] = "SPELLCASTGOOTHER",
			[30] = "SPELLINTERRUPTOTHERSELF",
			[31] = "SPELLINTERRUPTOTHEROTHER",
			[32] = "SPELLEVADEDOTHEROTHER",
			[33] = "DISPELFAILEDOTHEROTHER",
			[34] = "DISPELFAILEDOTHERSELF",
			[35] = "INSTAKILLOTHER",
			[36] = "SIMPLEPERFORMOTHEROTHER",
			[37] = "SIMPLEPERFORMOTHERSELF",
			[38] = "SPELLEXTRAATTACKSOTHER_SINGULAR",
			[39] = "SPELLPARRIEDOTHERSELF",
			[40] = "SPELLTERSEPERFORM_OTHER",
		},
		["CHAT_MSG_COMBAT_HOSTILEPLAYER_MISSES"] = {
			[1] = "VSDODGEOTHEROTHER",
			[2] = "MISSEDOTHEROTHER",
			[3] = "VSABSORBOTHEROTHER",
			[4] = "VSPARRYOTHEROTHER",
			[5] = "VSIMMUNEOTHEROTHER",
			[6] = "VSABSORBOTHERSELF",
			[7] = "VSDODGEOTHERSELF",
			[8] = "VSIMMUNEOTHERSELF",
			[9] = "MISSEDOTHERSELF",
			[10] = "VSBLOCKOTHEROTHER",
			[11] = "VSPARRYOTHERSELF",
			[12] = "VSEVADEOTHEROTHER",
		},
		["CHAT_MSG_SPELL_SELF_DAMAGE"] = {
			[1] = "SPELLLOGSCHOOLSELFOTHER",
			[2] = "SPELLLOGCRITSCHOOLSELFOTHER",
			[3] = "SPELLRESISTSELFOTHER",
			[4] = "SPELLCASTGOSELFTARGETTED",
			[5] = "SPELLLOGSELFOTHER",
			[6] = "SPELLLOGCRITSELFOTHER",
			[7] = "SPELLMISSSELFOTHER",
			[8] = "SPELLREFLECTSELFOTHER",
			[9] = "SPELLLOGSCHOOLSELFSELF",
			[10] = "SPELLLOGCRITSCHOOLSELFSELF",
			[11] = "SPELLDODGEDSELFOTHER",
			[12] = "SPELLIMMUNESELFOTHER",
			[13] = "SPELLLOGABSORBSELFOTHER",
			[14] = "SPELLRESISTSELFSELF",
			[15] = "SPELLINTERRUPTSELFOTHER",
			[16] = "SPELLEVADEDSELFOTHER",
			[17] = "IMMUNESPELLSELFOTHER",
			[18] = "SIMPLEPERFORMSELFOTHER",
			[19] = "SPELLBLOCKEDSELFOTHER",
			[20] = "SPELLLOGABSORBSELFSELF",
			[21] = "SPELLPARRIEDSELFOTHER",
			[22] = "SIMPLEPERFORMSELFSELF",
			[23] = "SPELLTERSE_SELF",
		},
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE"] = {
			[1] = "PERIODICAURADAMAGEOTHEROTHER",
			[2] = "AURAAPPLICATIONADDEDOTHERHARMFUL",
			[3] = "PERIODICAURADAMAGESELFOTHER",
			[4] = "SPELLLOGABSORBOTHEROTHER",
			[5] = "SPELLPOWERDRAINOTHEROTHER",
			[6] = "AURAADDEDOTHERHARMFUL",
			[7] = "SPELLLOGABSORBSELFOTHER",
		},
		["CHAT_MSG_SPELL_PERIODIC_PARTY_BUFFS"] = {
			[1] = "POWERGAINOTHEROTHER",
			[2] = "PERIODICAURAHEALOTHEROTHER",
			[3] = "POWERGAINOTHERSELF",
			[4] = "AURAAPPLICATIONADDEDOTHERHELPFUL",
			[5] = "PERIODICAURAHEALSELFOTHER",
			[6] = "AURAADDEDOTHERHELPFUL",
		},
		["CHAT_MSG_COMBAT_SELF_MISSES"] = {
			[1] = "MISSEDSELFOTHER",
			[2] = "VSPARRYSELFOTHER",
			[3] = "VSDODGESELFOTHER",
			[4] = "VSBLOCKSELFOTHER",
			[5] = "VSABSORBSELFOTHER",
			[6] = "VSEVADESELFOTHER",
			[7] = "VSIMMUNESELFOTHER",
		},
		["CHAT_MSG_SPELL_CREATURE_VS_SELF_BUFF"] = {
			[1] = "HEALEDOTHERSELF",
			[2] = "HEALEDCRITOTHERSELF",
			[3] = "SIMPLECASTOTHERSELF",
			[4] = "PROCRESISTOTHEROTHER",
			[5] = "PROCRESISTOTHERSELF",
		},
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = {
			[1] = "PERIODICAURADAMAGEOTHERSELF",
			[2] = "SPELLLOGABSORBOTHERSELF",
			[3] = "AURAAPPLICATIONADDEDSELFHARMFUL",
			[4] = "AURAADDEDSELFHARMFUL",
			[5] = "AURAADDEDOTHERHARMFUL",
			[6] = "AURAAPPLICATIONADDEDOTHERHARMFUL",
			[7] = "PERIODICAURADAMAGEOTHEROTHER",
			[8] = "PERIODICAURADAMAGESELFSELF",
			[9] = "SPELLLOGABSORBOTHEROTHER",
			[10] = "SPELLLOGABSORBSELFSELF",
			[11] = "SPELLPOWERDRAINSELFOTHER",
			[12] = "SPELLPOWERLEECHSELFOTHER",
		},
		["CHAT_MSG_SPELL_FRIENDLYPLAYER_DAMAGE"] = {
			[1] = "SPELLLOGCRITOTHEROTHER",
			[2] = "SPELLLOGOTHEROTHER",
			[3] = "SPELLLOGSCHOOLOTHEROTHER",
			[4] = "SPELLLOGCRITSCHOOLOTHEROTHER",
			[5] = "SPELLIMMUNEOTHEROTHER",
			[6] = "SPELLDODGEDOTHEROTHER",
			[7] = "SPELLMISSOTHEROTHER",
			[8] = "SPELLRESISTOTHEROTHER",
			[9] = "SPELLREFLECTOTHEROTHER",
			[10] = "SPELLBLOCKEDOTHEROTHER",
			[11] = "SPELLCASTGOOTHERTARGETTED",
			[12] = "SPELLLOGABSORBOTHEROTHER",
			[13] = "SPELLSPLITDAMAGEOTHEROTHER",
			[14] = "SPELLLOGSCHOOLOTHERSELF",
			[15] = "SPELLLOGCRITSCHOOLOTHERSELF",
			[16] = "SPELLPOWERDRAINOTHEROTHER",
			[17] = "SPELLPERFORMOTHERSTART",
			[18] = "SPELLCASTOTHERSTART",
			[19] = "SIMPLEPERFORMOTHEROTHER",
			[20] = "SPELLTERSEPERFORM_OTHER",
			[21] = "SPELLPARRIEDOTHEROTHER",
			[22] = "SPELLINTERRUPTOTHEROTHER",
			[23] = "SPELLEVADEDOTHEROTHER",
			[24] = "SPELLCASTGOOTHER",
			[25] = "INSTAKILLOTHER",
			[26] = "DISPELFAILEDOTHEROTHER",
			[27] = "IMMUNESPELLOTHEROTHER",
			[28] = "SPELLTERSEPERFORM_OTHER",
			[29] = "SPELLCASTGOOTHER",
		},
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = {
			[1] = "PERIODICAURADAMAGEOTHEROTHER",
			[2] = "SPELLLOGABSORBOTHEROTHER",
			[3] = "SPELLPOWERDRAINOTHEROTHER",
			[4] = "SPELLPOWERLEECHOTHEROTHER",
			[5] = "AURAAPPLICATIONADDEDOTHERHARMFUL",
			[6] = "AURAADDEDOTHERHARMFUL",
			[7] = "PERIODICAURADAMAGESELFOTHER",
			[8] = "SPELLLOGABSORBSELFOTHER",
		},
		["CHAT_MSG_COMBAT_SELF_HITS"] = {
			[1] = "COMBATHITSELFOTHER",
			[2] = "COMBATHITCRITSELFOTHER",
			[3] = "VSENVIRONMENTALDAMAGE_FALLING_SELF",
			[4] = "VSENVIRONMENTALDAMAGE_FIRE_SELF",
			[5] = "VSENVIRONMENTALDAMAGE_DROWNING_SELF",
			[6] = "VSENVIRONMENTALDAMAGE_FATIGUE_SELF",
			[7] = "VSENVIRONMENTALDAMAGE_LAVA_SELF",
			[8] = "VSENVIRONMENTALDAMAGE_SLIME_SELF",
		},
		["CHAT_MSG_COMBAT_PET_HITS"] = {
			[1] = "COMBATHITCRITOTHEROTHER",
			[2] = "COMBATHITOTHEROTHER",
			[3] = "COMBATHITOTHERSELF",
			[4] = "VSENVIRONMENTALDAMAGE_FIRE_OTHER",
			[5] = "VSENVIRONMENTALDAMAGE_LAVA_OTHER",
		},
		["CHAT_MSG_SPELL_PARTY_DAMAGE"] = {
			[1] = "SPELLLOGSCHOOLOTHEROTHER",
			[2] = "SPELLLOGCRITSCHOOLOTHEROTHER",
			[3] = "SPELLRESISTOTHEROTHER",
			[4] = "SPELLIMMUNEOTHEROTHER",
			[5] = "SPELLMISSOTHEROTHER",
			[6] = "SPELLDODGEDOTHEROTHER",
			[7] = "SPELLLOGOTHEROTHER",
			[8] = "SPELLLOGCRITOTHEROTHER",
			[9] = "SPELLBLOCKEDOTHEROTHER",
			[10] = "SPELLREFLECTOTHEROTHER",
			[11] = "SPELLCASTGOOTHERTARGETTED",
			[12] = "SPELLLOGABSORBOTHEROTHER",
			[13] = "SPELLPARRIEDOTHEROTHER",
			[14] = "SIMPLEPERFORMOTHEROTHER",
			[15] = "SPELLCASTOTHERSTART",
			[16] = "SPELLINTERRUPTOTHEROTHER",
			[17] = "SPELLEVADEDOTHEROTHER",
			[18] = "DISPELFAILEDOTHEROTHER",
			[19] = "IMMUNESPELLOTHEROTHER",
			[20] = "SIMPLEPERFORMOTHEROTHER",
		},
		["CHAT_MSG_COMBAT_CREATURE_VS_PARTY_HITS"] = {
			[1] = "COMBATHITOTHEROTHER",
			[2] = "COMBATHITCRITOTHEROTHER",
			[3] = "COMBATHITCRITSCHOOLOTHEROTHER",
			[4] = "COMBATHITSCHOOLOTHEROTHER",
		},
		["CHAT_MSG_COMBAT_FRIENDLY_DEATH"] = {
			[1] = "UNITDIESOTHER",
			[2] = "UNITDIESSELF",
			[3] = "UNITDESTROYEDOTHER",
			[4] = "PARTYKILLOTHER",
			[5] = "SELFKILLOTHER",
		},
		["CHAT_MSG_SPELL_AURA_GONE_OTHER"] = {
			[1] = "AURAREMOVEDOTHER",
		},
		["CHAT_MSG_COMBAT_CREATURE_VS_CREATURE_MISSES"] = {
			[1] = "VSDODGEOTHEROTHER",
			[2] = "VSABSORBOTHEROTHER",
			[3] = "VSPARRYOTHEROTHER",
			[4] = "MISSEDOTHEROTHER",
			[5] = "VSBLOCKOTHEROTHER",
			[6] = "VSIMMUNEOTHEROTHER",
		},
		["CHAT_MSG_COMBAT_HONOR_GAIN"] = {
			[1] = "COMBATLOG_HONORAWARD",
			[2] = "COMBATLOG_HONORGAIN",
		},
		["CHAT_MSG_SPELL_HOSTILEPLAYER_BUFF"] = {
			[1] = "HEALEDOTHEROTHER",
			[2] = "HEALEDCRITOTHEROTHER",
			[3] = "POWERGAINOTHEROTHER",
			[4] = "HEALEDOTHERSELF",
			[5] = "HEALEDCRITOTHERSELF",
			[6] = "SPELLCASTGOOTHERTARGETTED",
			[7] = "SPELLEXTRAATTACKSOTHER_SINGULAR",
			[8] = "SIMPLECASTOTHERSELF",
			[9] = "SPELLIMMUNEOTHERSELF",
			[10] = "SPELLRESISTOTHEROTHER",
			[11] = "SPELLRESISTOTHERSELF",
			[12] = "SPELLEXTRAATTACKSOTHER",
			[13] = "SPELLIMMUNEOTHEROTHER",
			[14] = "SPELLCASTOTHERSTART",
			[15] = "SIMPLEPERFORMOTHEROTHER",
			[16] = "SPELLCASTGOOTHER",
			[17] = "SPELLPERFORMOTHERSTART",
			[18] = "SPELLTERSEPERFORM_OTHER",
			[19] = "DISPELFAILEDOTHEROTHER",
			[20] = "SPELLCASTGOOTHERTARGETTED",
			[21] = "SPELLMISSOTHEROTHER",
			[22] = "SPELLPOWERLEECHOTHEROTHER",
		},
		["CHAT_MSG_COMBAT_CREATURE_VS_CREATURE_HITS"] = {
			[1] = "COMBATHITOTHEROTHER",
			[2] = "COMBATHITCRITOTHEROTHER",
			[3] = "VSENVIRONMENTALDAMAGE_FIRE_OTHER",
			[4] = "COMBATHITCRITSCHOOLOTHEROTHER",
			[5] = "COMBATHITSCHOOLOTHEROTHER",
		},
		["CHAT_MSG_COMBAT_CREATURE_VS_SELF_HITS"] = {
			[1] = "COMBATHITOTHERSELF",
			[2] = "COMBATHITCRITOTHERSELF",
			[3] = "COMBATHITOTHEROTHER",
			[4] = "COMBATHITCRITOTHEROTHER",
			[5] = "COMBATHITCRITSCHOOLOTHEROTHER",
			[6] = "COMBATHITCRITSCHOOLOTHERSELF",
			[7] = "COMBATHITSCHOOLOTHEROTHER",
			[8] = "COMBATHITSCHOOLOTHERSELF",
		},
		["CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE"] = {
			[1] = "SPELLPOWERLEECHOTHEROTHER",
			[2] = "SPELLRESISTOTHEROTHER",
			[3] = "SPELLLOGSCHOOLOTHEROTHER",
			[4] = "SPELLLOGCRITSCHOOLOTHEROTHER",
			[5] = "SPELLLOGOTHEROTHER",
			[6] = "SPELLLOGCRITOTHEROTHER",
			[7] = "SPELLMISSOTHEROTHER",
			[8] = "SPELLDODGEDOTHEROTHER",
			[9] = "SPELLIMMUNEOTHEROTHER",
			[10] = "SPELLLOGABSORBOTHEROTHER",
			[11] = "SPELLCASTGOOTHERTARGETTED",
			[12] = "SIMPLEPERFORMOTHEROTHER",
			[13] = "SPELLPARRIEDOTHEROTHER",
			[14] = "IMMUNESPELLOTHEROTHER",
			[15] = "SIMPLEPERFORMOTHEROTHER",
			[16] = "SPELLBLOCKEDOTHEROTHER",
			[17] = "SPELLINTERRUPTOTHEROTHER",
		},
		["CHAT_MSG_COMBAT_PARTY_MISSES"] = {
			[1] = "MISSEDOTHEROTHER",
			[2] = "VSDODGEOTHEROTHER",
			[3] = "VSPARRYOTHEROTHER",
			[4] = "VSIMMUNEOTHEROTHER",
			[5] = "VSABSORBOTHEROTHER",
			[6] = "VSBLOCKOTHEROTHER",
			[7] = "VSEVADEOTHEROTHER",
		},
		["CHAT_MSG_SPELL_CREATURE_VS_PARTY_BUFF"] = {
			[1] = "SPELLCASTGOOTHERTARGETTED",
			[2] = "SPELLRESISTOTHEROTHER",
			[3] = "HEALEDOTHEROTHER",
			[4] = "HEALEDCRITOTHEROTHER",
			[5] = "PROCRESISTOTHEROTHER",
		},
		["CHAT_MSG_HONORPLUS"] = {
			[1] = "COMBATLOG_HONORGAIN",
		},
		["CHAT_MSG_SPELL_FRIENDLYPLAYER_BUFF"] = {
			[1] = "POWERGAINOTHEROTHER",
			[2] = "HEALEDOTHEROTHER",
			[3] = "HEALEDCRITOTHEROTHER",
			[4] = "SPELLCASTGOOTHERTARGETTED",
			[5] = "SPELLEXTRAATTACKSOTHER_SINGULAR",
			[6] = "SPELLEXTRAATTACKSOTHER",
			[7] = "SPELLIMMUNEOTHEROTHER",
			[8] = "SPELLDODGEDOTHEROTHER",
			[9] = "SPELLRESISTOTHEROTHER",
			[10] = "SPELLCASTOTHERSTART",
			[11] = "SPELLPERFORMOTHERSTART",
			[12] = "SPELLCASTGOOTHER",
			[13] = "SIMPLEPERFORMOTHEROTHER",
			[14] = "SPELLTERSEPERFORM_OTHER",
			[15] = "DISPELFAILEDOTHEROTHER",
			[16] = "PROCRESISTOTHEROTHER",
			[17] = "SIMPLECASTOTHERSELF",
			[18] = "SPELLMISSOTHEROTHER",
			[19] = "SPELLPARRIEDOTHEROTHER",
			[20] = "SPELLPOWERLEECHOTHEROTHER",
			[21] = "SPELLCASTGOOTHER",
		},
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = {
			[1] = "POWERGAINOTHERSELF",
			[2] = "POWERGAINOTHEROTHER",
			[3] = "PERIODICAURAHEALOTHEROTHER",
			[4] = "AURAADDEDOTHERHELPFUL",
		},
		["CHAT_MSG_SPELL_AURA_GONE_SELF"] = {
			[1] = "AURAREMOVEDSELF",
			[2] = "AURAREMOVEDOTHER",
		},
		["CHAT_MSG_COMBAT_PARTY_HITS"] = {
			[1] = "COMBATHITCRITOTHEROTHER",
			[2] = "COMBATHITOTHEROTHER",
			[3] = "VSENVIRONMENTALDAMAGE_FIRE_OTHER",
			[4] = "VSENVIRONMENTALDAMAGE_LAVA_OTHER",
		},
		["CHAT_MSG_COMBAT_CREATURE_VS_SELF_MISSES"] = {
			[1] = "VSABSORBOTHERSELF",
			[2] = "VSDODGEOTHERSELF",
			[3] = "MISSEDOTHERSELF",
			[4] = "VSPARRYOTHERSELF",
			[5] = "VSIMMUNEOTHERSELF",
			[6] = "MISSEDOTHEROTHER",
			[7] = "VSDODGEOTHEROTHER",
			[8] = "VSABSORBOTHEROTHER",
			[9] = "VSBLOCKOTHEROTHER",
			[10] = "VSPARRYOTHEROTHER",
		},
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF"] = {
			[1] = "HEALEDOTHEROTHER",
			[2] = "HEALEDCRITOTHEROTHER",
			[3] = "SPELLIMMUNEOTHEROTHER",
			[4] = "SPELLEXTRAATTACKSOTHER",
			[5] = "SPELLCASTGOOTHERTARGETTED",
			[6] = "SPELLCASTOTHERSTART",
			[7] = "SPELLCASTGOOTHER",
			[8] = "DISPELFAILEDOTHEROTHER",
			[9] = "PROCRESISTOTHEROTHER",
			[10] = "SPELLPERFORMOTHERSTART",
			[11] = "SPELLTERSEPERFORM_OTHER",
			[12] = "SPELLCASTGOOTHER",
		},
	},
}
SW_SpellsNSchools = {
	[1] = {
		[1] = "Holy Shock",
	},
	[2] = {
		[1] = "Fire Blast",
		[2] = "Scorch",
	},
	[4] = {
		[1] = "Cone of Cold",
		[2] = "Frostbolt",
	},
	[6] = {
		[1] = "Arcane Explosion",
	},
}
