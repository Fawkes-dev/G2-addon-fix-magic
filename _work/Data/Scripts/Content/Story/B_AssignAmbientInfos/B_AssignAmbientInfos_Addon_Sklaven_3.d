// *************************************************************************
// 									EXIT
// *************************************************************************
instance DIA_Skalven_3_EXIT(C_INFO)
{
	nr				= 999;
	condition		= DIA_Skalven_3_EXIT_Condition;
	information		= DIA_Skalven_3_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Skalven_3_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Skalven_3_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// *************************************************************************
// 									STANDARD
// *************************************************************************
instance DIA_Skalven_3_STANDARD(C_INFO)
{
	nr				= 2;
	condition		= DIA_Skalven_3_STANDARD_Condition;
	information		= DIA_Skalven_3_STANDARD_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_Skalven_3_STANDARD_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Skalven_3_STANDARD_Info()
{
	var int randy;
	randy = Hlp_Random(3);

	if (randy == 0)
	{
		AI_Output(self, other, "DIA_Addon_Sklaven_3_STANDARD_03_00"); //(scared) What do you want from me? Go away!
	};

	if (randy == 1)
	{
		AI_Output(self, other, "DIA_Addon_Sklaven_3_STANDARD_03_01"); //(nervous) I didn't do anything! Leave me alone.
	};

	if (randy == 2)
	{
		AI_Output(self, other, "DIA_Addon_Sklaven_3_STANDARD_03_02"); //(scared) Please don't hit me!
	};

	AI_StopProcessInfos(self);
};

//**************************************************************
// ----------------------------------------------------------------

func void B_AssignAmbientInfos_Addon_Sklaven_3(var C_Npc slf)
{
	DIA_Skalven_3_EXIT.npc = Hlp_GetInstanceID(slf);
	DIA_Skalven_3_STANDARD.npc = Hlp_GetInstanceID(slf);
};
