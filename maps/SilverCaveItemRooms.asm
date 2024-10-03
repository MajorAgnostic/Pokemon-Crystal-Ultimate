	object_const_def
	const SILVERCAVEITEMROOMS_MOLTRES
	const SILVERCAVEITEMROOMS_POKE_BALL1
	const SILVERCAVEITEMROOMS_POKE_BALL2

SilverCaveItemRooms_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Moltres
	
.Moltres:
	checkevent EVENT_MOLTRES
	iftrue .NoAppear
	appear SILVERCAVEITEMROOMS_MOLTRES
	endcallback

.NoAppear:
	disappear SILVERCAVEITEMROOMS_MOLTRES
	endcallback
	
Moltres:
	faceplayer
	opentext
	writetext MoltresText
	cry MOLTRES
	pause 15
	closetext
	setevent EVENT_MOLTRES
	loadvar VAR_BATTLETYPE, BATTLETYPE_KANTOLEGEND
	loadwildmon MOLTRES, 85
	startbattle
	disappear SILVERCAVEITEMROOMS_MOLTRES
	reloadmapafterbattle
	end

SilverCaveItemRoomsMaxRevive:
	itemball MAX_REVIVE

SilverCaveItemRoomsFullRestore:
	itemball FULL_RESTORE
	
MoltresText:
	text "Gyaoo!"
	done

SilverCaveItemRooms_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  3, SILVER_CAVE_ROOM_2, 3
	warp_event  7, 17, SILVER_CAVE_ROOM_2, 4
	warp_event 31, 19, SILVER_CAVE_ROOM_2, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 32,  3, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Moltres, EVENT_MOLTRES
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsMaxRevive, EVENT_SILVER_CAVE_ITEM_ROOMS_MAX_REVIVE
	object_event 15, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsFullRestore, EVENT_SILVER_CAVE_ITEM_ROOMS_FULL_RESTORE
