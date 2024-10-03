MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MACHOP,     "MUSCLE@@@@@", $aa, $aa, GOLD_BERRY,   37460, "MIKE@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, BELLSPROUT, ONIX,       "ROCKY@@@@@@", $cc, $cc, BITTER_BERRY, 48926, "KYLE@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     KINGLER,    FARFETCH_D, "DUX@@@@@@@@", $aa, $aa, STICK,        29189, "TIM@@@@@@@@", TRADE_GENDER_MALE
	npctrade TRADE_DIALOGSET_GIRL,      DRAGONAIR,  PUPITAR,    "DORIS@@@@@@", $aa, $aa, SMOKE_BALL,   00283, "EMY@@@@@@@@", TRADE_GENDER_FEMALE
	npctrade TRADE_DIALOGSET_NEWBIE,    HAUNTER,    XATU,       "PAUL@@@@@@@", $ef, $ef, MYSTERYBERRY, 15616, "CHRIS@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      NIDOKING,   CHANSEY,    "MAMA@@@@@@@", $cc, $cc, MIRACLEBERRY, 26491, "KIM@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, DUGTRIO,    MAGNETON,   "MAGGIE@@@@@", $ef, $ef, METAL_COAT,   50082, "FOREST@@@@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES
