// ---------------------------------------------------------------------
//	Info EXIT
// ---------------------------------------------------------------------
/*
instance DIA_Addon_Isabel_EXIT(C_INFO)
{
	npc				= BDT_1092_Addon_Isabel;
	nr				= 999;
	condition		= DIA_Addon_Isabel_EXIT_Condition;
	information		= DIA_Addon_Isabel_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Addon_Isabel_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Isabel_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

*/
// ---------------------------------------------------------------------
//	Info HI
// ---------------------------------------------------------------------
/*
instance DIA_Addon_Isabel_HI(C_INFO)
{
	npc				= BDT_1092_Addon_Isabel;
	nr				= 2;
	condition		= DIA_Addon_Isabel_HI_Condition;
	information		= DIA_Addon_Isabel_HI_Info;
	important		= TRUE;
};

func int DIA_Addon_Isabel_HI_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Addon_Isabel_HI_Info()
{
	AI_Output(self, other, "DIA_Addon_Isabel_HI_16_00"); //
	AI_Output(other, self, "DIA_Addon_Isabel_HI_15_01"); //
	AI_Output(self, other, "DIA_Addon_Isabel_HI_16_02"); //
};

*/
