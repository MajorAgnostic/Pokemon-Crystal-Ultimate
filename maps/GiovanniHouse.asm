	object_const_def
	const GIOVANNIHOUSE_GIOVANNI
	const GIOVANNIHOUSE_CELEBI

GiovanniHouse_MapScripts:
	def_scene_scripts
	scene_script .GiovanniHouse ; SCENE_GIOVANNIHOUSE

	def_callbacks

.GiovanniHouse:
	pause 30
	turnobject PLAYER, RIGHT
	pause 30
	turnobject PLAYER, LEFT
	pause 30
	applymovement PLAYER, GiovanniHouse_PlayerMovementData
	turnobject PLAYER, UP
	pause 20
	turnobject GIOVANNIHOUSE_GIOVANNI, DOWN
	showemote EMOTE_SHOCK, GIOVANNIHOUSE_GIOVANNI, 20
	opentext
	writetext GiovanniHouseIntroText
	waitbutton
	closetext
	playmusic MUSIC_ROCKET_OVERTURE
	pause 30
	turnobject GIOVANNIHOUSE_GIOVANNI, LEFT
	opentext
	writetext BroadcastText
	waitbutton
	closetext
	turnobject GIOVANNIHOUSE_GIOVANNI, DOWN
	opentext
	writetext GiovanniHouseText2
	waitbutton
	closetext
	turnobject GIOVANNIHOUSE_GIOVANNI, UP
	pause 30
	opentext
	writetext GiovanniHouseText3
	waitbutton
	closetext
	pause 30
	turnobject GIOVANNIHOUSE_GIOVANNI, DOWN
	pause 20
	opentext
	writetext GiovanniHouseText4
	waitbutton
	closetext
	special FadeOutMusic
	playsound SFX_ENTER_DOOR
	special FadeBlackQuickly
	pause 30
	special ReloadSpritesNoPalettes
	disappear GIOVANNIHOUSE_GIOVANNI
	special FadeInQuickly
	waitsfx
	special RestartMapMusic
	pause 30
	turnobject PLAYER, RIGHT
	pause 30
	playsound SFX_GAME_FREAK_LOGO_GS
	pause 30
	opentext
	writetext CelebiGHCryText
	cry CELEBI
	waitbutton
	closetext
	pause 15
	playsound SFX_GAME_FREAK_LOGO_GS
	special FadeOutPalettes
	waitsfx
	warp NEW_BARK_TOWN, 6, 4
	end
	
GiovanniHouse_PlayerMovementData:
	slow_step LEFT
	slow_step LEFT
	step_end

GiovanniHouseIntroText:
	text "…Hm?"

	para "I don't know why"
	line "you came here,"

	para "but I have to warn"
	line "you that this is"
	cont "no place for kids"
	cont "like you."
	
	para "…"

	para "You have a certain"
	line "look…"

	para "That kid three"
	line "years ago kept"
	cont "ruining our plans,"

	para "and you remind me"
	line "of him."
	
	para "Are you going to"
	line "get in my way?"
	
	para "TEAM ROCKET has"
	line "returned, and I'm"
	cont "its former boss,"
	cont "GIOVANNI."
	done
	
BroadcastText:
	text "“… …Ahem, we are"
	line "TEAM ROCKET!"
	cont "After three years"
	cont "of preparation, we"
	cont "have risen again"
	cont "from the ashes!"
	cont "The RADIO TOWER is"
	cont "ours!"
	
	para "GIOVANNI! Can you"
	line "hear? We did it!"
	cont "Where is our boss?"
	cont "Is he listening?”"
	done
	
GiovanniHouseText2:
	text "GIOVANNI: My old"
	line "associates seek"
	cont "me out…"

	para "But don't worry,"
	line "child."
	
	para "I will not join"
	line "them this time."
	
	para "I'm proud of my"
	line "subordinates'"
	cont "devotion, but I"
	cont "have greater plans"
	cont "in store for the"
	cont "world."
	done
	
GiovanniHouseText3:
	text "…"
	
	para "<RIVAL>, you will"
	line "soon understand"
	
	para "what I said to you"
	line "three years ago."
	
	para "About what power"
	line "truly is…"
	done
	
GiovanniHouseText4:
	text "…Ahem."
	
	para "In any case, you"
	line "should stay out of"
	cont "the way."
	
	para "Never forget that"
	line "all #MON exist"
	cont "for TEAM ROCKET!"
	
	para "Now, there is much"
	line "to be done…"
	done
	
CelebiGHCryText:
	text "Celebiiiii!"
	done

GiovanniHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_HAT_GIOVANNI, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, GiovanniHouse_PlayerMovementData, -1
	object_event  5,  1, SPRITE_CELEBI, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GiovanniHouse_PlayerMovementData, -1
