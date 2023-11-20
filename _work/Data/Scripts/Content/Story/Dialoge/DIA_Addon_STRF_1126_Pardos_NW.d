// ---------------------------------------------------------------------
//	Info EXIT
// ---------------------------------------------------------------------
instance DIA_Addon_Pardos_NW_EXIT(C_INFO)
{
	npc				= STRF_1127_Addon_Pardos_NW;
	nr				= 999;
	condition		= DIA_Addon_Pardos_NW_EXIT_Condition;
	information		= DIA_Addon_Pardos_NW_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Addon_Pardos_NW_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Pardos_NW_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ---------------------------------------------------------------------
//	Info Hi
// ---------------------------------------------------------------------
instance DIA_Addon_Pardos_NW_Hi(C_INFO)
{
	npc				= STRF_1127_Addon_Pardos_NW;
	nr				= 2;
	condition		= DIA_Addon_Pardos_NW_Hi_Condition;
	information		= DIA_Addon_Pardos_NW_Hi_Info;
	permanent		= TRUE;
	description		= "How's it going with you?";
};

func int DIA_Addon_Pardos_NW_Hi_Condition()
{
	return TRUE;
};

func void DIA_Addon_Pardos_NW_Hi_Info()
{
	AI_Output(other, self, "DIA_Addon_Pardos_NW_Hi_15_00"); //How's it going with you?
	AI_Output(self, other, "DIA_Addon_Pardos_NW_Hi_03_01"); //(grins) Hey, if it isn't my rescuer. Thanks again, now I can just relax all day.
	AI_Output(other, self, "DIA_Addon_Pardos_NW_Hi_15_02"); //All right, I'll be moving on, then.
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************
instance DIA_Addon_Pardos_NW_PICKPOCKET(C_INFO)
{
	npc				= STRF_1127_Addon_Pardos_NW;
	nr				= 900;
	condition		= DIA_Addon_Pardos_NW_PICKPOCKET_Condition;
	information		= DIA_Addon_Pardos_NW_PICKPOCKET_Info;
	permanent		= TRUE;
	description		= Pickpocket_80;
};

func int DIA_Addon_Pardos_NW_PICKPOCKET_Condition()
{
	C_Beklauen(85, 10);
};

func void DIA_Addon_Pardos_NW_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Addon_Pardos_NW_PICKPOCKET);
	Info_AddChoice(DIA_Addon_Pardos_NW_PICKPOCKET, DIALOG_BACK, DIA_Addon_Pardos_NW_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Addon_Pardos_NW_PICKPOCKET, DIALOG_PICKPOCKET, DIA_Addon_Pardos_NW_PICKPOCKET_DoIt);
};

func void DIA_Addon_Pardos_NW_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Addon_Pardos_NW_PICKPOCKET);
};

func void DIA_Addon_Pardos_NW_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Addon_Pardos_NW_PICKPOCKET);
};
