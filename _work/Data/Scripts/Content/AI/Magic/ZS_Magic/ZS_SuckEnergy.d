// *****************
// B_StopSuckEnergy
// *****************

var int Temp_SuckEnergy_DistToPlayer;

func void B_RestartSuckEnergy()
{
	if (Npc_GetLastHitSpellID(self) == SPL_SuckEnergy)
	{
		self.aivar[AIV_StateTime] = 0;
		Npc_SetStateTime(self, 0);

		AI_PlayAniBS(self, "T_STAND_2_SUCKENERGY_VICTIM", BS_UNCONSCIOUS);
		Wld_PlayEffect("spellFX_SuckEnergy_BloodFly", self, other, 0, 0, 0, FALSE);
	};
};

func void B_StopSuckEnergy()
{
	Npc_PercEnable(self, PERC_ASSESSMAGIC, B_AssessMagic);

	Npc_ClearAIQueue(self);
	AI_StandUp(self);

	if (self.guild < GIL_SEPERATOR_HUM)
	{
		B_AssessDamage();
	}
	else
	{
		Npc_SetTempAttitude(self, ATT_HOSTILE); // falls nicht schon Gilden-Attitüde hostile ist
	};

	// nach Aufruf dieses Befehles wird die Loop über return LOOP_END beendet
};

// **************
// ZS_SuckEnergy
// **************

func void ZS_SuckEnergy()
{
	Npc_PercEnable(self, PERC_ASSESSMAGIC, B_RestartSuckEnergy); // falls ein NSC nochmal von einem Freezespell getroffen wurde, so muss die State Time reseted werden

	Npc_StopAni(self, "S_SUCKENERGY_VICTIM");

	Npc_ClearAIQueue(self);
	AI_StandUp(self); // falls der NSC am Zappeln ist, brich die Ani ab

	// Wld_PlayEffect("spellFX_SuckEnergy_SlowTime", self, self, 0, 0, 0, FALSE);

	Temp_SuckEnergy_DistToPlayer = Npc_GetDistToPlayer(self);

	Npc_SetStateTime(self, self.aivar[AIV_StateTime]);
};

func int ZS_SuckEnergy_Loop()
{
	//Update other from Npc_GetTarget or AIV_LASTTARGET if target is not valid (fix save/load issues)
	B_ValidateOther();

	// EXIT LOOP if...

	if ((Npc_GetStateTime(self) > SPL_TIME_SuckEnergy)
	|| (Temp_SuckEnergy_DistToPlayer >= Npc_GetDistToPlayer(self) + 100))
	{
		B_StopSuckEnergy();
		return LOOP_END;
	};

	// Opfer wird in Bodystate Unconscious versetzt
	if (!C_BodyStateContains(self, BS_UNCONSCIOUS))
	{
		AI_PlayAniBS(self, "T_STAND_2_SUCKENERGY_VICTIM", BS_UNCONSCIOUS);
		Wld_PlayEffect("spellFX_SuckEnergy_BloodFly", self, other, 0, 0, 0, FALSE);
	};

	// LOOP FUNC
	if (Npc_GetStateTime(self) != self.aivar[AIV_StateTime])
	{
		self.aivar[AIV_StateTime] = Npc_GetStateTime(self);

		// ------ Damage abziehen, aber NICHT sterben (immer mindeststens 1 LE behalten) ------
		if (self.attribute[ATR_HITPOINTS] > SPL_SuckEnergy_DAMAGE)
		{
			B_MagicHurtNpc(other, self, SPL_SuckEnergy_DAMAGE);
			Npc_ChangeAttribute(other, ATR_HITPOINTS, SPL_SuckEnergy_DAMAGE);
		}
		else
		{
			B_MagicHurtNpc(other, self, self.attribute[ATR_HITPOINTS] - 1);
		};
	};

	return LOOP_CONTINUE;
};

func void ZS_SuckEnergy_End()
{
};
