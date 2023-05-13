	object_const_def
	const ROUTE8_SUPER_NERD1
	const ROUTE8_SUPER_NERD2
	const ROUTE8_FRUIT_TREE
	const ROUTE8_YOUNGSTER
	const ROUTE8_TEACHER
	const ROUTE8_FISHER

Route8_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .EastRoadLocked
	
.EastRoadLocked:
	checkflag ENGINE_FLYPOINT_LAVENDER
	iftrue .KeepEntranceOpen
	changeblock 37, 9, $13 ; eastern exit blocked off
	changeblock 39, 9, $13 ; eastern exit blocked off
.KeepEntranceOpen:
	endcallback

TrainerSupernerdSam:
	trainer SUPER_NERD, SAM, EVENT_BEAT_SUPER_NERD_SAM, SupernerdTomSeenText, SupernerdTomBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdTomAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdTom:
	trainer SUPER_NERD, TOM, EVENT_BEAT_SUPER_NERD_TOM, SupernerdSamSeenText, SupernerdSamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdSamAfterBattleText
	waitbutton
	closetext
	end
	
TrainerLulu:
	trainer TEACHER, LULU, EVENT_BEAT_LULU, LuluSeenText, LuluBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LuluAfterBattleText
	waitbutton
	closetext
	end
	
TrainerTod:
	trainer FIREBREATHER, TOD, EVENT_BEAT_TOD, TodSeenText, TodBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TodAfterBattleText
	waitbutton
	closetext
	end
	
BlockedYoungsterScript:
	jumptextfaceplayer BlockedYoungsterText

Route8LockedDoor:
	jumptext Route8LockedDoorText

Route8UndergroundPathSign:
	jumptext Route8UndergroundPathSignText

Route8FruitTree:
	fruittree FRUITTREE_ROUTE_8



SupernerdSamSeenText:
	text "How does the MAG-"
	line "NET TRAIN work?"
	done

SupernerdSamBeatenText:
	text "I just want to see"
	line "the MAGNET TRAIN…"
	done

SupernerdSamAfterBattleText:
	text "The power of mag-"
	line "nets is awesome!"
	done

SupernerdTomSeenText:
	text "Hm… You've got"
	line "many GYM BADGES."
	done

SupernerdTomBeatenText:
	text "Just as I thought…"
	line "You're tough!"
	done

SupernerdTomAfterBattleText:
	text "GYM BADGES really"
	line "are a symbol of"
	cont "strength."
	done
	
LuluSeenText:
	text "What are you doing"
	line "here, child?"
	
	para "You better not be"
	line "causing mischief."
	
	para "If so, I'll have"
	line "to teach you a"
	cont "lesson!"
	done

LuluBeatenText:
	text "How insolent!"
	done

LuluAfterBattleText:
	text "I was only trying"
	line "to do my job…"
	
	para "I guess I got a"
	line "little carried"
	cont "away."
	done
	
TodSeenText:
	text "Want to help with"
	line "my firebreathing"
	cont "tricks?"
	
	para "You'll find them"
	line "astounding!"
	done

TodBeatenText:
	text "No, not that way!"
	done

TodAfterBattleText:
	text "Trying to win and"
	line "perform tricks at"
	
	para "the same time is"
	line "really difficult…"
	done
	
BlockedYoungsterText:
	text "They blocked off"
	line "LAVENDER TOWN from"
	cont "this side…"

	para "Maybe it has some-"
	line "thing to do with"

	para "the rowdy battles"
	line "going on in the"
	
	para "UNDERGROUND PATH"
	line "recently."
	done

Route8LockedDoorText:
	text "It's locked…"
	done

Route8UndergroundPathSignText:
	text "The flyer's torn."

	para "It's impossible to"
	line "read…"
	done

Route8_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  4, ROUTE_8_SAFFRON_GATE, 3
	warp_event  4,  5, ROUTE_8_SAFFRON_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, Route8UndergroundPathSign
	bg_event 10,  5, BGEVENT_READ, Route8LockedDoor

	def_object_events
	object_event 18,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSupernerdSam, -1
	object_event 28,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSupernerdTom, -1
	object_event 33,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8FruitTree, -1
	object_event 33,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlockedYoungsterScript, EVENT_RESTORED_POWER_TO_KANTO
	object_event 24,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerLulu, -1
	object_event 31, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerTod, -1
	