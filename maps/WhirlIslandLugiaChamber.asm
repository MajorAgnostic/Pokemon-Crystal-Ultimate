	object_const_def
	const WHIRLISLANDLUGIACHAMBER_LUGIA
	const WHIRLISLANDLUGIACHAMBER_POKE_BALL
	const WHIRLISLANDLUGIACHAMBER_ROCK1
	const WHIRLISLANDLUGIACHAMBER_ROCK2
	const WHIRLISLANDLUGIACHAMBER_ROCK3

WhirlIslandLugiaChamber_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .Lugia

.Lugia:
	checkevent EVENT_FOUGHT_LUGIA
	iftrue .NoAppear
	checkitem SILVER_WING
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear WHIRLISLANDLUGIACHAMBER_LUGIA
	endcallback

.NoAppear:
	disappear WHIRLISLANDLUGIACHAMBER_LUGIA
	endcallback

Lugia:
	faceplayer
	opentext
	writetext LugiaText
	cry LUGIA
	pause 15
	closetext
	setevent EVENT_FOUGHT_LUGIA
	loadvar VAR_BATTLETYPE, BATTLETYPE_LUGIA
	loadwildmon LUGIA, 90
	startbattle
	disappear WHIRLISLANDLUGIACHAMBER_LUGIA
	reloadmapafterbattle
	end
	
WhirlIslandLugiaChamberSacredAsh:
	itemball SACRED_ASH
	
WhirlIslandLugiaChamberRock:
	jumpstd SmashRockScript

LugiaText:
	text "Gyaaas!"
	done

WhirlIslandLugiaChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 31, WHIRL_ISLAND_B2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 20, SPRITE_LUGIA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Lugia, EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA
	object_event 11,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WhirlIslandLugiaChamberSacredAsh, EVENT_LUGIACHAMBER_SACREDASH
	object_event 12,  8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhirlIslandLugiaChamberRock, -1
	object_event 13,  8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhirlIslandLugiaChamberRock, -1
	object_event 14,  8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhirlIslandLugiaChamberRock, -1
