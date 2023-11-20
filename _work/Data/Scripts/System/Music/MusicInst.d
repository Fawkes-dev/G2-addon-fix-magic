
//////////////////////////////////////
//
// 	Music Sytem
//	instance-Definitions
//
//////////////////////////////////////

// music config instance

instance musicSysConfig(C_MUSICSYS_CFG)
{
	volume = 1; // 0..1
	bitResolution = 16; // 8 / 16
	globalReverbEnabled = 1;
	sampleRate = 44100; // 11050 - 44100 prefered
	numChannels = 32; // 1 - 16
	reverbBufferSize = 262144;
};

// ------------------------------------------------------------------------------------------------
// jingle instances
// ------------------------------------------------------------------------------------------------

instance jingleFoundItem(C_MUSICJINGLE_DEF) { name = "E-Positive 2"; transSubType = TRANSITION_SUB_TYPE_BEAT; };
instance jingleLevelGain(C_MUSICJINGLE_DEF) { name = "E-Positive 1"; transSubType = TRANSITION_SUB_TYPE_MEASURE; };
instance jingleKilledFoe(C_MUSICJINGLE_DEF) { name = "E-Positive 2"; transSubType = TRANSITION_SUB_TYPE_BEAT; };
instance jingleLearnTalent(C_MUSICJINGLE_DEF) { name = "E-Positive 1"; transSubType = TRANSITION_SUB_TYPE_BEAT; };

// ------------------------------------------------------------------------------------------------
// theme instances
// ------------------------------------------------------------------------------------------------

//////////////////////
// Prototypes
//////////////////////

prototype C_MUSICTHEME_STANDARD(C_MUSICTHEME)
{
	file = "nw_dayfgt.sgt";
	transType = TRANSITION_TYPE_BREAK;
	transSubType = TRANSITION_SUB_TYPE_MEASURE;
	ReverbMix = - 8;
	ReverbTime = 9000;
	vol = 1;
	loop = 1;
};

prototype C_MUSICTHEME_THREAT(C_MUSICTHEME)
{
	file = "nw_daythr.sgt";
	transType = TRANSITION_TYPE_FILL;
	transSubType = TRANSITION_SUB_TYPE_MEASURE;
	ReverbMix = - 8;
	ReverbTime = 9000;
	vol = 1;
	loop = 1;
};

prototype C_MUSICTHEME_FIGHT(C_MUSICTHEME)
{
	file = "nw_daystd.sgt";
	transType = TRANSITION_TYPE_FILL;
	transSubType = TRANSITION_SUB_TYPE_MEASURE;
	ReverbMix = - 12;
	ReverbTime = 9000;
	vol = 1;
	loop = 1;
};

//////////////////////
// System
//////////////////////

instance SYS_Menu(C_MUSICTHEME_DEF)
{
	file = "gamestart.sgt";
	transType = TRANSITION_TYPE_NONE;
	transSubType = TRANSITION_SUB_TYPE_BEAT;
	ReverbMix = - 12;
	ReverbTime = 8500;
};

instance SYS_Loading(C_MUSICTHEME_DEF)
{
	file = "gamestart.sgt";
	transType = TRANSITION_TYPE_NONE;
	transSubType = TRANSITION_SUB_TYPE_BEAT;
	ReverbMix = - 12;
	ReverbTime = 8500;
};

// ################################################################################################
// ################################################################################################
// ################################################################################################
// ############### #######################
// ############### A D D O N W O R L D #######################
// ############### #######################
// ################################################################################################
// ################################################################################################
// ################################################################################################

// ################################################################################################
// ####### ADW - AddonWorld (default) #############################################################
// ################################################################################################

instance ADW_Day_Std(C_MUSICTHEME_STANDARD) { file = "adw_day_std.sgt"; };
instance ADW_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### AWC - AddonWorld Entrance Temple #######################################################
// ################################################################################################

instance AWC_Day_Std(C_MUSICTHEME_STANDARD) { file = "awc_day_std.sgt"; };
instance AWC_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### ADT - AdanosTempel #####################################################################
// ################################################################################################

instance ADT_Day_Std(C_MUSICTHEME_STANDARD) { file = "adt_day_std.sgt"; };

