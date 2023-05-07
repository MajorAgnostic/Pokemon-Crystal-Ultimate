	object_const_def
	const CELADONCITY_FISHER
	const CELADONCITY_POLIWRATH
	const CELADONCITY_TEACHER1
	const CELADONCITY_GRAMPS1
	const CELADONCITY_GRAMPS2
	const CELADONCITY_YOUNGSTER1
	const CELADONCITY_YOUNGSTER2
	const CELADONCITY_TEACHER2
	const CELADONCITY_LASS

CeladonCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CELADON
	endcallback

CeladonCityFisherScript:
	jumptextfaceplayer CeladonCityFisherText

CeladonCityPoliwrath:
	opentext
	writetext CeladonCityPoliwrathText
	cry POLIWRATH
	waitbutton
	closetext
	end

CeladonCityTeacher1Script:
	jumptextfaceplayer CeladonCityTeacher1Text
	
CeladonCityGen1TutorScript:
	faceplayer
	opentext
	writetext CeladonCityGen1TutorText
	waitbutton
	writetext CeladonCityGen1TutorText2
	yesorno
	iffalse .TutorRefused
	loadmenu .GENWUNNERMoveMenuHeader
	verticalmenu
	closewindow
	ifequal $1, .SwordsDance
	ifequal $2, .BodySlam
	ifequal $3, .DoubleEdge
	ifequal $4, .Submission
	sjump .TutorRefused
	
.SwordsDance:
	writebyte SWORDS_DANCE
	writetext CeladonCityGen1TutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .TutorRefused

.BodySlam:
	writebyte BODY_SLAM
	writetext CeladonCityGen1TutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .TutorRefused

.DoubleEdge:
	writebyte DOUBLE_EDGE
	writetext CeladonCityGen1TutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .TutorRefused
	
.Submission:
	writebyte SUBMISSION
	writetext CeladonCityGen1TutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .TutorRefused
	
.GENWUNNERMoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option
	
.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "SWORDS DANCE@"
	db "BODY SLAM@"
	db "DOUBLE-EDGE@"
	db "SUBMISSION@"
	db "CANCEL@"
	
.TutorRefused
	writetext CeladonCityGen1TutorRefused
	waitbutton
	closetext
	end

.TeachMove
	writetext CeladonCityGen1TutorTaught
	waitbutton
	closetext
	end

CeladonCityGen1Tutor2Script:
	faceplayer
	opentext
	writetext CeladonCityGen1Tutor2Text
	waitbutton
	writetext CeladonCityGen1TutorText2
	yesorno
	iffalse .TutorRefused2
	loadmenu .GENWUNNERMoveMenuHeader
	verticalmenu
	closewindow
	ifequal $1, .Counter
	ifequal $2, .SeismicToss
	ifequal $3, .Fissure
	ifequal $4, .Reflect
	sjump .TutorRefused2
	
.Counter:
	writebyte COUNTER
	writetext CeladonCityGen1TutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove2
	sjump .TutorRefused2

.SeismicToss:
	writebyte SEISMIC_TOSS
	writetext CeladonCityGen1TutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove2
	sjump .TutorRefused2

.Fissure:
	writebyte FISSURE
	writetext CeladonCityGen1TutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove2
	sjump .TutorRefused2
	
.Reflect:
	writebyte REFLECT
	writetext CeladonCityGen1TutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove2
	sjump .TutorRefused2
	
.GENWUNNERMoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option
	
.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "COUNTER@"
	db "SEISMIC TOSS@"
	db "FISSURE@"
	db "REFLECT@"
	db "CANCEL@"
	
.TutorRefused2
	writetext CeladonCityGen1TutorRefused
	waitbutton
	closetext
	end

.TeachMove2
	writetext CeladonCityGen1TutorTaught
	waitbutton
	closetext
	end
	
CeladonCityGen1Tutor3Script:
	faceplayer
	opentext
	writetext CeladonCityGen1Tutor3Text
	waitbutton
	writetext CeladonCityGen1TutorText2
	yesorno
	iffalse .TutorRefused3
	loadmenu .GENWUNNERMoveMenuHeader
	verticalmenu
	closewindow
	ifequal $1, .ThunderWave
	ifequal $2, .Explosion
	ifequal $3, .Substitute
	sjump .TutorRefused3
	
