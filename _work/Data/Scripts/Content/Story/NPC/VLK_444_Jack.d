// #############################################
// ##
// ## Neue Welt
// ##
// #############################################

instance VLK_444_Jack(Npc_Default)
{
	// -------- NPC --------
	name							= "Jack";
	npctype							= NpcType_Main;
	guild							= GIL_VLK;
	flags							= 0; // Sterblich, optionaler Captain im Kapitel 5!

	voice							= 14;
	id								= 444;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 2);

	// -------- visuals --------
	B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_ImportantOld, BodyTex_N, ITAR_Vlk_L);
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Tired.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 30);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_VLK_Sword);

	// -------- daily routine --------
	daily_routine = Rtn_Start_444;
};

func void Rtn_Start_444()
{
	TA_Sit_Bench(04, 45, 19, 45, "NW_CITY_HABOUR_06_C");
	TA_Sit_Throne(19, 45, 04, 45, "NW_CITY_PUFF_THRONE");
};

func void Rtn_Lighthouse_444()
{
	TA_Sit_Throne(08, 00, 20, 00, "NW_LIGHTHOUSE_IN_03");
	TA_Sleep(20, 00, 08, 00, "NW_LIGHTHOUSE_IN_03");
};

func void Rtn_WaitForShipCaptain_444()
{
	TA_Sit_Bench(08, 00, 20, 00, "NW_WAITFOR_SHIP_CAPTAIN");
	TA_Sit_Bench(0, 00, 08, 00, "NW_WAITFOR_SHIP_CAPTAIN");
};

func void Rtn_AllOnBoard_444()
{
	TA_Stand_WP(08, 00, 23, 00, "SHIP_CREW_CAPTAIN");
	TA_Sleep(23, 00, 08, 00, "SHIP_IN_06");
};
