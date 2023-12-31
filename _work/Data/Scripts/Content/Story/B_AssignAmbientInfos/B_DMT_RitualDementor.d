//////////////////////////////////////////////////////////////////
///
///
///			DIA_DMT_XXX_Dementor
///			RitualDementoren
///
///
//////////////////////////////////////////////////////////////////

// ************************************************************
// 	  			DMT_1201_Dementor
// ************************************************************
instance DIA_DMT_1201_Dementor_EXIT(C_INFO)
{
	npc				= DMT_1201_Dementor;
	nr				= 999;
	condition		= DIA_DMT_1201_Dementor_EXIT_Condition;
	information		= DIA_DMT_1201_Dementor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_DMT_1201_Dementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_DMT_1201_Dementor_EXIT_Info()
{
	B_AssignDementorTalk_Ritual_Exit();
};

///////////////////////////////////////////////////////////////////////
//	Info RitualDementor
///////////////////////////////////////////////////////////////////////
instance DIA_DMT_1201_Dementor(C_INFO)
{
	npc				= DMT_1201_Dementor;
	nr				= 1;
	condition		= DIA_DMT_1201_Dementor_Condition;
	information		= DIA_DMT_1201_Dementor_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_DMT_1201_Dementor_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_DMT_1201_Dementor_Info()
{
	B_AssignDementorTalk_Ritual();
};

// ************************************************************
// 	  			DMT_1202_Dementor
// ************************************************************
instance DIA_DMT_1202_Dementor_EXIT(C_INFO)
{
	npc				= DMT_1202_Dementor;
	nr				= 999;
	condition		= DIA_DMT_1202_Dementor_EXIT_Condition;
	information		= DIA_DMT_1202_Dementor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_DMT_1202_Dementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_DMT_1202_Dementor_EXIT_Info()
{
	B_AssignDementorTalk_Ritual_Exit();
};

///////////////////////////////////////////////////////////////////////
//	Info RitualDementor
///////////////////////////////////////////////////////////////////////
instance DIA_DMT_1202_Dementor(C_INFO)
{
	npc				= DMT_1202_Dementor;
	nr				= 1;
	condition		= DIA_DMT_1202_Dementor_Condition;
	information		= DIA_DMT_1202_Dementor_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_DMT_1202_Dementor_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_DMT_1202_Dementor_Info()
{
	B_AssignDementorTalk_Ritual();
};

// ************************************************************
// 	  				DMT_1203_Dementor
// ************************************************************
instance DIA_DMT_1203_Dementor_EXIT(C_INFO)
{
	npc				= DMT_1203_Dementor;
	nr				= 999;
	condition		= DIA_DMT_1203_Dementor_EXIT_Condition;
	information		= DIA_DMT_1203_Dementor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_DMT_1203_Dementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_DMT_1203_Dementor_EXIT_Info()
{
	B_AssignDementorTalk_Ritual_Exit();
};

///////////////////////////////////////////////////////////////////////
//	Info RitualDementor
///////////////////////////////////////////////////////////////////////
instance DIA_DMT_1203_Dementor(C_INFO)
{
	npc				= DMT_1203_Dementor;
	nr				= 1;
	condition		= DIA_DMT_1203_Dementor_Condition;
	information		= DIA_DMT_1203_Dementor_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_DMT_1203_Dementor_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_DMT_1203_Dementor_Info()
{
	B_AssignDementorTalk_Ritual();
};

// ************************************************************
// 	  			DMT_1204_Dementor
// ************************************************************
instance DIA_DMT_1204_Dementor_EXIT(C_INFO)
{
	npc				= DMT_1204_Dementor;
	nr				= 999;
	condition		= DIA_DMT_1204_Dementor_EXIT_Condition;
	information		= DIA_DMT_1204_Dementor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_DMT_1204_Dementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_DMT_1204_Dementor_EXIT_Info()
{
	B_AssignDementorTalk_Ritual_Exit();
};

///////////////////////////////////////////////////////////////////////
//	Info RitualDementor
///////////////////////////////////////////////////////////////////////
instance DIA_DMT_1204_Dementor(C_INFO)
{
	npc				= DMT_1204_Dementor;
	nr				= 1;
	condition		= DIA_DMT_1204_Dementor_Condition;
	information		= DIA_DMT_1204_Dementor_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_DMT_1204_Dementor_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_DMT_1204_Dementor_Info()
{
	B_AssignDementorTalk_Ritual();
};

// ************************************************************
// 	  		DMT_1205_Dementor
// ************************************************************
instance DIA_DMT_1205_Dementor_EXIT(C_INFO)
{
	npc				= DMT_1205_Dementor;
	nr				= 999;
	condition		= DIA_DMT_1205_Dementor_EXIT_Condition;
	information		= DIA_DMT_1205_Dementor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_DMT_1205_Dementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_DMT_1205_Dementor_EXIT_Info()
{
	B_AssignDementorTalk_Ritual_Exit();
};

///////////////////////////////////////////////////////////////////////
//	Info RitualDementor
///////////////////////////////////////////////////////////////////////
instance DIA_DMT_1205_Dementor(C_INFO)
{
	npc				= DMT_1205_Dementor;
	nr				= 1;
	condition		= DIA_DMT_1205_Dementor_Condition;
	information		= DIA_DMT_1205_Dementor_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_DMT_1205_Dementor_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_DMT_1205_Dementor_Info()
{
	B_AssignDementorTalk_Ritual();
};

// ************************************************************
// 	  			DMT_1206_Dementor
// ************************************************************
instance DIA_DMT_1206_Dementor_EXIT(C_INFO)
{
	npc				= DMT_1206_Dementor;
	nr				= 999;
	condition		= DIA_DMT_1206_Dementor_EXIT_Condition;
	information		= DIA_DMT_1206_Dementor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_DMT_1206_Dementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_DMT_1206_Dementor_EXIT_Info()
{
	B_AssignDementorTalk_Ritual_Exit();
};

///////////////////////////////////////////////////////////////////////
//	Info RitualDementor
///////////////////////////////////////////////////////////////////////
instance DIA_DMT_1206_Dementor(C_INFO)
{
	npc				= DMT_1206_Dementor;
	nr				= 1;
	condition		= DIA_DMT_1206_Dementor_Condition;
	information		= DIA_DMT_1206_Dementor_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_DMT_1206_Dementor_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_DMT_1206_Dementor_Info()
{
	B_AssignDementorTalk_Ritual();
};

// ************************************************************
// 	  		DMT_1207_Dementor
// ************************************************************
instance DIA_DMT_1207_Dementor_EXIT(C_INFO)
{
	npc				= DMT_1207_Dementor;
	nr				= 999;
	condition		= DIA_DMT_1207_Dementor_EXIT_Condition;
	information		= DIA_DMT_1207_Dementor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_DMT_1207_Dementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_DMT_1207_Dementor_EXIT_Info()
{
	B_AssignDementorTalk_Ritual_Exit();
};

///////////////////////////////////////////////////////////////////////
//	Info RitualDementor
///////////////////////////////////////////////////////////////////////
instance DIA_DMT_1207_Dementor(C_INFO)
{
	npc				= DMT_1207_Dementor;
	nr				= 1;
	condition		= DIA_DMT_1207_Dementor_Condition;
	information		= DIA_DMT_1207_Dementor_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_DMT_1207_Dementor_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_DMT_1207_Dementor_Info()
{
	B_AssignDementorTalk_Ritual();
};

// ************************************************************
// 	  			DMT_1208_Dementor
// ************************************************************
instance DIA_DMT_1208_Dementor_EXIT(C_INFO)
{
	npc				= DMT_1208_Dementor;
	nr				= 999;
	condition		= DIA_DMT_1208_Dementor_EXIT_Condition;
	information		= DIA_DMT_1208_Dementor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_DMT_1208_Dementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_DMT_1208_Dementor_EXIT_Info()
{
	B_AssignDementorTalk_Ritual_Exit();
};

///////////////////////////////////////////////////////////////////////
//	Info RitualDementor
///////////////////////////////////////////////////////////////////////
instance DIA_DMT_1208_Dementor(C_INFO)
{
	npc				= DMT_1208_Dementor;
	nr				= 1;
	condition		= DIA_DMT_1208_Dementor_Condition;
	information		= DIA_DMT_1208_Dementor_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_DMT_1208_Dementor_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_DMT_1208_Dementor_Info()
{
	B_AssignDementorTalk_Ritual();
};

// ************************************************************
// 	  		DMT_1209_Dementor
// ************************************************************
instance DIA_DMT_1209_Dementor_EXIT(C_INFO)
{
	npc				= DMT_1209_Dementor;
	nr				= 999;
	condition		= DIA_DMT_1209_Dementor_EXIT_Condition;
	information		= DIA_DMT_1209_Dementor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_DMT_1209_Dementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_DMT_1209_Dementor_EXIT_Info()
{
	B_AssignDementorTalk_Ritual_Exit();
};

///////////////////////////////////////////////////////////////////////
//	Info RitualDementor
///////////////////////////////////////////////////////////////////////
instance DIA_DMT_1209_Dementor(C_INFO)
{
	npc				= DMT_1209_Dementor;
	nr				= 1;
	condition		= DIA_DMT_1209_Dementor_Condition;
	information		= DIA_DMT_1209_Dementor_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_DMT_1209_Dementor_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_DMT_1209_Dementor_Info()
{
	B_AssignDementorTalk_Ritual();
};

// ************************************************************
// 	  		DMT_1210_Dementor
// ************************************************************
instance DIA_DMT_1210_Dementor_EXIT(C_INFO)
{
	npc				= DMT_1210_Dementor;
	nr				= 999;
	condition		= DIA_DMT_1210_Dementor_EXIT_Condition;
	information		= DIA_DMT_1210_Dementor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_DMT_1210_Dementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_DMT_1210_Dementor_EXIT_Info()
{
	B_AssignDementorTalk_Ritual_Exit();
};

///////////////////////////////////////////////////////////////////////
//	Info RitualDementor
///////////////////////////////////////////////////////////////////////
instance DIA_DMT_1210_Dementor(C_INFO)
{
	npc				= DMT_1210_Dementor;
	nr				= 1;
	condition		= DIA_DMT_1210_Dementor_Condition;
	information		= DIA_DMT_1210_Dementor_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_DMT_1210_Dementor_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_DMT_1210_Dementor_Info()
{
	B_AssignDementorTalk_Ritual();
};

// ************************************************************
// 	  			DMT_1211_Dementor
// ************************************************************
instance DIA_DMT_1211_Dementor_EXIT(C_INFO)
{
	npc				= DMT_1211_Dementor;
	nr				= 999;
	condition		= DIA_DMT_1211_Dementor_EXIT_Condition;
	information		= DIA_DMT_1211_Dementor_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_DMT_1211_Dementor_EXIT_Condition()
{
	return TRUE;
};

func void DIA_DMT_1211_Dementor_EXIT_Info()
{
	B_AssignDementorTalk_Ritual_Exit();
};

///////////////////////////////////////////////////////////////////////
//	Info RitualDementor
///////////////////////////////////////////////////////////////////////
instance DIA_DMT_1211_Dementor(C_INFO)
{
	npc				= DMT_1211_Dementor;
	nr				= 1;
	condition		= DIA_DMT_1211_Dementor_Condition;
	information		= DIA_DMT_1211_Dementor_Info;
	permanent		= TRUE;
	important		= TRUE;
};

func int DIA_DMT_1211_Dementor_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return TRUE;
	};
};

func void DIA_DMT_1211_Dementor_Info()
{
	B_AssignDementorTalk_Ritual();
};
