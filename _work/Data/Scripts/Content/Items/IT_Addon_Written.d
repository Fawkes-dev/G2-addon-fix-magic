//**********************************************************************************
//	Brief von Lucia an William
//**********************************************************************************
instance ITWr_Addon_Hinweis_02(C_Item)
{
	name						= "Important message";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Hinweis_02;

	value						= 250;

	description					= name;
	text[0]						= "From the tavern in the bandit camp";			count[0] = 0;
};

func void Use_Hinweis_02()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "Hey people,");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "Lou has disappeared in the swamp.  He's probably been eaten by swampsharks.");
				Doc_PrintLines	(nDocID, 0, "Even worse - the key to the door disappeared with him.");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "Find it and you can keep Lou's stuff.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "Snaf");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Heiltrunk
//**********************************************************************************
instance ITWr_Addon_Health_04(C_Item)
{
	name						= "Healing potion recipe";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Heilrezept_04;

	value						= 1000;

	description					= "Pure life energy";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "To make a powerful potion.";					count[2] = 0;
	text[3]						= "Knowledge of elixirs of healing is required for use.";count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Heilrezept_04()
{
	var int nDocID;

	if (Npc_IsPlayer(self))
	{
		if (PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE)
		{
			PLAYER_TALENT_ALCHEMY[POTION_Health_04] = TRUE;
			Snd_Play("LevelUP");
			B_LogEntry(TOPIC_TalentAlchemy, "To make a healing potion, I need 1 meadow knotweed and 3 essences of healing.");
		};
	};

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "Creating a healing potion:");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "One meadow knotweed and three essences of healing are required.");
				Doc_PrintLines	(nDocID, 0, "Pour together and brew according to the recipe for healing elixirs.");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "This potion can only be created by alchemists who know the recipe for healing elixirs.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Manatrunk
//**********************************************************************************
instance ITWr_Addon_Mana_04(C_Item)
{
	name						= "Mana recipe";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Manarezept_04;

	value						= 1500;

	description					= "Pure mana";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "To make a powerful potion.";					count[2] = 0;
	text[3]						= "Knowledge of mana elixirs is required for use.";count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Manarezept_04()
{
	var int nDocID;

	if (Npc_IsPlayer(self))
	{
		if (PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE)
		{
			PLAYER_TALENT_ALCHEMY[POTION_Mana_04] = TRUE;
			Snd_Play("LevelUP");
			B_LogEntry(TOPIC_TalentAlchemy, "To create a mana potion, I need 1 meadow knotweed and 3 mana essences.");
		};
	};

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "Creating a mana potion:");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "One meadow knotweed and three essences of magical power are required.");
				Doc_PrintLines	(nDocID, 0, "Pour together and brew according to the recipe for mana elixirs.");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "This potion can only be created by alchemists who know the recipe for mana elixirs.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Brief von Lucia an William
//**********************************************************************************
instance ITWr_Addon_Hinweis_01(C_Item)
{
	name						= "Important hint";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Hinweis_01;

	value						= 250;

	description					= name;
	text[0]						= "Hanging on a hut in the swamp";				count[0] = 0;
};

func void Use_Hinweis_01()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "Hey people,");
				Doc_PrintLines	(nDocID, 0, "The stuff in the chests is for emergencies.");
				Doc_PrintLines	(nDocID, 0, "And it's for EVERYONE. So only take something if you need it.");
				Doc_PrintLines	(nDocID, 0, "And only take as much as you need.");
				Doc_PrintLines	(nDocID, 0, "If everybody sticks to this, it will work.");
				Doc_PrintLines	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "Fletcher");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Brief von Lucia an William
//**********************************************************************************
instance ITWr_Addon_William_01(C_Item)
{
	name						= "Note";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_William_01;

	value						= 250;

	description					= name;
	text[0]						= "The fisherman William had this on him.";		count[0] = 0;
};

