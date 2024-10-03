	object_const_def
	const ICEPATH1F_ROCKER1
	const ICEPATH1F_ROCKER2
	const ICEPATH1F_POKE_BALL1
	const ICEPATH1F_POKE_BALL2
	const ICEPATH1F_POKE_BALL3

IcePath1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerBoarderTheo:
	trainer BOARDER, THEO, EVENT_BEAT_BOARDER_THEO, BoarderTheoSeenText, BoarderTheoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderTheoAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBoarderJordan:
	trainer BOARDER, JORDAN, EVENT_BEAT_BOARDER_JORDAN, BoarderJordanSeenText, BoarderJordanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderJordanAfterBattleText
	waitbutton
	closetext
	end

IcePath1FHMWaterfall:
	itemball HM_WATERFALL

IcePath1FPPUp:
	itemball PP_UP

IcePath1FProtein:
	itemball ICE_HEAL
	
BoarderTheoSeenText:
	text "Brrr, it's free-"
	line "zing in here!"
	
	para "But the frosty"
	line "slopes are just"
	cont "gnarly, dude!"
	done

BoarderTheoBeatenText:
	text "Tubular, man!"
	done

BoarderTheoAfterBattleText:
	text "I guess trying to"
	line "sound like a cool"

	para "surfer doesn't"
	line "work if you're a"
	cont "snow BOARDER."
	done
	
BoarderJordanSeenText:
	text "Hey, where do you"
	line "think you're go-"
	cont "ing?"
	done

BoarderJordanBeatenText:
	text "You just melted"
	line "me down!"
	done

BoarderJordanAfterBattleText:
	text "I think you'll do"
	line "just fine in the"
	cont "next GYM, kid."
	done

IcePath1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 19, ROUTE_44, 1
	warp_event 36, 27, BLACKTHORN_CITY, 7
	warp_event 37,  5, ICE_PATH_B1F, 1
	warp_event 37, 13, ICE_PATH_B1F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event 27,  2, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBoarderTheo, -1
	object_event 37, 25, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderJordan, -1
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FHMWaterfall, EVENT_GOT_HM07_WATERFALL
	object_event 32, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FPPUp, EVENT_ICE_PATH_1F_PP_UP
	object_event 31,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FProtein, EVENT_ICE_PATH_1F_PROTEIN
