///////////////////////////////////////////////////////////////////////
//	Info EXIT
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Sancho_EXIT(C_INFO)
{
	npc				= BDT_1073_Addon_Sancho;
	nr				= 999;
	condition		= DIA_Addon_Sancho_EXIT_Condition;
	information		= DIA_Addon_Sancho_EXIT_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};

func int DIA_Addon_Sancho_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Sancho_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

// ************************************************************
// 			  				PICK POCKET
// ************************************************************
instance DIA_Addon_Sancho_PICKPOCKET(C_INFO)
{
	npc				= BDT_1073_Addon_Sancho;
	nr				= 900;
	condition		= DIA_Addon_Sancho_PICKPOCKET_Condition;
	information		= DIA_Addon_Sancho_PICKPOCKET_Info;
	permanent		= TRUE;
	description		= Pickpocket_40;
};

func int DIA_Addon_Sancho_PICKPOCKET_Condition()
{
	C_Beklauen(50, 40);
};

func void DIA_Addon_Sancho_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Addon_Sancho_PICKPOCKET);
	Info_AddChoice(DIA_Addon_Sancho_PICKPOCKET, DIALOG_BACK, DIA_Addon_Sancho_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Addon_Sancho_PICKPOCKET, DIALOG_PICKPOCKET, DIA_Addon_Sancho_PICKPOCKET_DoIt);
};

func void DIA_Addon_Sancho_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Addon_Sancho_PICKPOCKET);
};

func void DIA_Addon_Sancho_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Addon_Sancho_PICKPOCKET);
};

// ---------------------------------------------------------------------
//	Info HI
// ---------------------------------------------------------------------
instance DIA_Addon_Sancho_HI(C_INFO)
{
	npc				= BDT_1073_Addon_Sancho;
	nr				= 2;
	condition		= DIA_Addon_Sancho_HI_Condition;
	information		= DIA_Addon_Sancho_HI_Info;
	important		= TRUE;
};

func int DIA_Addon_Sancho_HI_Condition()
{
	return TRUE;
};

func void DIA_Addon_Sancho_HI_Info()
{
	AI_Output(self, other, "DIA_Addon_Sancho_HI_06_00"); //Shit, another new boy. (laughs) Here for the gold, too, aren't you?
	AI_Output(other, self, "DIA_Addon_Sancho_HI_15_01"); //Gold?
	AI_Output(self, other, "DIA_Addon_Sancho_HI_06_02"); //(laughing) Quit trying to kid me!
	AI_Output(self, other, "DIA_Addon_Sancho_HI_06_03"); //All the new boys who come here want into the mine.
	AI_Output(self, other, "DIA_Addon_Sancho_HI_06_04"); //But don't think it's that easy!

	if (SC_KnowsRavensGoldmine == FALSE)
	{
		B_LogEntry(TOPIC_Addon_RavenKDW, LogText_Addon_RavensGoldmine);
		Log_AddEntry(TOPIC_Addon_Sklaven, LogText_Addon_RavensGoldmine);
		B_LogEntry(TOPIC_Addon_ScoutBandits, Log_Text_Addon_ScoutBandits);
	};

	SC_KnowsRavensGoldmine = TRUE;
};

// ---------------------------------------------------------------------
//	Lager
// ---------------------------------------------------------------------
instance DIA_Addon_Sancho_Lager(C_INFO)
{
	npc				= BDT_1073_Addon_Sancho;
	nr				= 2;
	condition		= DIA_Addon_Sancho_Lager_Condition;
	information		= DIA_Addon_Sancho_Lager_Info;
	description		= "How do I get to the camp?";
};

func int DIA_Addon_Sancho_Lager_Condition()
{
	return TRUE;
};

func void DIA_Addon_Sancho_Lager_Info()
{
	AI_Output(other, self, "DIA_Addon_Sancho_Lager_15_00"); //How do I get to the camp?
	AI_Output(self, other, "DIA_Addon_Sancho_Lager_06_01"); //Just follow the boardwalk!
	if (!Npc_IsDead(Franco))
	{
		AI_Output(self, other, "DIA_Addon_Sancho_Lager_06_02"); //But if you want to get into the mine, you'll have to get past Franco.
		AI_Output(self, other, "DIA_Addon_Sancho_Lager_06_03"); //He expects all the new boys to slave away out here for a while first!
	};

	Log_CreateTopic(Topic_Addon_Franco, LOG_MISSION);
	Log_SetTopicStatus(Topic_Addon_Franco, LOG_RUNNING);
	B_LogEntry(Topic_Addon_Franco, "All the new people have to work in the swamp before they gain access to the mine.");
};

// ---------------------------------------------------------------------
//	Mine
// ---------------------------------------------------------------------
instance DIA_Addon_Sancho_Mine(C_INFO)
{
	npc				= BDT_1073_Addon_Sancho;
	nr				= 3;
	condition		= DIA_Addon_Sancho_Mine_Condition;
	information		= DIA_Addon_Sancho_Mine_Info;
	description		= "Tell me more about the mine...";
};

func int DIA_Addon_Sancho_Mine_Condition()
{
	if (!Npc_IsDead(Franco))
	{
		return TRUE;
	};
};

