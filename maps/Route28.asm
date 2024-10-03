	object_const_def
	const ROUTE28_POKE_BALL
	const ROUTE28_YOUNGSTER
	const ROUTE28_FISHER
	const ROUTE28_BUG_CATCHER

Route28_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerTanner:
	trainer BIRD_KEEPER, TANNER, EVENT_BEAT_TANNER, TannerSeenText, TannerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TannerAfterBattleText
	waitbutton
	closetext
	end
	
TrainerWilkinson:
	trainer FISHER, WILKINSON, EVENT_BEAT_WILKINSON, WilkinsonSeenText, WilkinsonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WilkinsonAfterBattleText
	waitbutton
	closetext
	end
	
TrainerDarimi:
	trainer BUG_CATCHER, DARIMI, EVENT_BEAT_DARIMI, DarimiSeenText, DarimiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DarimiAfterBattleText
	waitbutton
	closetext
	end

Route28Sign:
	jumptext Route28SignText
	
Route28MaxRevive:
	itemball MAX_REVIVE

Route28HiddenRareCandy:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_28_HIDDEN_RARE_CANDY
	
TannerSeenText:
	text "Nothing beats the"
	line "feeling of flying"
	cont "on your #MON."
	
	para "But standing high"
	line "up on a mountain"

	para "like this comes"
	line "pretty close!"
	done

TannerBeatenText:
	text "So close to the"
	line "top…"
	done

TannerAfterBattleText:
	text "If you reach the"
	line "mountain's peak,"
	cont "call out my name!"
	done
	
WilkinsonSeenText:
	text "Hey, aren't you"
	line "the CHAMPION?"
	
	para "How about a quick"
	line "match?"
	done

WilkinsonBeatenText:
	text "Figures…"
	done

WilkinsonAfterBattleText:
	text "Are you headed up"
	line "to the peak?"
	
	para "Let me know if"
	line "you find a good"
	cont "fishing spot!"
	done
	
DarimiSeenText:
	text "Do berries count"
	line "as candy?"
	
	para "They're so sweet"
	line "and yummy!"
	done

DarimiBeatenText:
	text "I'm all out of"
	line "juice…"
	done

DarimiAfterBattleText:
	text "I should get back"
	line "to training, but"
	
	para "I can't stop stu-"
	line "ffing my face with"
	cont "berries!"
	done

Route28SignText:
	text "ROUTE 28"
	done

Route28_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, ROUTE_28_STEEL_WING_HOUSE, 1
	warp_event 33,  5, VICTORY_ROAD_GATE, 7

	def_coord_events

	def_bg_events
	bg_event 31,  5, BGEVENT_READ, Route28Sign
	bg_event 25,  2, BGEVENT_ITEM, Route28HiddenRareCandy

	def_object_events
	object_event  5,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route28MaxRevive, EVENT_ROUTE_28_MAX_REVIVE
	object_event  7,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerTanner, -1
	object_event 23,  11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerWilkinson, -1
	object_event  7,  12, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerDarimi, -1