func void Use_William_01()
{
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "William, ");
				Doc_PrintLines	(nDocID, 0, "When the moon is full, the watch will be distracted.");
				Doc_PrintLines	(nDocID, 0, "Sneak out - but be careful!");
				Doc_PrintLines	(nDocID, 0, "If you follow the log road, you can leave the swamp.");
				Doc_PrintLines	(nDocID, 0, "The pirate camp is on the other side of the valley far to the west.");
				Doc_PrintLines	(nDocID, 0, "From there it should be easy to get away with the boat.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "A well-wisher");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Rezept von Miguel (Minecrawler Trank)
//**********************************************************************************
instance ITWr_Addon_MCELIXIER_01(C_Item)
{
	name						= "Recipe";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_MCELIXIER_01;

	value						= 250;

	description					= name;
	text[0]						= "Recipe for the elixir of mental alteration.";count[0] = 0;
	text[1]						= "This potion helps restore lost memories.";	count[1] = 0;
};

func void Use_MCELIXIER_01()
{
	Knows_MCELIXIER = TRUE;
	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "Elixir of mental alteration");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "The secretion from two bloodfly stingers is required to create this potion.");
				Doc_PrintLines	(nDocID, 0, "Add to that one mana extract and one essence of healing.");
				Doc_PrintLines	(nDocID, 0, "Finally, stir a bag of red tear-pepper into the boiling decoction.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "Only an expert alchemist who knows how to extract the secretion from the stingers should try this potion.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Deal Brief von Esteban an zwei Piraten
//**********************************************************************************
instance ITWr_Addon_Pirates_01(C_Item)
{
	name						= "Greasy note";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Pirates_01;

	value						= 250;

	description					= name;
	text[0]						= "Angus had this note in his pocket.";			count[0] = 0;
};

func void Use_Pirates_01()
{
	Read_JuansText = TRUE;

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "Pirates, ");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "Get the last delivery meant for us.");
				Doc_PrintLine	(nDocID, 0, "Then bring it to your cave. We'll meet there.");
				Doc_PrintLines	(nDocID, 0, "I will pay double the value in gold.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "That's the way to do it");
				Doc_PrintLine	(nDocID, 0, "Tom");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Rezept für grünene Novizen
//**********************************************************************************
instance ITWr_Addon_Joint_01(C_Item)
{
	name						= "The green novice";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Joint_Rezept_01;

	value						= 250;

	description					= name;
	text[0]						= "In Fortuno's chest";							count[0] = 0;
};

func void Use_Joint_Rezept_01()
{
	var int nDocID;

	Green_Extrem = TRUE;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "The green novice");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "(...) The reefers roll really well, but what we had in the Swamp Camp was of a whole different caliber.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "If I use the essence of two swampweed plants and add a meadow knotweed, then I have a reefer with the effect of the green novice.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "The green novice helps against all sorts of pain and clears the head.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Schnapsbrennen Rezept
//**********************************************************************************
instance ITWr_Addon_Lou_Rezept(C_Item)
{
	name						= "Recipe for Lou's Hammer";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseLouRezept;

	value						= 70;

	description					= name;
	text[0]						= "Recipe for making Lou's Hammer";				count[0] = 0;
};

func void UseLouRezept()
{
	Knows_LousHammer = TRUE;

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "Lou's Hammer recipe");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "Ingredients for brewing a Hammer:");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "Take a water bottle, two turnips and a decent portion of swampweed.");
				Doc_PrintLines	(nDocID, 0, "Add the ground teeth of a swampshark.");
				Doc_PrintLines	(nDocID, 0, "Put it all in the bottle and boil with a shot of rum.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "Cheers.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "According to the old blind man, it is healthier not to breathe the steam!");
	Doc_Show(nDocID);
};

//**********************************************************************************
//	Doppelhammer
//**********************************************************************************
instance ITWr_Addon_Lou_Rezept2(C_Item)
{
	name						= "Recipe for Lou's Double Hammer";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseLouRezept2;

	value						= 140;

	description					= name;
	text[0]						= "Recipe for making Lou's Double Hammer.";		count[0] = 0;
};

func void UseLouRezept2()
{
	Knows_SchlafHammer = TRUE;

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "Lou's Double Hammer");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "Take a good old Lou's Hammer and distill it again.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "This mixture should only be made by experienced boozemakers.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "If a layman tries it, he won't only be blind, but also dead.");

	Doc_Show(nDocID);
};

//**********************************************************************************
//	Piratentod
//**********************************************************************************
instance ITWr_Addon_Piratentod(C_Item)
{
	name						= "Hasty Herring";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseRezeptPiratentod;

	value						= 250;

	description					= name;
	text[0]						= "Recipe for making a Hasty Herring.";			count[0] = 0;
};

func void UseRezeptPiratentod()
{
	Knows_SchnellerHering = TRUE;

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "Hasty Herring (by me)");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "Small pick-me-up for real men");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "As usual, you need a water bottle. Fill this with a measure of rum and add a fresh fish.");
				Doc_PrintLines	(nDocID, 0, "As soon as the liquid begins to turn yellow, take out the fish and add a bundle of");
				Doc_PrintLines	(nDocID, 0, "freshly picked snapperweed for flavor.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "Careful. The stuff has a powerful kick.");
				Doc_PrintLine	(nDocID, 0, "");
	Doc_Show(nDocID);
};