.ThunderWave:
	writebyte THUNDER_WAVE
	writetext CeladonCityGen1TutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove3
	sjump .TutorRefused3

.Explosion:
	writebyte EXPLOSION
	writetext CeladonCityGen1TutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove3
	sjump .TutorRefused3

.Substitute:
	writebyte SUBSTITUTE
	writetext CeladonCityGen1TutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove3
	sjump .TutorRefused3
	
.GENWUNNERMoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option
	
.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "THUNDER WAVE@"
	db "EXPLOSION@"
	db "SUBSTITUTE@"
	db "CANCEL@"
	
.TutorRefused3
	writetext CeladonCityGen1TutorRefused
	waitbutton
	closetext
	end

.TeachMove3
	writetext CeladonCityGen1TutorTaught
	waitbutton
	closetext
	end

CeladonCityGramps2Script:
	jumptextfaceplayer CeladonCityGramps2Text

CeladonCityYoungster1Script:
	jumptextfaceplayer CeladonCityYoungster1Text

CeladonCityYoungster2Script:
	jumptextfaceplayer CeladonCityYoungster2Text

CeladonCityTeacher2Script:
	jumptextfaceplayer CeladonCityTeacher2Text

CeladonCityLassScript:
	jumptextfaceplayer CeladonCityLassText

CeladonCitySign:
	jumptext CeladonCitySignText

CeladonGymSign:
	jumptext CeladonGymSignText

CeladonCityDeptStoreSign:
	jumptext CeladonCityDeptStoreSignText

CeladonCityMansionSign:
	jumptext CeladonCityMansionSignText

CeladonCityGameCornerSign:
	jumptext CeladonCityGameCornerSignText

CeladonCityTrainerTips:
	jumptext CeladonCityTrainerTipsText

CeladonCityPokecenterSign:
	jumpstd PokecenterSignScript

CeladonCityHiddenPpUp:
	hiddenitem PP_UP, EVENT_CELADON_CITY_HIDDEN_PP_UP
	
CeladonCityHiddenMaxElixir:
	hiddenitem MAX_ELIXER, EVENT_CELADON_HIDDEN_MAX_ELIXIR

CeladonCityFisherText:
	text "This POLIWRATH is"
	line "my partner."

	para "I wonder if it'll"
	line "ever evolve into a"
	cont "frog #MON."
	done

CeladonCityPoliwrathText:
	text "POLIWRATH: Croak!"
	done

CeladonCityTeacher1Text:
if DEF(_CRYSTAL_AU)
	text "I lost at the"
	line "machines."
	done
else
	text "I lost at the slot"
	line "machines again…"

	para "We girls also play"
	line "the slots now."

	para "You should check"
	line "them out too."
	done
endc

CeladonCityGen1TutorText:
	text "Hello there, my"
	line "name is ROUGE!"
	cont "I'm a GENWUNNER,"
	para "as you can tell"
	line "from my age."
	para "I can teach some"
	line "#MON moves"
	cont "from the past!"
	done
	
CeladonCityGen1Tutor2Text:
	text "Hello there, my"
	line "name is BLEU!"
	cont "I'm a GENWUNNER,"
	para "as you can tell"
	line "from my age."
	para "I can teach some"
	line "#MON moves"
	cont "from the past!"
	done
	
CeladonCityGen1Tutor3Text:
	text "Hello there, my"
	line "name is JAUNE!"
	cont "I'm a GENWUNNER,"
	para "as you can tell"
	line "from my age."
	para "I can teach some"
	line "#MON moves"
	cont "from the past!"
	done
	
CeladonCityGen1TutorText2:	
	text "Would you like me"
	line "to teach your"
	para "#MON how to"
	line "be GENWUNNERS"
	
CeladonCityGen1TutorClear:
	text ""
	done
	
CeladonCityGen1TutorRefused:
	text "I hate the new"
	line "generation…"
	done
	
CeladonCityGen1TutorTaught:
	text "Old-school is"
	line "where it's at!"
	done

CeladonCityGramps2Text:
	text "Nihihi! This GYM"
	line "is great! Only"

	para "girls are allowed"
	line "here!"
	done

CeladonCityYoungster1Text:
	text "Want to know a"
	line "secret?"

	para "CELADON MANSION"
	line "has a hidden back"
	cont "door."
	done

