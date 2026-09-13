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
	warp_event 15, 11, SILVER_CAVE_ROOM_2, 4
	warp_event 17, 21, SILVER_CAVE_ROOM_2, 9
	warp_event 31, 21, SILVER_CAVE_ROOM_2, 5
	warp_event  7, 19, SILVER_CAVE_ROOM_2, 2
	warp_event 13,  3, SILVER_CAVE_EXTERIOR, 3
	warp_event  5, 11, SILVER_CAVE_ROOM_2, 10
	warp_event 10, 11, SILVER_CAVE_ROOM_2, 12
	warp_event 33, 19, SILVER_CAVE_ROOM_2, 11
	warp_event 17,  9, SILVER_CAVE_ROOM_2, 13

	def_coord_events

	def_bg_events

	def_object_events
	object_event 32,  5, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Moltres, EVENT_MOLTRES
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsMaxRevive, EVENT_SILVER_CAVE_ITEM_ROOMS_MAX_REVIVE
	object_event  6, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsFullRestore, EVENT_SILVER_CAVE_ITEM_ROOMS_FULL_RESTORE
