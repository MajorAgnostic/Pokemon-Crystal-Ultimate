	object_const_def
	const TOHJOFALLS_POKE_BALL
	const TOHJOFALLS_GIOVANNI

TohjoFalls_MapScripts:
	def_scene_scripts

	def_callbacks

TohjoFallsMoonStone:
	itemball MOON_STONE
	
TohjoGiovanni:
	faceplayer
	checkevent EVENT_SPOKE_ONCE
	iftrue .Speak2
	opentext
	writetext TohjoGiovanniText
	waitbutton
	closetext
	setevent EVENT_SPOKE_ONCE
	turnobject TOHJOFALLS_GIOVANNI, UP
	end
	
.Speak2:
	opentext
	writetext TohjoGiovanniText2
	waitbutton
	closetext
	turnobject TOHJOFALLS_GIOVANNI, UP
	end
	
TohjoGiovanniText:
	text "Hmm… …yes, maybe…"
	line "… … …hmm?"

	para "A trainer, by the"
	line "looks of it."

	para "Looking to issue a"
	line "challenge to the"
	cont "ELITE FOUR?"
	
	para "I once shared that"
	line "dream, too."
	
	para "I once shared many"
	line "dreams with many"
	cont "others, in fact…"
	
	para "Well, don't you"
	line "have somewhere"
	cont "to be?"
	
	para "Leave me be."
	done
	
TohjoGiovanniText2:
	text "Leave me be."
	done

TohjoFalls_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 15, ROUTE_27, 2
	warp_event 25, 15, ROUTE_27, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TohjoFallsMoonStone, EVENT_TOHJO_FALLS_MOON_STONE
	object_event 27, 14, SPRITE_HAT_GIOVANNI, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TohjoGiovanni, EVENT_BEAT_ELITE_FOUR
