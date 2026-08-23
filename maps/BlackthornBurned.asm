	object_const_def
	const BLACKTHORNBURNED_GENGAR
	const BLACKTHORNBURNED_POKE_BALL

BlackthornBurned_MapScripts:
	def_scene_scripts

	def_callbacks
	
BurnedGengar:
	opentext
	writetext BurnedGengarText
	cry GENGAR
	closetext
	opentext
	writetext BurnedGengarText2
	waitbutton
	closetext
	end

BurnedLeftovers:
	itemball LEFTOVERS
	
BurnedGengarText:
	text "GENGAR: Garrr!"
	done
	
BurnedGengarText2:
	text "It appears to be"
	para "dancing with glee"
	line "in the dark."
	done

BlackthornBurned_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, BLACKTHORN_CITY, 9
	warp_event  6, 13, BLACKTHORN_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_GENGAR, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BurnedGengar, -1
	object_event  8,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BurnedLeftovers, EVENT_BLACKTHORNBURNED_LEFTOVERS
