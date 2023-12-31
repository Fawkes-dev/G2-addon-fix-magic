// **************************************
// B_StopMagicSleep
// ----------------
// wird aus ZS_MAgicSleep_loop aufgerufen
// wenn SPL_Time_Sleep vorbei ist
// **************************************

func int B_StopMagicSleep()
{
	Npc_PercDisable(self, PERC_ASSESSDAMAGE); // weil Wahrnehmung unten auf B_StopMagicSleep verweist

	B_Say_Overlay(self, other, "$WHATWASSTHAT");
	AI_PlayAni(self, "T_VICTIM_SLE_2_STAND");

	// nach Aufruf dieses Befehles wird die Loop über return LOOP_END beendet (weiter im TA)
};

// **********************
// B_AssessMagicSleepTalk
// **********************

func void B_AssessMagicSleepTalk()
{
	B_Say(self, other, "$YOUDISTURBEDMYSLUMBER");

	AI_StartState(self, ZS_ObservePlayer, 1, "");
};

// *************
// ZS_MagicSleep
// *************

func void ZS_MagicSleep()
{
	// der ZS_MagicSleep beendet sich selbst im loop, daher ist keine perception PERC_ASSESSSTOPMAGIC nötig, und darf
	// auch nicht gesetzt werden, ansonsten wird der diesen zustand aktivierende effekt wenn er beendet ist (z.B. weil
	// der partikeleffekt stirbt) ein assessstopmagic senden, und dadurch illegalerweise vorzeitig den zustand beenden
	// mit anderen worten: der pfx triggert diesen zustand, und der zustand beendet sich selbst

	Npc_PercEnable(self, PERC_ASSESSDAMAGE, B_StopMagicSleep);
	Npc_PercEnable(self, PERC_ASSESSMAGIC, B_AssessMagic);
	Npc_PercEnable(self, PERC_ASSESSTALK, B_AssessMagicSleepTalk);

	// ------ Guardpassage resetten ------
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;

	// ------ RefuseTalk Counter resetten -----
	Npc_SetRefuseTalk(self, 0);

	// ------ Temp_Att (upset) "resetten" ------
	Npc_SetTempAttitude(self, Npc_GetPermAttitude(self, hero));

	// ------ Bewegungs-Overlays resetten ------
	B_StopLookAt(self);
	AI_StopPointAt(self);

	if (!Npc_HasBodyFlag(self, BS_FLAG_INTERRUPTABLE))
	{
		AI_StandUp(self);
	}
	else
	{
		AI_StandUpQuick(self);
	};

	AI_PlayAniBS(self, "T_STAND_2_VICTIM_SLE", BS_LIE);

	Npc_SetStateTime(self, self.aivar[AIV_StateTime]);
};

func int ZS_MagicSleep_Loop()
{
	//Update other from Npc_GetTarget or AIV_LASTTARGET if target is not valid (fix save/load issues)
	B_ValidateOther();

	if (Npc_GetStateTime(self) > SPL_Time_Sleep)
	{
		Npc_ClearAIQueue(self);
		B_StopMagicSleep();
		return LOOP_END;
	};

	if (Npc_GetStateTime(self) != self.aivar[AIV_StateTime])
	{
		self.aivar[AIV_StateTime] = Npc_GetStateTime(self);
	};
	
	return LOOP_CONTINUE;
};

func void ZS_MagicSleep_End()
{
};
