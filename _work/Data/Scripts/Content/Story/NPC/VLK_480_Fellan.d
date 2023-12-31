instance VLK_480_Fellan(Npc_Default)
{
	// -------- NPC --------
	name							= "Fellan";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 6;
	id								= 480;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 0);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_NORMAL19, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Relaxed.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;
	aivar[AIV_ToughGuyNewsOverride]	= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_STRONG;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_ShortSword2);

	// -------- daily routine --------
	daily_routine = Rtn_Start_480;
};

func void Rtn_Start_480()
{
	TA_Repair_Hut(04, 30, 08, 00, "NW_CITY_PATH_HABOUR_09");
	TA_Repair_Hut(08, 00, 12, 00, "NW_CITY_HABOUR_REPAIR_04");
	TA_Repair_Hut(12, 00, 16, 00, "NW_CITY_PATH_HABOUR_09");
	TA_Repair_Hut(16, 00, 20, 00, "NW_CITY_HABOUR_REPAIR_04");
	TA_Repair_Hut(20, 00, 01, 30, "NW_CITY_PATH_HABOUR_09");
	TA_Sleep(01, 30, 04, 30, "NW_CITY_HABOUR_HUT_05_BED_01");
};

func void Rtn_OhneHammer_480() // wenn Spieler ihm auf's Maul gegeben hat
{
	TA_Sit_Bench(06, 00, 23, 00, "NW_CITY_HABOUR_REPAIR_03");
	TA_Sleep(23, 00, 06, 00, "NW_CITY_HABOUR_HUT_05_BED_01");
};
