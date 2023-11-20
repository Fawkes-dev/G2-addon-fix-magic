// ---------------------------------------------------------------------
//	Item Werte
// ---------------------------------------------------------------------
const int Value_Goldnugget = 18;
const int Value_WhitePearl = 120;
const int Value_Addon_Joint_01 = 60;
// ---------------------------------------------------------------------
//	Goldbrocken
// ---------------------------------------------------------------------
instance ItMi_GoldNugget_Addon(C_Item)
{
	name						= "Gold nugget";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_GoldNugget_01.3ds";
	material					= MAT_STONE;

	value						= Value_Goldnugget;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_MISC2_STANDARD;
};

// ---------------------------------------------------------------------
//	Weiße Perle
// ---------------------------------------------------------------------
instance ItMi_Addon_WhitePearl(C_Item)
{
	name						= "Pearl";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_WhitePearl_01.3ds";
	material					= MAT_STONE;

	value						= Value_WhitePearl;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_MISC_STANDARD;
};

// ---------------------------------------------------------------------
//	Grüner Novize
// ---------------------------------------------------------------------
instance ItMi_Addon_Joint_01(C_Item)
{
	name						= "Green Novice";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "ItMi_Joint_US.3ds";
	material					= MAT_LEATHER;

	scemeName					= "JOINT";
	on_state[0]					= Use_Addon_Joint_01;

	value						= Value_Addon_Joint_01;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
	INV_ZBIAS					= INVCAM_ENTF_RING_STANDARD;
};

var int FirstJoint;
func void Use_Addon_Joint_01()
{
	if (Npc_IsPlayer(self))
	{
		if (FirstJoint == FALSE)
		{
			FirstJoint = TRUE;
			B_GivePlayerXP(5);
		};

		Wld_PlayEffect("SLOW_TIME", self, self, 0, 0, 0, FALSE);
	};
};

//****************************************************************************
//				Baltrams Lieferung von Akil
//			---------------------------------------------
//****************************************************************************
instance ItMi_BaltramPaket(C_Item)
{
	name						= "Baltram's Shipment";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Packet.3ds";
	material					= MAT_LEATHER;

	value						= 200;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "A heavy package of";							count[2] = 0;
	text[3]						= "good things.";								count[3] = 0;
	text[4]						= "from Akil the farmer";						count[4] = 0;
};

//****************************************************************************
//				Baltrams Lieferung für Skip
//			---------------------------------------------
//****************************************************************************
instance ItMi_Packet_Baltram4Skip_Addon(C_Item)
{
	name						= "Package for Skip";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Packet.3ds";
	material					= MAT_LEATHER;

	value						= 200;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "This heavy package";							count[2] = 0;
	text[3]						= "good things.";								count[3] = 0;
	text[4]						= "is meant for the pirate Skip";				count[4] = 0;
};

