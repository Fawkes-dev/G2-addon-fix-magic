// *******************
// NSC betet Statue an
// *******************

func void ZS_Pray_Sleeper()
{
	Perception_Set_Normal();

	B_ResetAll(self);

	AI_SetWalkMode(self, NPC_WALK);

	if (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp) == FALSE)
	{
		AI_GotoWP(self, self.wp);
	};
};

func int ZS_Pray_Sleeper_Loop()
{
	// ------ Beten ------
	if ((!C_BodyStateContains(self, BS_MOBINTERACT_INTERRUPT))
	&& (Wld_IsMobAvailable(self, "IDOL")))
	{
		AI_UseMob(self, "IDOL", 1);
	};

	return LOOP_CONTINUE;
};

func void ZS_Pray_Sleeper_End()
{
	AI_UseMob(self, "IDOL", -1);
};
