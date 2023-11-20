instance BAU_914_Baeuerin(Npc_Default)
{
	// -------- NPC --------
	name							= NAME_MAGD;
	npctype							= NPCTYPE_AMBIENT;
	guild							= GIL_BAU;
	flags							= 0; // NPC_FLAG_IMMORTAL oder 0

	voice							= 16;
	id								= 914;

	// -------- attributes --------
	B_SetAttributesToChapter(self, 1); // setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// -------- visuals --------
	B_SetNpcVisual(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_BlackHair, BodyTexBabe_N, ITAR_BauBabe_L); // ITAR_BauBabe_L
	Mdl_SetModelFatness(self, 0);
	Mdl_ApplyOverlayMDS(self, "Humans_Babe.mds");

	// -------- fight tactic --------
	fight_tactic = FAI_HUMAN_COWARD; // MASTER / STRONG / COWARD

	// -------- talents --------
	B_GiveNpcTalents(self);

	// -------- fighting skills --------
	B_SetFightSkills(self, 20); // Grenzen für Talent-Level liegen bei 30 und 60

	// -------- inventory --------
	B_CreateAmbientInv(self);

	// -------- equipped weapons --------
	EquipItem(self, ItMw_1h_Bau_Axe);

	// -------- daily routine --------
	daily_routine = Rtn_Start_914;
};

func void Rtn_Start_914()
{
	TA_Cook_Stove(07, 00, 20, 00, "NW_BIGFARM_HOUSE_UP1_COOK");
	TA_Stand_Eating(20, 00, 07, 00, "NW_BIGFARM_STABLE_05");
};