/******************************************************************************************/
instance ItMi_BromorsGeld_Addon(C_Item)
{
	name						= "Bromor's golden bowl";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItMi_GoldChalice.3DS";
	material					= MAT_METAL;

	value						= Value_Nugget;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "The name 'Bromor' is";						count[2] = 0;
	text[3]						= "scratched into the bottom";					count[3] = 0;
	text[4]						= "of the bowl with a sharp object.";			count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

instance ItSe_ADDON_CavalornsBeutel(C_Item)
{
	name						= "Cavalorn's leather bag";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI | ITEM_MISSION;

	visual						= "ItMi_Pocket.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_CavalornsBeutel;

	value						= Value_Nugget;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "It bears a tag with";						count[1] = 0;
	text[2]						= "the name 'Cavalorn'";						count[2] = 0;
	text[3]						= "There is 1 lump of ore inside";				count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_CavalornsBeutel()
{
	CreateInvItems(hero, ItMi_Nugget, 1);
	Print(PRINT_FoundOreNugget);
	SC_OpenedCavalornsBeutel = TRUE;
	Log_CreateTopic(TOPIC_Addon_CavalornTheHut, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_CavalornTheHut, LOG_RUNNING);
	B_LogEntry(TOPIC_Addon_CavalornTheHut, "I found a bag with one lump of ore near Cavalorn's hut in the Valley of mines. That old rogue Cavalorn must have forgotten it here.");
};

//**************************************
//		Diverser Kleinkram
//**************************************
instance ItMi_Skull(C_Item)
{
	name						= "Skull";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "DT_SKELETON_V01_HEAD.3ds";
	material					= MAT_LEATHER;

	value						= 10;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// 				INEXTREMO ITEMS
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------
// -----------------------------------------------------------------------------

instance ItMi_IECello(C_Item)
{
	name						= "Cello";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_Cello.3ds";
	material					= MAT_WOOD;

	scemeName					= "CELLO";
	on_state[0]					= Use_Cello;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Cello()
{
};

instance ItMi_IECelloBow(C_Item)
{
	name						= "Cello bow";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_CelloBow.3ds";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

instance ItMi_IEDrum(C_Item)
{
	name						= "Drum";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_Drum.3ds";
	material					= MAT_WOOD;

	scemeName					= "PAUKE";
	on_state[0]					= Use_Drum;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Drum()
{
};

instance ItMi_IEDrumScheit(C_Item)
{
	name						= "Tromba marina";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_Drumscheit.3ds";
	material					= MAT_WOOD;

	scemeName					= "DRUMSCHEIT";
	on_state[0]					= Use_Drumscheit;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Drumscheit()
{
};

instance ItMi_IEDrumStick(C_Item)
{
	name						= "Drumstick";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_DrumStick.3ds";
	material					= MAT_WOOD;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

instance ItMi_IEDudelBlau(C_Item)
{
	name						= "Blue bagpipes";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_DudelBlau.3ds";
	material					= MAT_WOOD;

	scemeName					= "DUDEL";
	on_state[0]					= Use_Dudel;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Dudel()
{
};

instance ItMi_IEDudelGelb(C_Item)
{
	name						= "Yellow bagpipes";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_DudelGelb.3ds";
	material					= MAT_WOOD;

	scemeName					= "DUDEL";
	on_state[0]					= Use_Dudel;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

instance ItMi_IEHarfe(C_Item)
{
	name						= "Harp";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_Harfe.3ds";
	material					= MAT_WOOD;

	scemeName					= "HARFE";
	on_state[0]					= Use_Harfe;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Harfe()
{
};

instance ItMi_IELaute(C_Item)
{
	name						= "Lute";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MULTI;

	visual						= "Itmi_IE_Laute.3ds";
	material					= MAT_WOOD;

	scemeName					= "IELAUTE";
	on_state[0]					= Use_Laute;

	value						= 1;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= "";											count[5] = 0;
};

func void Use_Laute()
{
};

//****************************************************************************
//				Lennar'S Dietrich Paket
//			---------------------------------------------
//****************************************************************************
instance ItMi_Addon_Lennar_Paket(C_Item)
{
	name						= "Jingling package";

	mainflag					= ITEM_KAT_NONE;
	flags						= ITEM_MISSION;

	visual						= "ItMi_Packet.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_LennarPaket;

	value						= 300;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "There are lock picks inside";				count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "Many lock picks";							count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_LennarPaket()
{
	B_PlayerFindItem(ItKE_lockpick, Lennar_picklock_amount);
	Snd_Play("Geldbeutel");

	LennarPaket_Open = TRUE;
};

instance ItMi_Zeitspalt_Addon(C_Item)
{
	name						= "Black ore";

	mainflag					= ITEM_KAT_POTIONS;
	flags						= ITEM_MULTI;

	wear						= WEAR_EFFECT;
	effect						= "SPELLFX_WEAKGLIMMER";

	visual						= "ItMi_Zeitspalt_Addon.3DS";
	material					= MAT_STONE;

	scemeName					= "MAPSEALED";
	on_state[0]					= Use_Zeitspalt_Addon;

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "Effects unknown.";							count[3] = 0;
	INV_ZBIAS					= INVCAM_ENTF_MISC_STANDARD;
};

func void Use_Zeitspalt_Addon()
{
	if (Npc_IsPlayer(self))
	{
		Wld_PlayEffect("spellFX_BELIARSRAGE", self, self, 0, 0, 0, FALSE);

		// FIXME_Nico: DropUnconscious (DropDead funktioniert bereits)
		// Npc_ChangeAttribute(self, ATR_MANA, -self.attribute[ATR_MANA]);
		// Npc_ChangeAttribute(self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS] + 2);
		// Bereits laufenden Effekt beenden, damit die Kamera nicht ausrastet...
		// (beim Wechsel immer noch starker Morph-Effekt, aber nicht mehr andauernd)
		Wld_StopEffect("SLOW_MOTION");
		Wld_PlayEffect("SLOW_MOTION", self, self, 0, 0, 0, FALSE);
	};
};