// ------------------------------------------------------------------------------------------
instance Fakescroll_Addon(C_Item)
{
	name						= "A piece of paper";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	hp							= 5;
	hp_max						= 5;
	weight						= 1;

	visual						= "Fakescroll.3ds";
	material					= MAT_LEATHER;

	scemeName					= "MAPSEALED";

	value						= 0;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

// ------------------------------------------------------------------------------------------
instance ItWr_Addon_AxtAnleitung(C_ITEM)
{
	name						= "Instructions for a bandit axe";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseAxtAnleitung;

	value						= 250;

	description					= name;
	text[0]						= "Instructions for making a light, sharp axe.";count[0] = 0;
};

func void UseAxtAnleitung()
{
	if (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 1)
	{
		Knows_Banditenaxt = TRUE;
	};

	var int nDocID;

	nDocID = Doc_Create(); // DocManager
	Doc_SetPages(nDocID, 1); // wieviel Pages
	Doc_SetPage(nDocID, 0, "letters.TGA", 0);
				Doc_SetFont(nDocID, 0, FONT_BookHeadline); // -1 -> all pages
				Doc_SetMargins(nDocID, -1, 50, 50, 50, 50, 1); // 0 -> margins are in pixels
				Doc_PrintLine	(nDocID, 0, "The bandit axe");
				Doc_SetFont(nDocID, 0, FONT_Book); // -1 -> all pages
				Doc_PrintLine	(nDocID, 0, "A one-handed axe");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLines	(nDocID, 0, "Anyone who knows the basics of forging can make a special axe.");
				Doc_PrintLines	(nDocID, 0, "You need two pieces of hot raw iron.");
				Doc_PrintLines	(nDocID, 0, "One lump of ore and three teeth from wolves, snappers or similar beasts.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "Hammer the ore and teeth together with the iron on an anvil.");
				Doc_PrintLine	(nDocID, 0, "");
				Doc_PrintLine	(nDocID, 0, "An axe like this is very easy to use and does significant damage.");
				Doc_PrintLines	(nDocID, 0, "");
	Doc_Show(nDocID);
};

// ------------------------------------------------------------------------------------------
instance ItWr_Addon_SUMMONANCIENTGHOST(C_ITEM)
{
	name						= "Summoning 'Quarhodron'";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION;

	visual						= "ItWr_Scroll_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= UseSummonAncientGhost;

	value						= 250;

	description					= name;
	text[0]						= "This spell scroll can be used to summon Quarhodron.";count[0] = 0;
};

func void UseSummonAncientGhost()
{
	if (SC_SummonedAncientGhost == FALSE)
	{
		B_Say(self, self, "$ADDON_SUMMONANCIENTGHOST");

		if (Npc_GetDistToWP(self, "ADW_ANCIENTGHOST") < 1000)
		{
			Wld_InsertNpc(NONE_ADDON_111_Quarhodron, "ADW_ANCIENTGHOST");
			Wld_PlayEffect("spellFX_Maya_Ghost", NONE_ADDON_111_Quarhodron, NONE_ADDON_111_Quarhodron, 0, 0, 0, FALSE);
			Wld_PlayEffect("SPELLFX_LIGHTSTAR_WHITE", NONE_ADDON_111_Quarhodron, NONE_ADDON_111_Quarhodron, 0, 0, 0, FALSE);
			Snd_Play("MFX_GhostVoice");
			Snd_Play("MFX_Firestorm_Cast");
			Snd_Play("MFX_Lightning_Origin");
			SC_SummonedAncientGhost = TRUE;
		}
		else
		{
			B_Say(self, self, "$ADDON_ANCIENTGHOST_NOTNEAR");
		};
	};
};

//////////////////////////////////////////////////////////////////////////////
//
//	MAPS
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_AddonWorld(C_Item)
{
	name						= "The forgotten valley of the builders.";

	mainflag					= ITEM_KAT_DOCS;
	flags						= ITEM_MISSION | ITEM_MULTI;

	visual						= "ItWr_Map_01.3DS";
	material					= MAT_LEATHER;

	scemeName					= "MAP";
	on_state[0]					= Use_Map_AddonWorld;

	value						= 250;

	description					= name;
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= "";											count[2] = 0;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Use_Map_AddonWorld()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_AddonWorld);
	};

	var int Document;
	Document = Doc_CreateMap();
	Doc_SetPages(Document, 1);
	Doc_SetPage(Document, 0, "Map_AddonWorld.tga", TRUE); // TRUE = scale to fullscreen
	Doc_SetLevel(Document, "Addon\AddonWorld.zen");
	Doc_SetLevelCoords(Document, -47783, 36300, 43949, -32300);
	// Joly:Doc_SetLevelCoords(Document, -47783, 36300, 43949, -32300);
	// Nico:Doc_SetLevelCoords(Document, -43000, 39000, 43000, -29000);
	Doc_Show(Document);
};
