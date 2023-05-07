	object_const_def
	const SEAFOAMB4F_BOULDER1
	const SEAFOAMB4F_BOULDER2
	const SEAFOAMB4F_ARTICUNO
	const SEAFOAMB4F_POKE_BALL

SeafoamIslandsB4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Articuno
	
.Articuno:
	checkevent EVENT_ARTICUNO
	iftrue .NoAppear
	appear SEAFOAMB4F_ARTICUNO
	endcallback

.NoAppear:
	disappear SEAFOAMB4F_ARTICUNO
	endcallback
	
Articuno:
	faceplayer
	opentext
	writetext ArticunoText
	cry ARTICUNO
	pause 15
	closetext
	setevent EVENT_ARTICUNO
	loadvar VAR_BATTLETYPE, BATTLETYPE_KANTOLEGEND
	loadwildmon ARTICUNO, 90
	startbattle
	disappear SEAFOAMB4F_ARTICUNO
	reloadmapafterbattle
	end
	
SeafoamB4FIceBoulder:
	jumptext SeafoamB4FIceBoulderText
	
SeafoamB4FBlizzard:
	itemball TM_BLIZZARD
	
SeafoamHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_SEAFOAM_HIDDEN_ULTRA
	
ArticunoText:
	text "Gyaoo!"
	done
	
SeafoamB4FIceBoulderText:
	text "It's immovably"
	line "embedded in ice."
	done

SeafoamIslandsB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  9, SEAFOAM_ISLANDS_B3F, 4
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 5
	warp_event  4,  5, SEAFOAM_ISLANDS_B3F, 8 ; holes
	warp_event  8,  5, SEAFOAM_ISLANDS_B3F, 9

	def_coord_events

	def_bg_events
	bg_event 12, 15, BGEVENT_ITEM, SeafoamHiddenUltraBall

	def_object_events
	object_event  4,  4, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB4FIceBoulder, EVENT_BOULDER_IN_SEAFOAM_13
	object_event  9,  5, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB4FIceBoulder, EVENT_BOULDER_IN_SEAFOAM_14
	object_event  8,  1, SPRITE_ARTICUNO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Articuno, EVENT_ARTICUNO
	object_event 25, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamB4FBlizzard, EVENT_BLIZZARD_TM
