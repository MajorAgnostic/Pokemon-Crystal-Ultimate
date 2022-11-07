	object_const_def
	const PLAYERSHOUSE2F_CONSOLE
	const PLAYERSHOUSE2F_DOLL_1
	const PLAYERSHOUSE2F_DOLL_2
	const PLAYERSHOUSE2F_BIG_DOLL
	const PLAYERSHOUSE2F_POKE_BALL1
	const PLAYERSHOUSE2F_POKE_BALL2
	const PLAYERSHOUSE2F_POKE_BALL3
	const PLAYERSHOUSE2F_POKE_BALL4
	const PLAYERSHOUSE2F_POKE_BALL5
	const PLAYERSHOUSE2F_POKE_BALL6
	const PLAYERSHOUSE2F_POKE_BALL7
	const PLAYERSHOUSE2F_POKE_BALL8

PlayersHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .InitializeRoom
	callback MAPCALLBACK_TILES, .SetUpTileDecorations
	callback MAPCALLBACK_GRAPHICS, .RenderCarpet
	callback MAPCALLBACK_OBJECTS, .NoItem

; unused
.Null:
	end

.InitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInitialization
	jumpstd InitializeEventsScript
	endcallback

.SkipInitialization:
	endcallback

.SetUpTileDecorations:
	special ToggleMaptileDecorations
	endcallback

.RenderCarpet:
	special CoverTilesWithCarpet
	endcallback
	
.NoItem:
	checkevent EVENT_HOMEUSELESS7
	iffalse .NoAppear8
	endcallback
.NoAppear8:
	disappear PLAYERSHOUSE2F_POKE_BALL8
	checkevent EVENT_HOMEBIGLAPRASDOLL
	iffalse .NoAppear7
	endcallback
.NoAppear7:
	disappear PLAYERSHOUSE2F_POKE_BALL7
	checkevent EVENT_HOMEUPGRADE
	iffalse .NoAppear6
	endcallback
.NoAppear6:
	disappear PLAYERSHOUSE2F_POKE_BALL6
	checkevent EVENT_HOMEVOLTORBDOLL
	iffalse .NoAppear5
	endcallback
.NoAppear5:
	disappear PLAYERSHOUSE2F_POKE_BALL5
	checkevent EVENT_HOMESNES
	iffalse .NoAppear4
	endcallback
.NoAppear4:
	disappear PLAYERSHOUSE2F_POKE_BALL4
	checkevent EVENT_HOMEPPUP
	iffalse .NoAppear3
	endcallback
.NoAppear3:
	disappear PLAYERSHOUSE2F_POKE_BALL3
	checkevent EVENT_HOMEPIKAPOSTER
	iffalse .NoAppear2
	endcallback
.NoAppear2:
	disappear PLAYERSHOUSE2F_POKE_BALL2
	endcallback

Doll1Script::
	describedecoration DECODESC_LEFT_DOLL

Doll2Script:
	describedecoration DECODESC_RIGHT_DOLL

BigDollScript:
	describedecoration DECODESC_BIG_DOLL

GameConsoleScript:
	describedecoration DECODESC_CONSOLE

PosterScript:
	conditional_event EVENT_PLAYERS_ROOM_POSTER, .Script

.Script:
	describedecoration DECODESC_POSTER

PlayersHouseRadioScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext PlayersRadioText1
	pause 45
	writetext PlayersRadioText2
	pause 45
	writetext PlayersRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext PlayersRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end

.NormalRadio:
	jumpstd Radio1Script

.AbbreviatedRadio:
	opentext
	writetext PlayersRadioText4
	pause 45
	closetext
	end

PlayersHouseBookshelfScript:
	jumpstd PictureBookshelfScript

PlayersHousePCScript:
	opentext
	special PlayersHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, 0, 0
	end
	
PlayersHouse2FPikaPoster:
	itemball PIKAPOSTER

PlayersHouse2FPPUp:
	itemball PP_UP
	
PlayersHouse2FSNES:
	itemball SNES
	
PlayersHouse2FVoltorbDoll:
	itemball VOLTORB_DOLL
	
PlayersHouse2FUpgrade:
	itemball UP_GRADE
	
PlayersHouse2FBigLaprasDoll:
	itemball BIG_LAPRAS_DOLL
	
PlayersHouse2FUseless7:
	itemball BERRY

PlayersHouse2FUseless8:
	itemball POTION

PlayersRadioText1:
	text "PROF.OAK'S #MON"
	line "TALK! Please tune"
	cont "in next time!"
	done

PlayersRadioText2:
	text "#MON CHANNEL!"
	done

PlayersRadioText3:
	text "This is DJ MARY,"
	line "your co-host!"
	done

PlayersRadioText4:
	text "#MON!"
	line "#MON CHANNEL…"
	done

PlayersHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, PLAYERS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_UP, PlayersHousePCScript
	bg_event  3,  1, BGEVENT_READ, PlayersHouseRadioScript
	bg_event  5,  1, BGEVENT_READ, PlayersHouseBookshelfScript
	bg_event  6,  0, BGEVENT_IFSET, PosterScript

	def_object_events
	object_event  4,  2, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameConsoleScript, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  4,  4, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll1Script, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  5,  4, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll2Script, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  0,  1, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigDollScript, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PlayersHouse2FPikaPoster, EVENT_HOMEPIKAPOSTER
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PlayersHouse2FPPUp, EVENT_HOMEPPUP
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PlayersHouse2FSNES, EVENT_HOMESNES
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PlayersHouse2FVoltorbDoll, EVENT_HOMEVOLTORBDOLL
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PlayersHouse2FUpgrade, EVENT_HOMEUPGRADE
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PlayersHouse2FBigLaprasDoll, EVENT_HOMEBIGLAPRASDOLL
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PlayersHouse2FUseless7, EVENT_HOMEUSELESS7
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PlayersHouse2FUseless8, EVENT_HOMEUSELESS8
	