// ################################################################################################
// ####### BDT - BanditenLager ####################################################################
// ################################################################################################

instance BDT_Day_Std(C_MUSICTHEME_STANDARD) { file = "bdt_day_std.sgt"; };
instance BDT_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### BIB - Canyon Bibliothek ################################################################
// ################################################################################################

instance BIB_Day_Std(C_MUSICTHEME_STANDARD) { file = "bib_day_std.sgt"; };
instance BIB_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### CAN - Canyon ###########################################################################
// ################################################################################################

instance CAN_Day_Std(C_MUSICTHEME_STANDARD) { file = "can_day_std.sgt"; };
instance CAN_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### CRY - Crystal Cave #####################################################################
// ################################################################################################

instance CRY_Day_Std(C_MUSICTHEME_STANDARD) { file = "awc_day_std.sgt"; };
instance CRY_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### GOL - GoldMine #########################################################################
// ################################################################################################

instance GOL_Day_Std(C_MUSICTHEME_STANDARD) { file = "bib_day_std.sgt"; };
instance GOL_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### GHO - Ghost Crypta #####################################################################
// ################################################################################################

instance GHO_Day_Std(C_MUSICTHEME_STANDARD) { file = "bib_day_std.sgt"; };
instance GHO_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### MI1 - Canyon Mine 1 ####################################################################
// ################################################################################################

instance MI1_Day_Std(C_MUSICTHEME_STANDARD) { file = "bib_day_std.sgt"; };

// ################################################################################################
// ####### MI2 - Canyon Mine 2 ####################################################################
// ################################################################################################

instance MI2_Day_Std(C_MUSICTHEME_STANDARD) { file = "bib_day_std.sgt"; };

// ################################################################################################
// ####### NWP - NewWorld Portal ##################################################################
// ################################################################################################

// WICHTIG: ALTES ORCHESTER BENUTZEN

// instance NWP_Day_Std (C_MUSICTHEME_STANDARD) { file = "pir_day_std.sgt"; };

// ################################################################################################
// ####### PO1 - AddonWorld Eingangsdungeon #######################################################
// ################################################################################################

instance PO1_Day_Std(C_MUSICTHEME_STANDARD) { file = "bib_day_std.sgt"; };
instance PO1_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### PIR - Canyon ###########################################################################
// ################################################################################################

instance PIR_Day_Std(C_MUSICTHEME_STANDARD) { file = "pir_day_std.sgt"; };
instance PIR_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### RAV - Raven ############################################################################
// ################################################################################################

instance RAV_Day_Std(C_MUSICTHEME_STANDARD) { file = "bdt_day_std.sgt"; };
instance RAV_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### SHO - Showdown #########################################################################
// ################################################################################################

instance SHO_Day_Std(C_MUSICTHEME_STANDARD) { file = "sho_day_std.sgt"; };
instance SHO_Day_Fgt(C_MUSICTHEME_STANDARD) { file = "sho_day_fgt.sgt"; };

// ################################################################################################
// ####### SWP - Sumpf ############################################################################
// ################################################################################################

instance SWP_Day_Std(C_MUSICTHEME_STANDARD) { file = "swp_day_std.sgt"; };
instance SWP_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "adw_day_fgt.sgt"; };

// ################################################################################################
// ####### STO - StonePlates ######################################################################
// ################################################################################################

instance STO_Day_Std(C_MUSICTHEME_STANDARD) { file = "sto_day_std.sgt"; };

// ################################################################################################
// ################################################################################################
// ################################################################################################
// ############### #######################
// ############### L O C A T I O N S #######################
// ############### #######################
// ################################################################################################
// ################################################################################################
// ################################################################################################

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX DEFAULT [DEF_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance DEF_Day_Std(C_MUSICTHEME_STANDARD) { file = "nw_daystd_A0.sgt"; };
instance DEF_Day_Thr(C_MUSICTHEME_THREAT) { file = "nw_daythr.sgt"; };
instance DEF_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "nw_dayfgt.sgt"; };

instance DEF_Ngt_Std(C_MUSICTHEME_STANDARD) { file = "nw_daystd_A0.sgt"; };
instance DEF_Ngt_Thr(C_MUSICTHEME_THREAT) { file = "nw_daythr.sgt"; };
instance DEF_Ngt_Fgt(C_MUSICTHEME_FIGHT) { file = "nw_dayfgt.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX DEFAULT_OLDWORLD [OWD_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance OWD_Day_Std(C_MUSICTHEME_STANDARD) { file = "owd_daystd.sgt"; };
instance OWD_Day_Thr(C_MUSICTHEME_THREAT) { file = "owd_daystd.sgt"; };
instance OWD_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "owp_dayfgt.sgt"; };

instance OWD_Ngt_Std(C_MUSICTHEME_STANDARD) { file = "owd_daystd.sgt"; };
instance OWD_Ngt_Thr(C_MUSICTHEME_THREAT) { file = "owd_daystd.sgt"; };
instance OWD_Ngt_Fgt(C_MUSICTHEME_FIGHT) { file = "owp_dayfgt.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX DEFAULT_DRAGONISLAND [INS_] XXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance INS_Day_Std(C_MUSICTHEME_STANDARD) { file = "di_daystd.sgt"; };
instance INS_Day_Thr(C_MUSICTHEME_THREAT) { file = "di_daystd.sgt"; };
instance INS_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "di_daystd.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX BANDITENHÖHLE[BAN_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance BAN_Day_Std(C_MUSICTHEME_STANDARD) { file = "ban_daystd.sgt"; };
instance BAN_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "ban_dayfgt.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX FRIEDHOF [FRI_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance FRI_Day_Std(C_MUSICTHEME_STANDARD) { file = "fri_daystd.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX DRAGONLOCATION [DLC_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance DLC_Day_Std(C_MUSICTHEME_STANDARD) { file = "dlc_daystd.sgt"; };
instance DLC_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "dlc_dayfgt.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX KASERNE [KAS_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance KAS_Day_Std(C_MUSICTHEME_STANDARD) { file = "kas_daystd.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX KHORINIS [KHO_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance KHO_Day_Std(C_MUSICTHEME_STANDARD) { file = "kh_daystd.sgt"; };
instance KHO_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "kh_dayfgt.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX LEUCHTTURM [LEU_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance LEU_Day_Std(C_MUSICTHEME_STANDARD) { file = "leu_daystd.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX LOBARDS HOF [LOB_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance LOB_Day_Std(C_MUSICTHEME_STANDARD) { file = "lob_daystd.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX MAYATEMPEL [MAY_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance MAY_Day_Std(C_MUSICTHEME_STANDARD) { file = "may_daystd.sgt"; };
instance May_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "may_dayfgt.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX KLOSTER OUT [MOO_] XXXXXXXXXXXX
// XXXXXXXX KLOSTER_IN [MOI_] XXXXXXXXXXXX
// XXXXXXXX KLOSTER_DUNGEON[MOD_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance MOO_Day_Std(C_MUSICTHEME_STANDARD) { file = "mo_daystd.sgt"; };
instance MOI_Day_Std(C_MUSICTHEME_STANDARD) { file = "mi_daystd.sgt"; };

instance MOD_Day_Std(C_MUSICTHEME_STANDARD) { file = "ban_daystd.sgt"; };
instance MOD_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "ban_dayfgt.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX OW_PATH [OWP_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance OWP_Day_Std(C_MUSICTHEME_STANDARD) { file = "owp_daystd.sgt"; };
instance OWP_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "owp_dayfgt.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX PIER [PIE_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance PIE_Day_Std(C_MUSICTHEME_STANDARD) { file = "pie_daystd.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX WOOD [WOO_] XXXXXXXXXXXX
// XXXXXXXX LESTERTAL [TAL_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance TAL_Day_Std(C_MUSICTHEME_STANDARD) { file = "woo_daystd.sgt"; };
instance TAL_Day_Thr(C_MUSICTHEME_THREAT) { file = "woo_daythr.sgt"; };
instance TAL_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "woo_dayfgt.sgt"; };

instance WOO_Day_Std(C_MUSICTHEME_STANDARD) { file = "woo_daystd.sgt"; };
instance WOO_Day_Thr(C_MUSICTHEME_THREAT) { file = "woo_daythr.sgt"; };
instance WOO_Day_Fgt(C_MUSICTHEME_FIGHT) { file = "woo_dayfgt.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX XARDAS [XAR_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance XAR_Day_Std(C_MUSICTHEME_STANDARD) { file = "xt_daystd.sgt"; };
instance XAR_Day_Thr(C_MUSICTHEME_THREAT) { file = "xt_daystd.sgt"; };

// --------------------------------- OLD WORLD -----------------------------------------------------
// --------------------------------- OLD WORLD -----------------------------------------------------
// --------------------------------- OLD WORLD -----------------------------------------------------
// --------------------------------- OLD WORLD -----------------------------------------------------
// --------------------------------- OLD WORLD -----------------------------------------------------
// --------------------------------- OLD WORLD -----------------------------------------------------
// --------------------------------- OLD WORLD -----------------------------------------------------
// --------------------------------- OLD WORLD -----------------------------------------------------
// --------------------------------- OLD WORLD -----------------------------------------------------
// --------------------------------- OLD WORLD -----------------------------------------------------
// --------------------------------- OLD WORLD -----------------------------------------------------
// --------------------------------- OLD WORLD -----------------------------------------------------

/*

// ################################################################################################
// ############### #######################
// ############### C A M P S #######################
// ############### #######################
// ################################################################################################

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX O L D C A M P [OC_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance OC_Day_Std(C_MUSICTHEME_DEF) { file = "oc_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance OC_Day_Thr(C_MUSICTHEME_DEF) { file = "oc_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance OC_Day_Fgt(C_MUSICTHEME_DEF) { file = "oc_day_fgt.sgt";
	transType = TRANSITION_TYPE_FILL;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

// ----------------------------------------------------

instance OC_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

instance OC_Ngt_Thr(C_MUSICTHEME_DEF) { file = "cam_ngt_thr.sgt"; };

instance OC_Ngt_Fgt(C_MUSICTHEME_DEF) { file = "oc_day_fgt.sgt";
	transType = TRANSITION_TYPE_FILL;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

// --- ARENA ----

instance ARE_Day_Std(C_MUSICTHEME_DEF) { file = "foc_day_std.sgt"; };

instance ARE_Day_Thr(C_MUSICTHEME_DEF) { file = "foc_day_std.sgt"; };

instance ARE_Day_Fgt(C_MUSICTHEME_DEF) { file = "oc_day_fgt.sgt";
	transType = TRANSITION_TYPE_FILL;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

// --- INEXTREMO ----

instance IE_Day_Std(C_MUSICTHEME_DEF) { file = "oc_day_std.sgt"; };
instance IE_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

instance IE_Day_Thr(C_MUSICTHEME_DEF) { file = "oc_day_std.sgt"; };

instance IE_Day_Fgt(C_MUSICTHEME_DEF) { file = "oc_day_fgt.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX N E W C A M P [NCO_/NCI_] XXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

// Plateau davor

instance NCO_Day_Std(C_MUSICTHEME_DEF) { file = "cam_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance NCO_Day_Thr(C_MUSICTHEME_DEF) { file = "cam_day_thr.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance NCO_Day_Fgt(C_MUSICTHEME_DEF) { file = "cam_day_fgt.sgt";
	transType = TRANSITION_TYPE_FILL;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance NCO_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };
instance NCO_Ngt_Thr(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };
instance NCO_Ngt_Fgt(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

// Höhle

instance NCI_Day_Std(C_MUSICTHEME_DEF) { file = "nci_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance NCI_Day_Thr(C_MUSICTHEME_DEF) { file = "nci_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance NCI_Day_Fgt(C_MUSICTHEME_DEF) { file = "nci_day_fgt.sgt";
	transType = TRANSITION_TYPE_FILL;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance NCI_Ngt_Std(C_MUSICTHEME_DEF) { file = "nci_day_std.sgt"; };
instance NCI_Ngt_Thr(C_MUSICTHEME_DEF) { file = "nci_day_std.sgt"; };
instance NCI_Ngt_Fgt(C_MUSICTHEME_DEF) { file = "nci_day_fgt.sgt";
	transType = TRANSITION_TYPE_FILL;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX P S I C A M P [PSI_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance PSI_Day_Std(C_MUSICTHEME_DEF) { file = "psi_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance PSI_Day_Thr(C_MUSICTHEME_DEF) { file = "psi_day_thr.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance PSI_Day_Fgt(C_MUSICTHEME_DEF) { file = "psi_day_fgt.sgt";
	transType = TRANSITION_TYPE_FILL;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance PSI_Ngt_Std(C_MUSICTHEME_DEF) { file = "psi_ngt_std.sgt"; };
instance PSI_Ngt_Thr(C_MUSICTHEME_DEF) { file = "psi_ngt_std.sgt"; };
instance PSI_Ngt_Fgt(C_MUSICTHEME_DEF) { file = "psi_day_fgt.sgt"; };

// ################################################################################################
// ############### #######################
// ############### O U T S I D E W O R L D + S P E C I A L #######################
// ############### #######################
// ################################################################################################

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX O U T S I D E W O R L D [OW_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

// Obsolete! DEF_ will be used instead.

instance OW_Day_Std(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };
instance OW_Day_Thr(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };
instance OW_Day_Fgt(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };

instance OW_Ngt_Std(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };
instance OW_Ngt_Thr(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };
instance OW_Ngt_Fgt(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX S T A R T P O I N T [STA_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance STA_Day_Std(C_MUSICTHEME_DEF) { file = "ban_day_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX B E A C H [BEA_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance BEA_Day_Std(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };
instance BEA_Ngt_Std(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX B A N D I T S [BAN_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance BAN_Day_Std(C_MUSICTHEME_DEF) { file = "ban_day_std.sgt"; };
// instance BAN_Ngt_Std (C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX C A M P (klein) [CAM_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance CAM_Day_Std(C_MUSICTHEME_DEF) { file = "cam_day_std.sgt"; };
// instance CAM_Ngt_Std (C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX C A S T E L L [CAS_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance CAS_Day_Std(C_MUSICTHEME_DEF) { file = "cam_day_thr.sgt"; };
instance CAS_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX D E M O N - T O W E R [DT_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance DT_Day_Std(C_MUSICTHEME_DEF) { file = "cam_day_thr.sgt"; };
instance DT_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX F R E E M I N E C A M P [FC_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance FC_Day_Std(C_MUSICTHEME_DEF) { file = "ban_day_std.sgt"; };
instance FC_Ngt_Std(C_MUSICTHEME_DEF) { file = "ban_day_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX F O C U S - P L A C E [FOC_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance FOC_day_Std(C_MUSICTHEME_DEF) { file = "FOC_day_std.sgt"; };
instance FOC_day_Thr(C_MUSICTHEME_DEF) { file = "FOC_day_std.sgt"; };
instance FOC_Ngt_Std(C_MUSICTHEME_DEF) { file = "FOC_day_std.sgt"; };
instance FOC_Ngt_Thr(C_MUSICTHEME_DEF) { file = "FOC_day_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX O R C G R A V E Y A R D [OGR_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// Eingang in der Oberwelt

instance OGR_Day_Std(C_MUSICTHEME_DEF) { file = "foc_day_std.sgt"; };
instance OGR_Ngt_Std(C_MUSICTHEME_DEF) { file = "foc_day_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX O R C L O C A T I O N 1 [OL1_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// Burgruine an Felswand, mit Fokus

instance OL1_Day_Std(C_MUSICTHEME_DEF) { file = "ban_day_std.sgt"; };
instance OL1_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX O L D M I N E - E N T R [OME_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// Burgruine an Felswand, mit Fokus

instance OME_Day_Std(C_MUSICTHEME_DEF) { file = "cam_day_thr.sgt"; };
instance OME_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX O R C C I T Y [ORC_] XXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance ORC_Day_Std(C_MUSICTHEME_DEF) { file = "orc_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance ORC_Day_Thr(C_MUSICTHEME_DEF) { file = "orc_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance ORC_Day_Fgt(C_MUSICTHEME_DEF) { file = "oc_day_fgt.sgt";
	transType = TRANSITION_TYPE_FILL;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance ORC_Ngt_Std(C_MUSICTHEME_DEF) { file = "orc_day_std.sgt"; };
instance ORC_Ngt_Thr(C_MUSICTHEME_DEF) { file = "orc_day_std.sgt"; };
instance ORC_Ngt_Fgt(C_MUSICTHEME_DEF) { file = "oc_day_fgt.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX O R E B A R O N S [OR_] XXXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance OR_Day_Std(C_MUSICTHEME_DEF) { file = "ban_day_std.sgt"; };
instance OR_Day_Thr(C_MUSICTHEME_DEF) { file = "ban_day_std.sgt"; };
instance OR_Day_Fgt(C_MUSICTHEME_DEF) { file = "oc_day_fgt.sgt"; };

instance OR_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };
instance OR_Ngt_Thr(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };
instance OR_Ngt_Fgt(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX P I R A T E - D U N G E [FC_] XXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance PDN_Day_Std(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };
instance PDN_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX P I R A T E B A Y [PIR_] XXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance PIR_Day_Std(C_MUSICTHEME_DEF) { file = "ban_day_std.sgt"; };
// instance PIR_Ngt_Std (C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX S T O N E H E N G E [STO_] XXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance STO_Day_Std(C_MUSICTHEME_DEF) { file = "foc_day_std.sgt"; };
instance STO_Ngt_Std(C_MUSICTHEME_DEF) { file = "foc_day_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX T R O L L A R E A N A [TA_] XXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance TA_Day_Std(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };
instance TA_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX T O W E R D U N G E O N [TD_] XXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance TD_Day_Std(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };
instance TD_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXX T E M P E L R U I N E [TRU_] XXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

instance TRU_Day_Std(C_MUSICTHEME_DEF) { file = "ow_day_std.sgt"; };
instance TRU_Ngt_Std(C_MUSICTHEME_DEF) { file = "cam_ngt_std.sgt"; };

// ################################################################################################
// ############### #######################
// ############### D U N G E O N S #######################
// ############### #######################
// ################################################################################################

// TEMPEL

instance TPL_Day_Std(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };
instance TPL_Day_Thr(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };
instance TPL_Day_Fgt(C_MUSICTHEME_DEF) { file = "ogy_day_fgt.sgt"; };
instance TPL_Ngt_Std(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };

instance KAT_Day_Std(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };
instance KAT_Day_Thr(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };
instance KAT_Day_Fgt(C_MUSICTHEME_DEF) { file = "ogy_day_fgt.sgt"; };
instance KAT_Ngt_Std(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };

instance SPL_Day_Std(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };
instance SPL_Day_Thr(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };
instance SPL_Day_Fgt(C_MUSICTHEME_DEF) { file = "ogy_day_fgt.sgt"; };
instance SPL_Ngt_Std(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };

// FREE MINE

instance FRM_Day_Std(C_MUSICTHEME_DEF) { file = "olm_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance FRM_Day_Thr(C_MUSICTHEME_DEF) { file = "olm_day_thr.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance FRM_Day_Fgt(C_MUSICTHEME_DEF) { file = "olm_day_fgt.sgt";
	transType = TRANSITION_TYPE_FILL;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance FRM_Ngt_Std(C_MUSICTHEME_DEF) { file = "olm_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

// OLD MINE?

instance OLM_Day_Std(C_MUSICTHEME_DEF) { file = "olm_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance OLM_Ngt_Std(C_MUSICTHEME_DEF) { file = "olm_day_std.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance OLM_Day_Thr(C_MUSICTHEME_DEF) { file = "olm_day_thr.sgt";
	transType = TRANSITION_TYPE_BREAK;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

instance OLM_Day_Fgt(C_MUSICTHEME_DEF) { file = "olm_day_fgt.sgt";
	transType = TRANSITION_TYPE_FILL;
transSubType = TRANSITION_SUB_TYPE_MEASURE; };

// ORCGRAVEYARD

instance OGY_Day_Std(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };
instance OGY_Day_Thr(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };
instance OGY_Day_Fgt(C_MUSICTHEME_DEF) { file = "ogy_day_fgt.sgt"; };

instance OGY_Ngt_Std(C_MUSICTHEME_DEF) { file = "ogy_day_std.sgt"; };

*/
