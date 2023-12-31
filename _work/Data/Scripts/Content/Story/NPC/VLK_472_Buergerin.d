instance VLK_472_Buergerin(Npc_Default)
{
	// -------- NPC --------
	name							= Name_Buergerin;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_VLK;
	flags							= 0;

	voice							= 16;
	id								= 472;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1);

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_BabeHair", FaceBabe_N_HairAndCloth, BodyTex_N, ITAR_VlkBabe_L);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- aivars --------
	aivar[AIV_ToughGuy]				= TRUE;

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD;

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 15);

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Vlk_Dagger);

	// -------- daily routine --------
	daily_routine = Rtn_Start_472;
};

func void Rtn_Start_472()
{
	TA_Smalltalk(05, 00, 12, 35, "NW_CITY_HABOUR_JACK");
	TA_Smalltalk(12, 35, 18, 00, "NW_CITY_HABOUR_POOR_AREA_01");
	TA_Sweep_FP(18, 00, 22, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_07_01");
	TA_Sleep(22, 00, 05, 00, "NW_CITY_HABOUR_POOR_AREA_HUT_07_BED_01");
};
