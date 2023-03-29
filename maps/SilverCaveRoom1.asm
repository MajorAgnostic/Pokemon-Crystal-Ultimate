	object_const_def
	const SILVERCAVEROOM1_POKE_BALL1
	const SILVERCAVEROOM1_POKE_BALL2
	const SILVERCAVEROOM1_POKE_BALL3
	const SILVERCAVEROOM1_POKE_BALL4
	const SILVERCAVEROOM1_YOUNGSTER
	const SILVERCAVEROOM1_POKEFAN

SilverCaveRoom1_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerPatrick:
	trainer CAMPER, PATRICK, EVENT_BEAT_PATRICK, PatrickSeenText, PatrickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PatrickAfterBattleText
	waitbutton
	closetext
	end
	
TrainerLeroy:
	trainer HIKER, LEROY, EVENT_BEAT_LEROY, LeroySeenText, LeroyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LeroyAfterBattleText
	waitbutton
	closetext
	end

SilverCaveRoom1MaxElixer:
	itemball MAX_ELIXER

SilverCaveRoom1Protein:
	itemball MAX_POTION

SilverCaveRoom1EscapeRope:
	itemball REVIVE

SilverCaveRoom1UltraBall:
	itemball ULTRA_BALL

SilverCaveRoom1HiddenDireHit:
	hiddenitem DIRE_HIT, EVENT_SILVER_CAVE_ROOM_1_HIDDEN_DIRE_HIT

SilverCaveRoom1HiddenUltraBall:
	hiddenitem HEAVY_BALL, EVENT_SILVER_CAVE_ROOM_1_HIDDEN_ULTRA_BALL
	
PatrickSeenText:
	text "MT. SILVER, the"
	line "ultimate camping"
	cont "location!"
	done

PatrickBeatenText:
	text "Snuffed out…"
	done

PatrickAfterBattleText:
	text "Darn, I think I"
	line "burnt my marsh-"
	cont "mallows…"
	done
	
LeroySeenText:
	text "Huff… puff…"
	line "This mountain is"
	cont "huge!"
	
	para "So close… to the"
	line "top…"
	done

LeroyBeatenText:
	text "Aargh!"
	done

LeroyAfterBattleText:
	text "I'm aiming to be"
	line "the first HIKER to"
	
	para "reach the summit"
	line "of MT. SILVER."
	done

SilverCaveRoom1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 33, SILVER_CAVE_OUTSIDE, 2
	warp_event 15,  1, SILVER_CAVE_ROOM_2, 1

	def_coord_events

	def_bg_events
	bg_event 16, 23, BGEVENT_ITEM, SilverCaveRoom1HiddenDireHit
	bg_event 17, 12, BGEVENT_ITEM, SilverCaveRoom1HiddenUltraBall

	def_object_events
	object_event  4,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1MaxElixer, EVENT_SILVER_CAVE_ROOM_1_MAX_ELIXER
	object_event 15, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1Protein, EVENT_SILVER_CAVE_ROOM_1_PROTEIN
	object_event  5, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1EscapeRope, EVENT_SILVER_CAVE_ROOM_1_ESCAPE_ROPE
	object_event  7, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1UltraBall, EVENT_SILVER_CAVE_ROOM_1_ULTRA_BALL
	object_event  8, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPatrick, -1
	object_event 11,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerLeroy, -1