func void DIA_Addon_Sancho_Mine_Info()
{
	AI_Output(other, self, "DIA_Addon_Sancho_Mine_15_00"); //Tell me more about the mine...
	AI_Output(self, other, "DIA_Addon_Sancho_Mine_06_01"); //I'll give you some good advice: if you want to get in there, get in good with Franco. He's the boss out here.
	AI_Output(self, other, "DIA_Addon_Sancho_Mine_06_02"); //He decides who's the next to go in.
	AI_Output(self, other, "DIA_Addon_Sancho_Mine_06_03"); //But he'll only let you in if you don't goldbrick out here.
	AI_Output(self, other, "DIA_Addon_Sancho_Mine_06_04"); //So go to him and let him give you a job!

	B_LogEntry(Topic_Addon_Franco, "FRANCO decides who gets into the camp. He also hands out the assignments.");
};

// ---------------------------------------------------------------------
// Wo Franco
// ---------------------------------------------------------------------
instance DIA_Addon_Sancho_Franco(C_INFO)
{
	npc				= BDT_1073_Addon_Sancho;
	nr				= 4;
	condition		= DIA_Addon_Sancho_Franco_Condition;
	information		= DIA_Addon_Sancho_Franco_Info;
	description		= "Where do I find this Franco?";
};

func int DIA_Addon_Sancho_Franco_Condition()
{
	if ((Npc_KnowsInfo(other, DIA_Addon_Sancho_Mine))
	&& (!Npc_IsDead(Franco)))
	{
		return TRUE;
	};
};

func void DIA_Addon_Sancho_Franco_Info()
{
	AI_Output(other, self, "DIA_Addon_Sancho_Franco_15_00"); //Where do I find this Franco?
	AI_Output(self, other, "DIA_Addon_Sancho_Franco_06_01"); //He mostly hangs out in the court in front of the camp.
	AI_Output(self, other, "DIA_Addon_Sancho_Franco_06_02"); //Get in good with him or you'll wind up with a crappy job like me!

	B_LogEntry(Topic_Addon_Franco, "Franco hangs out in the yard in front of the camp.");
};

// ---------------------------------------------------------------------
//	Spitzel
// ---------------------------------------------------------------------
instance DIA_Addon_Sancho_Spitzel(C_INFO)
{
	npc				= BDT_1073_Addon_Sancho;
	nr				= 5;
	condition		= DIA_Addon_Sancho_Spitzel_Condition;
	information		= DIA_Addon_Sancho_Spitzel_Info;
	description		= "Do you have to hang around here all the time?";
};

func int DIA_Addon_Sancho_Spitzel_Condition()
{
	if ((Npc_KnowsInfo(other, DIA_Addon_Sancho_Franco))
	|| (Npc_IsDead(Franco)))
	{
		return TRUE;
	};
};

func void DIA_Addon_Sancho_Spitzel_Info()
{
	AI_Output(other, self, "DIA_Addon_Sancho_Spitzel_15_00"); //Do you have to hang around here all the time?
	AI_Output(self, other, "DIA_Addon_Sancho_Spitzel_06_01"); //I'm supposed to check out all the new boys, to make sure that none of them are spies.
	AI_Output(self, other, "DIA_Addon_Sancho_Spitzel_06_02"); //But you can forget it. I mean, we're at the end of the world here - in the middle of a swamp.
	AI_Output(self, other, "DIA_Addon_Sancho_Spitzel_06_03"); //No one can find us, no one will find us - and why should someone go to the trouble of sending us a spy?
};

// ---------------------------------------------------------------------
//	Info Perm
// ---------------------------------------------------------------------
instance DIA_Addon_Sancho_Perm(C_INFO)
{
	npc				= BDT_1073_Addon_Sancho;
	nr				= 99;
	condition		= DIA_Addon_Sancho_Perm_Condition;
	information		= DIA_Addon_Sancho_Perm_Info;
	permanent		= TRUE;
	description		= "What's new?";
};

func int DIA_Addon_Sancho_Perm_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Addon_Sancho_Spitzel))
	{
		return TRUE;
	};
};

var int Comment_Franco;
var int Comment_Esteban;
func void DIA_Addon_Sancho_Perm_Info()
{
	AI_Output(other, self, "DIA_Addon_Sancho_Perm_15_00"); //What's new?

	if (Npc_IsDead(Franco)
	&& (Comment_Franco == FALSE))
	{
		AI_Output(self, other, "DIA_Addon_Sancho_Perm_06_01"); //I heard you killed Franco. Nice work...

		if (!Npc_IsDead(Carlos))
		{
			AI_Output(self, other, "DIA_Addon_Sancho_Perm_06_02"); //... but now we've got that Carlos on our backs. He doesn't take any nonsense...
		}
		else
		{
			AI_Output(self, other, "DIA_Addon_Sancho_Perm_06_03"); //And you did in Carlos, too? Pal, you're a real nasty killer, aren't you? Just leave me alone.
		};

		Comment_Franco = TRUE;
	}
	else if (Npc_IsDead(Esteban)
	&& (Comment_Esteban == FALSE))
	{
		AI_Output(self, other, "DIA_Addon_Sancho_Perm_06_04"); //I heard you killed Esteban. Hey, man, you're planning something, aren't you?

		Comment_Esteban = TRUE;
	}
	else
	{
		AI_Output(self, other, "DIA_Addon_Sancho_Perm_06_05"); //Nah, there's nothing new right now.
	};
};
