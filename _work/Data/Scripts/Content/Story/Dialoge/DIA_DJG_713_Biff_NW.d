//*********************************************************************
//	Info EXIT
//*********************************************************************
instance DIA_Biff_NW_EXIT(C_INFO)
{
	npc				= DJG_713_Biff_NW;
	nr				= 999;
	condition		= DIA_Biff_NW_EXIT_Condition;
	information		= DIA_Biff_NW_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Biff_NW_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Biff_NW_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

///////////////////////////////////////////////////////////////////////
//	Info HAfen
///////////////////////////////////////////////////////////////////////
instance DIA_Biff_NW_HAfen(C_INFO)
{
	npc				= DJG_713_Biff_NW;
	nr				= 5;
	condition		= DIA_Biff_NW_HAfen_Condition;
	information		= DIA_Biff_NW_HAfen_Info;
	permanent		= TRUE;
	description		= "OK. Not much longer now.";
};

func int DIA_Biff_NW_HAfen_Condition()
{
	return TRUE;
};

func void DIA_Biff_NW_HAfen_Info()
{
	AI_Output(other, self, "DIA_Biff_NW_HAfen_15_00"); //OK. Not much longer now.
	AI_Output(self, other, "DIA_Biff_NW_HAfen_07_01"); //I can't wait.

	if (MIS_ReadyforChapter6 == TRUE)
	{
		Npc_ExchangeRoutine(self, "SHIP");
	}
	else
	{
		Npc_ExchangeRoutine(self, "WAITFORSHIP");
	};

	AI_StopProcessInfos(self);
};
instance DIA_Biff_NW_PICKPOCKET(C_INFO)
{
	npc				= DJG_713_Biff_NW;
	nr				= 900;
	condition		= DIA_Biff_NW_PICKPOCKET_Condition;
	information		= DIA_Biff_NW_PICKPOCKET_Info;
	permanent		= TRUE;
	description		= Pickpocket_100;
};

func int DIA_Biff_NW_PICKPOCKET_Condition()
{
	C_Beklauen(92, 250);
};

func void DIA_Biff_NW_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Biff_NW_PICKPOCKET);
	Info_AddChoice(DIA_Biff_NW_PICKPOCKET, DIALOG_BACK, DIA_Biff_NW_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Biff_NW_PICKPOCKET, DIALOG_PICKPOCKET, DIA_Biff_NW_PICKPOCKET_DoIt);
};

func void DIA_Biff_NW_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Biff_NW_PICKPOCKET);
};

func void DIA_Biff_NW_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Biff_NW_PICKPOCKET);
};
