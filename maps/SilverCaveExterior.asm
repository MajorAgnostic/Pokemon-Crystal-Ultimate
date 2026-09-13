	object_const_def
	const SILVERCAVEEXTERIOR_MOLTRES
	const SILVERCAVEEXTERIOR_POKE_BALL1
	const SILVERCAVEEXTERIOR_POKE_BALL2

SilverCaveExterior_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Moltres
	
.Moltres:
	checkevent EVENT_MOLTRES
	iftrue .NoAppear
	appear SILVERCAVEEXTERIOR_MOLTRES
	endcallback

.NoAppear:
	disappear SILVERCAVEEXTERIOR_MOLTRES
	endcallback
	
ExteriorMoltres:
	faceplayer
	opentext
	writetext ExteriorMoltresText
	cry MOLTRES
	pause 15
	closetext
	setevent EVENT_MOLTRES
	loadvar VAR_BATTLETYPE, BATTLETYPE_KANTOLEGEND
	loadwildmon MOLTRES, 85
	startbattle
	disappear SILVERCAVEEXTERIOR_MOLTRES
	reloadmapafterbattle
	end

SilverCaveExteriorMaxPotion:
	itemball MAX_POTION

SilverCaveExteriorFullRestore:
	itemball FULL_RESTORE
	
SilverCaveExteriorHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_SILVER_HIDDENRARECANDY
	
ExteriorMoltresText:
	text "Gyaoo!"
	done

SilverCaveExterior_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  9, SILVER_CAVE_ROOM_2, 6
	warp_event 13, 17, SILVER_CAVE_ROOM_2, 3
	warp_event 35,  7, SILVER_CAVE_ITEM_ROOMS, 5
	warp_event  5,  5, SILVER_CAVE_ROOM_2, 14
	warp_event 33,  3, SILVER_CAVE_ROOM_3, 1

	def_coord_events

	def_bg_events
	bg_event  3, 10, BGEVENT_ITEM, SilverCaveExteriorHiddenRareCandy

	def_object_events
	object_event 19,  7, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ExteriorMoltres, EVENT_MOLTRES
	object_event  5, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveExteriorMaxPotion, EVENT_SILVER_EXTERIOR_MAX_POTION
	object_event 23, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveExteriorFullRestore, EVENT_SILVER_EXTERIOR_FULL_RESTORE
