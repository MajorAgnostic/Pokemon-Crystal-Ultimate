	object_const_def
	const PEWTERMUSEUM2F_SUPER_NERD
	const PEWTERMUSEUM2F_RIVAL
	const PEWTERMUSEUM2F_GUARD1
	const PEWTERMUSEUM2F_GUARD2
	const PEWTERMUSEUM2F_LASS
	const PEWTERMUSEUM2F_POKEDEX

PewterMuseum2F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMuseum2FSuperNerdScript:
	jumptextfaceplayer PewterMuseum2FSuperNerdText
	
Museum2FRivalScript:
	faceplayer
	opentext
	writetext PewterMuseum2FGuardText
	promptbutton
	verbosegiveitem SILVER_WING
	setevent EVENT_GOT_SILVER_WING
	closetext
	end
	
Museum2FGuardScript:
	jumptextfaceplayer PewterMuseum2FGuardText
	
Museum2FLassScript:
	jumptextfaceplayer PewterMuseum2FLassText
	
MuseumBinos:
	jumptext MuseumBinosText
	
Museum2FGoldWingScript:
	jumptextfaceplayer Museum2FGoldWingText
	
Museum2FFossil4Sign:
	jumptext Museum2FFossil4SignText
	
Museum2FFossil3Sign:
	jumptext Museum2FFossil3SignText

PewterMuseum2FSuperNerdText:
	text "There are two"
	line "places that I love"
	cont "above all!"

	para "One is the RUINS"
	line "OF ALPH in JOHTO…"
	
	para "The other is the"
	line "PEWTER MUSEUM!"
	
	para "It's so quiet and"
	line "makes me feel very"
	cont "calm."
	
	para "Can you feel its"
	line "admirable history?"
	done
	
PewterMuseum2FGuardText:
	text "This rare piece"
	line "was donated to us"
	cont "recently."

	para "Please be careful"
	line "not to touch the"
	cont "display."
	done
	
PewterMuseum2FLassText:
	text "What a view…"

	para "I hope I can make"
	line "it to the #MON"
	cont "LEAGUE someday!"
	done
	
Museum2FGoldWingText:
	text "It's a rare plume"
	line "from the legendary"
	cont "#MON HO-OH."

	para "It must be the one"
	line "that MISTY found!"
	done
	
MuseumBinosText:
	text "To the west you"
	line "see an imposing"
	cont "structure…"
	
	para "It's the INDIGO"
	line "PLATEAU!"
	done
	
Museum2FFossil4SignText:
	text "It appears that"
	line "this display is"
	cont "still under con-"
	cont "struction…"
	done
	
Museum2FFossil3SignText:
	text "Fossil of the"
	line "prehistoric"
	
	para "flying #MON,"
	line "AERODACTYL."

	para "Primitive and"
	line "rare species."
	done

PewterMuseum2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, PEWTER_MUSEUM_1F, 3

	def_coord_events

	def_bg_events
	bg_event  6,  2, BGEVENT_UP, MuseumBinos
	bg_event 10,  4, BGEVENT_READ, Museum2FFossil4Sign
	bg_event  2,  7, BGEVENT_READ, Museum2FFossil3Sign

	def_object_events
	object_event  3,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseum2FSuperNerdScript, -1
	object_event  2,  3, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum2FRivalScript, EVENT_GOT_SILVER_WING
	object_event 10, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum2FGuardScript, -1
	object_event 10,  6, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum2FGuardScript, -1
	object_event  7,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Museum2FLassScript, -1
	object_event 10,  8, SPRITE_WING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum2FGoldWingScript, -1
