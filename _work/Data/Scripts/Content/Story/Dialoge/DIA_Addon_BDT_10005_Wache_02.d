// --------------------------------------------------------------------
//	Info EXIT
// --------------------------------------------------------------------
instance DIA_Addon_Wache_02_EXIT(C_INFO)
{
	npc				= BDT_10005_Addon_Wache_02;
	nr				= 999;
	condition		= DIA_Addon_Wache_02_EXIT_Condition;
	information		= DIA_Addon_Wache_02_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Addon_Wache_02_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Wache_02_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************
instance DIA_Addon_Wache_02_PICKPOCKET(C_INFO)
{
	npc				= BDT_10005_Addon_Wache_02;
	nr				= 900;
	condition		= DIA_Addon_Wache_02_PICKPOCKET_Condition;
	information		= DIA_Addon_Wache_02_PICKPOCKET_Info;
	permanent		= TRUE;
	description		= Pickpocket_40;
};

func int DIA_Addon_Wache_02_PICKPOCKET_Condition()
{
	C_Beklauen(38, 101);
};

func void DIA_Addon_Wache_02_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Addon_Wache_02_PICKPOCKET);
	Info_AddChoice(DIA_Addon_Wache_02_PICKPOCKET, DIALOG_BACK, DIA_Addon_Wache_02_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Addon_Wache_02_PICKPOCKET, DIALOG_PICKPOCKET, DIA_Addon_Wache_02_PICKPOCKET_DoIt);
};

func void DIA_Addon_Wache_02_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Addon_Wache_02_PICKPOCKET);
};

func void DIA_Addon_Wache_02_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Addon_Wache_02_PICKPOCKET);
};

// --------------------------------------------------------------------
//	Info Hi
// --------------------------------------------------------------------
instance DIA_Addon_Wache_02_Hi(C_INFO)
{
	npc				= BDT_10005_Addon_Wache_02;
	nr				= 2;
	condition		= DIA_Addon_Wache_02_Hi_Condition;
	information		= DIA_Addon_Wache_02_Hi_Info;
	description		= "How's it going?";
};

func int DIA_Addon_Wache_02_Hi_Condition()
{
	return TRUE;
};

func void DIA_Addon_Wache_02_Hi_Info()
{
	AI_Output(other, self, "DIA_Addon_Wache_02_Hi_15_00"); //How's it going?
	AI_Output(self, other, "DIA_Addon_Wache_02_Hi_13_01"); //Wait a minute, don't I know you from somewhere?
	B_UseFakeScroll();
	AI_Output(self, other, "DIA_Addon_Wache_02_Hi_13_02"); //Hmm... no. You're not him. Go on, piss off.
};

// --------------------------------------------------------------------
//	Info Attentat
// --------------------------------------------------------------------
instance DIA_Addon_Wache_02_Attentat(C_INFO)
{
	npc				= BDT_10005_Addon_Wache_02;
	nr				= 2;
	condition		= DIA_Addon_Wache_02_Attentat_Condition;
	information		= DIA_Addon_Wache_02_Attentat_Info;
	description		= "What do you know about the attack?";
};

func int DIA_Addon_Wache_02_Attentat_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Addon_Wache_02_Hi)
	&& (MIS_JUDAS == LOG_RUNNING))
	{
		return TRUE;
	};
};

func void DIA_Addon_Wache_02_Attentat_Info()
{
	AI_Output(other, self, "DIA_Addon_Wache_02_Attentat_15_00"); //What do you know about the attack?
	AI_Output(self, other, "DIA_Addon_Wache_02_Attentat_13_01"); //What do I know about it? (laughs) I broke the guy's legs.
	AI_Output(self, other, "DIA_Addon_Wache_02_Attentat_13_02"); //(threatening) And I'll do the same to anybody else who wants to attack Esteban...
};

// --------------------------------------------------------------------
//	Info perm
// --------------------------------------------------------------------
instance DIA_Addon_Wache_02_perm(C_INFO)
{
	npc				= BDT_10005_Addon_Wache_02;
	nr				= 99;
	condition		= DIA_Addon_Wache_02_perm_Condition;
	information		= DIA_Addon_Wache_02_perm_Info;
	permanent		= TRUE;
	description		= "How's it going?";
};

func int DIA_Addon_Wache_02_perm_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Addon_Wache_02_Hi))
	{
		return TRUE;
	};
};

func void DIA_Addon_Wache_02_perm_Info()
{
	AI_Output(other, self, "DIA_Addon_Wache_02_perm_15_00"); //How's it going?
	AI_Output(self, other, "DIA_Addon_Wache_02_perm_13_01"); //Quiet up to now.

	if (MIS_Judas == LOG_RUNNING)
	{
		AI_Output(self, other, "DIA_Addon_Wache_02_perm_13_02"); //You look for the traitor - then we'll take care of him...
	};
};
