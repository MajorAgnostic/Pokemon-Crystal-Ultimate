	object_const_def
	const TINTOWERROOF_HO_OH
	const TINTOWERROOF_MORTY

TinTowerRoof_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0, SCENE_TIN
	scene_script .DummyScene1, SCENE_TIN_MORTY

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .HoOh
	
.DummyScene0:
.DummyScene1:
	end

.HoOh:
	checkevent EVENT_FOUGHT_HO_OH
	iftrue .NoAppear
	checkitem RAINBOW_WING
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear TINTOWERROOF_HO_OH
	endcallback

.NoAppear:
	disappear TINTOWERROOF_HO_OH
	endcallback
	
Tin_MortyScene1:
	turnobject PLAYER, DOWN
	special FadeOutMusic
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 20
	playsound SFX_ENTER_DOOR
	appear TINTOWERROOF_MORTY
	applymovement TINTOWERROOF_MORTY, MortyMovement1a
	turnobject TINTOWERROOF_MORTY, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext MortyBeforeText
	waitbutton
	closetext
	winlosstext MortyBeatenText, 0
	setlasttalked TINTOWERROOF_MORTY
	loadtrainer MORTY2, MORTY2A
	loadvar VAR_BATTLETYPE, BATTLETYPE_SET
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	setevent EVENT_TIN_MORTY
	setscene SCENE_TIN_MORTY
	opentext
	writetext MortyAfterText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement TINTOWERROOF_MORTY, MortyMovement2a
	playsound SFX_EXIT_BUILDING
	disappear TINTOWERROOF_MORTY
	pause 20
	end
	
Tin_MortyScene2:
	turnobject PLAYER, DOWN
	special FadeOutMusic
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 20
	playsound SFX_ENTER_DOOR
	appear TINTOWERROOF_MORTY
	applymovement TINTOWERROOF_MORTY, MortyMovement1b
	opentext
	writetext MortyBeforeText
	waitbutton
	closetext
	winlosstext MortyBeatenText, 0
	setlasttalked TINTOWERROOF_MORTY
	loadtrainer MORTY2, MORTY2A
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	setevent EVENT_TIN_MORTY
	setscene SCENE_TIN_MORTY
	opentext
	writetext MortyAfterText
	waitbutton
	closetext
	applymovement TINTOWERROOF_MORTY, MortyMovement2b
	playsound SFX_EXIT_BUILDING
	disappear TINTOWERROOF_MORTY
	pause 20
	end

TinTowerHoOh:
	faceplayer
	opentext
	writetext HoOhText
	cry HO_OH
	pause 15
	closetext
	setevent EVENT_FOUGHT_HO_OH
	loadvar VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon HO_OH, 90
	startbattle
	disappear TINTOWERROOF_HO_OH
	reloadmapafterbattle
	setevent EVENT_SET_WHEN_FOUGHT_HO_OH
	end
	
MortyMovement1a:
	slow_step UP
	slow_step UP
	slow_step UP
	slow_step UP
	step_end
	
MortyMovement1b:
	slow_step UP
	slow_step UP
	slow_step UP
	step_end
	
MortyMovement2a:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end
	
MortyMovement2b:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end

MortyBeforeText:
	text "MORTY: <PLAYER>, I"
	line "have been waiting"

	para "my whole life for"
	line "this moment."
	
	para "The legendary HO-"
	line "OH has finally"
	
	para "returned to its"
	line "roost."
	
	para "I realize that you"
	line "also worked very"
	
	para "hard to reach this"
	line "point."
	
	para "You've changed a"
	line "lot since you cha-"

	para "llenged me at the"
	line "ECRUTEAK GYM,"
	cont "haven't you?"
	
	para "Well, I won't be"
	line "challenging you as"
	
	para "a GYM LEADER this"
	line "time."
	
	para "I intend to take"
	line "you on with all of"
	
	para "my strength as a"
	line "trainer."
	
	para "Let us battle here"
	line "at the top of the"

	para "glorious TIN TOWER"
	line "and decide who is"
	
	para "worthy of facing"
	line "HO-OH!"
	done

MortyBeatenText:
	text "I can't believe…"
	
	para "…what is it that I"
	line "lack?"
	done

MortyAfterText:
	text "So that's how it"
	line "is then."

	para "<PLAYER>, you know"
	line "what to do now."
	
	para "I have nothing"
	line "more to say."

	para "Best of luck."
	done

HoOhText:
	text "Shaoooh!"
	done

TinTowerRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 13, TIN_TOWER_9F, 4

	def_coord_events
	coord_event  8,  9, SCENE_TIN, Tin_MortyScene1
	coord_event  9,  9, SCENE_TIN, Tin_MortyScene2

	def_bg_events

	def_object_events
	object_event  9,  5, SPRITE_HO_OH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TinTowerHoOh, EVENT_TIN_TOWER_ROOF_HO_OH
	object_event  9, 13, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GOT_RAINBOW_WING