CeladonCityYoungster2Text:
	text "They're holding an"
	line "eating contest at"
	cont "the restaurant."

	para "Just watching them"
	line "go at it makes me"
	cont "feel bloated…"
	done

CeladonCityTeacher2Text:
	text "CELADON DEPT.STORE"
	line "has the biggest"

	para "and best selection"
	line "of merchandise."

	para "If you can't get"
	line "it there, you"

	para "can't get it any-"
	line "where."

	para "Gee… I sound like"
	line "a sales clerk."
	done

CeladonCityLassText_Mobile:
; unused
	text "I love being"
	line "surrounded by tall"
	cont "buildings!"

	para "Isn't it true that"
	line "GOLDENROD #MON"

	para "CENTER was made"
	line "much, much bigger?"

	para "That is so neat!"
	line "I wish we had a"

	para "place like that in"
	line "KANTO…"
	done

CeladonCityLassText:
	text "Looking at the"
	line "ground while I was"

	para "walking made me"
	line "dizzy."
	done

CeladonCitySignText:
	text "CELADON CITY"

	para "The City of"
	line "Rainbow Dreams"
	done

CeladonGymSignText:
	text "CELADON CITY"
	line "#MON GYM"
	cont "LEADER: ERIKA"

	para "The Nature-Loving"
	line "Princess"
	done

CeladonCityDeptStoreSignText:
	text "Find What You"
	line "Need at CELADON"
	cont "DEPT.STORE!"
	done

CeladonCityMansionSignText:
	text "CELADON MANSION"
	done

CeladonCityGameCornerSignText:
if DEF(_CRYSTAL_AU)
	text "The Game Area for"
	line "Grown-ups--CELADON"
	cont "GAME CORNER"
	done
else
	text "The Playground for"
	line "Everybody--CELADON"
	cont "GAME CORNER"
	done
endc

CeladonCityTrainerTipsText:
	text "TRAINER TIPS"

	para "GUARD SPEC."
	line "protects #MON"

	para "against SPECIAL"
	line "attacks such as"
	cont "fire and water."

	para "Get your items at"
	line "CELADON DEPT."
	cont "STORE!"
	done

CeladonCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, CELADON_DEPT_STORE_1F, 1
	warp_event 16,  9, CELADON_MANSION_1F, 1
	warp_event 16,  3, CELADON_MANSION_1F, 3
	warp_event 17,  3, CELADON_MANSION_1F, 3
	warp_event 29,  9, CELADON_POKECENTER_1F, 1
	warp_event 18, 19, CELADON_GAME_CORNER, 1
	warp_event 23, 19, CELADON_GAME_CORNER_PRIZE_ROOM, 1
	warp_event 10, 29, CELADON_GYM, 1
	warp_event 21, 29, CELADON_CAFE, 1

	def_coord_events

	def_bg_events
	bg_event 23, 21, BGEVENT_READ, CeladonCitySign
	bg_event 11, 31, BGEVENT_READ, CeladonGymSign
	bg_event  6,  9, BGEVENT_READ, CeladonCityDeptStoreSign
	bg_event 13,  9, BGEVENT_READ, CeladonCityMansionSign
	bg_event 19, 21, BGEVENT_READ, CeladonCityGameCornerSign
	bg_event 29, 21, BGEVENT_READ, CeladonCityTrainerTips
	bg_event 30,  9, BGEVENT_READ, CeladonCityPokecenterSign
	bg_event 37, 21, BGEVENT_ITEM, CeladonCityHiddenPpUp
	bg_event 35,  7, BGEVENT_ITEM, CeladonCityHiddenMaxElixir

	def_object_events
	object_event 26, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityFisherScript, -1
	object_event 27, 11, SPRITE_POLIWRATH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCityPoliwrath, -1
	object_event 20, 24, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityTeacher1Script, -1
	object_event 13, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCityGen1TutorScript, -1
	object_event 14, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCityGen1Tutor2Script, -1
	object_event 15, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCityGen1Tutor3Script, -1
	object_event  8, 31, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps2Script, -1
	object_event 18, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCityYoungster1Script, -1
	object_event 24, 33, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityYoungster2Script, -1
	object_event  6, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityTeacher2Script, -1
	object_event  7, 22, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityLassScript, -1
