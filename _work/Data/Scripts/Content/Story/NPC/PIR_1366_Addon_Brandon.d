instance PIR_1366_Addon_Brandon(Npc_Default)
{
	// -------- NPC --------
	name							= "Brandon";
	npctype							= NpcType_Main;
	guild							= GIL_PIR;
	flags							= FALSE;

	voice							= 4;
	id								= 1366;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 4);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Pony", Face_N_Tough_Okyl, BodyTex_N, ITAR_PIR_M_Addon);
	Mdl_SetModelFatness(self, 1.1);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_FollowDist]			= 400;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_MASTER;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 70);

	// -------- inventory --------
	CreateInvItems(self, itpo_Health_03, 1);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_Addon_PIR1hAxe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_1366;
};

func void Rtn_Start_1366()
{
	TA_Smalltalk(07, 03, 21, 03, "ADW_PIRATECAMP_BEACH_06");
	TA_Stand_Drinking(21, 03, 22, 03, "ADW_PIRATECAMP_BEACH_18");
	TA_Sit_Campfire(22, 03, 01, 03, "ADW_PIRATECAMP_BEACH_18");
	TA_Stand_Drinking(01, 03, 03, 03, "ADW_PIRATECAMP_BEACH_18");
	TA_Sit_Campfire(03, 03, 04, 03, "ADW_PIRATECAMP_BEACH_18");
	TA_Pee(04, 03, 04, 09, "ADW_PIRATECAMP_BEACH_18");
	TA_Stand_Drinking(04, 09, 04, 14, "ADW_PIRATECAMP_BEACH_18");
	TA_Sit_Campfire(04, 14, 07, 03, "ADW_PIRATECAMP_BEACH_18");
};

func void Rtn_Follow_1366()
{
	TA_Follow_Player(08, 00, 20, 00, "ADW_CANYON_TELEPORT_PATH_06");
	TA_Follow_Player(20, 00, 08, 00, "ADW_CANYON_TELEPORT_PATH_06");
};
