	object_const_def
	const SILVERCAVEOUTSIDE_POKE_BALL
	const SILVERCAVEOUTSIDE_YOUNGSTER1
	const SILVERCAVEOUTSIDE_COOLTRAINER_M
	const SILVERCAVEOUTSIDE_YOUNGSTER2

SilverCaveOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	endcallback
	
TrainerCarl:
	trainer PSYCHIC_T, CARL, EVENT_BEAT_CARL, CarlSeenText, CarlBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CarlAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCallum:
	trainer COOLTRAINERM, CALLUM, EVENT_BEAT_CALLUM, CallumSeenText, CallumBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CallumAfterBattleText
	waitbutton
	closetext
	end
	
TrainerJoey6:
	trainer YOUNGSTER, JOEY6, EVENT_BEAT_JOEY6, JoeySeenText, JoeyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JoeyAfterBattleText
	waitbutton
	closetext
	end

MtSilverPokecenterSign:
	jumpstd PokecenterSignScript

MtSilverSign:
	jumptext MtSilverSignText
	
MtSilverMasterBall:
	itemball MASTER_BALL

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE
	
CarlSeenText:
	text "MT. SILVER plays"
	line "a key role in"
	cont "your future."
	done

CarlBeatenText:
	text "……"
	done

CarlAfterBattleText:
	text "The culmination"
	line "of your journey…"
	
	para "Best of luck in"
	line "SILVER CAVE."
	done
	
CallumSeenText:
	text "Today…"
	line "Today is not your"
	cont "day."
	done

CallumBeatenText:
	text "Unforgiveable…"
	done

CallumAfterBattleText:
	text "You must've been"
	line "journeying for a"
	cont "while."
	
	para "Have you called"
	line "your MOM lately?"
	done
	
JoeySeenText:
	text "You!"
	line "What brought you"
	cont "to MT. SILVER?"
	
	para "I bet you wanted"
	line "to face the stron-"
	cont "gest RATICATE in"
	cont "the world, right?"
	done

JoeyBeatenText:
	text "Maybe I need a new"
	line "strategy…"
	done

JoeyAfterBattleText:
	text "Wow, you're too"
	line "tough."
	
	para "Perhaps I should"
	line "make some friends"
	cont "for my RATICATE"
	cont "squad."
	done

MtSilverSignText:
	text "MT.SILVER"
	done

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	def_coord_events

	def_bg_events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event 30, 20, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	def_object_events
	object_event  9, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtSilverMasterBall, EVENT_MT_SILVER_MASTER_BALL
	object_event 26, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerCarl, -1
	object_event  9, 28, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCallum, -1
	object_event 35, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerJoey6, EVENT_BEAT_JOEY6
