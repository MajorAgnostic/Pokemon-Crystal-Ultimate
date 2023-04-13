	object_const_def
	const HALLOFFAME_LANCE

HallOfFame_MapScripts:
	def_scene_scripts
	scene_script .EnterHallOfFame ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks

.EnterHallOfFame:
	prioritysjump .EnterHallOfFameScript
	end

.DummyScene:
	end

.EnterHallOfFameScript:
	readvar VAR_BADGES
	ifequal 16, .REMATCH
	turnobject PLAYER, RIGHT
	follow HALLOFFAME_LANCE, PLAYER
	applymovement HALLOFFAME_LANCE, HallOfFame_WalkUpWithLance
	stopfollow
	opentext
	writetext HallOfFame_LanceText
	waitbutton
	closetext
	turnobject HALLOFFAME_LANCE, UP
	applymovement PLAYER, HallOfFame_SlowlyApproachMachine
	setscene SCENE_FINISHED
	pause 15
	setval HEALMACHINE_HALL_OF_FAME
	special HealMachineAnim
	setevent EVENT_BEAT_ELITE_FOUR
	clearevent EVENT_HOMEBIGLAPRASDOLL
	setevent EVENT_TELEPORT_GUY
	setevent EVENT_RIVAL_SPROUT_TOWER
	setevent EVENT_OLIVINE_PORT_SPRITES_BEFORE_HALL_OF_FAME
	clearevent EVENT_OLIVINE_PORT_SPRITES_AFTER_HALL_OF_FAME
	clearevent EVENT_NO_E4_REMATCH
	setevent EVENT_E4_MART
	setmapscene SPROUT_TOWER_3F, SCENE_FINISHED
	special HealParty
	special UnlockMysteryGift
	halloffame
	end
	
.REMATCH:
	pause 15
	turnobject HALLOFFAME_LANCE, DOWN
	opentext
	writetext HallOfFame_LanceText2
	waitbutton
	closetext
	follow HALLOFFAME_LANCE, PLAYER
	applymovement HALLOFFAME_LANCE, HallOfFame_WalkUpWithLance
	stopfollow
	turnobject PLAYER, RIGHT
	opentext
	writetext HallOfFame_LanceText3
	waitbutton
	closetext
	turnobject HALLOFFAME_LANCE, UP
	applymovement PLAYER, HallOfFame_SlowlyApproachMachine
	setscene SCENE_FINISHED
	pause 15
	setval HEALMACHINE_HALL_OF_FAME
	special HealMachineAnim
	setevent EVENT_OPENED_MT_SILVER
	clearevent EVENT_RED_IN_MT_SILVER
	special HealParty
	halloffame
	end

HallOfFame_WalkUpWithLance:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

HallOfFame_SlowlyApproachMachine:
	slow_step UP
	step_end

HallOfFame_LanceText:
	text "LANCE: It's been a"
	line "long time since I"
	cont "last came here."

	para "This is where we"
	line "honor the LEAGUE"

	para "CHAMPIONS for all"
	line "eternity."

	para "Their courageous"
	line "#MON are also"
	cont "inducted."

	para "Here today, we"
	line "witnessed the rise"

	para "of a new LEAGUE"
	line "CHAMPION--a"

	para "trainer who feels"
	line "compassion for"

	para "and trust toward"
	line "all #MON."

	para "A trainer who"
	line "succeeded through"

	para "perseverance and"
	line "determination."

	para "The new LEAGUE"
	line "CHAMPION who has"

	para "all the makings"
	line "of greatness!"
	
	para "From now on, your"
	line "#MON will know"
	
	para "no bounds in their"
	line "growth alongside"
	cont "you."

	para "<PLAY_G>, allow me"
	line "to register you"

	para "and your partners"
	line "as CHAMPIONS!"
	done
	
HallOfFame_LanceText2:
	text "LANCE: <PLAY_G>!"
	
	para "Congratulations"
	line "on defeating the"

	para "LEAGUE CHAMPION"
	line "once again!"
	
	para "It's good to see"
	line "you after such a"
	cont "long time."
	done
	
HallOfFame_LanceText3:
	text "It has not been"
	line "very long since I"

	para "last entered this"
	line "room, but I still"
	
	para "get chills every"
	line "time…"
	
	para "Oh, right! PROF."
	line "OAK wanted me to"
	
	para "allow you entry"
	line "into MT.SILVER."
	
	para "Although I am no"
	line "longer the LEAGUE"
	
	para "CHAMPION, I've de-"
	line "cided to help out"
	cont "with logistics."
	
	para "I will arrange for"
	line "the MT.SILVER gu-"
	
	para "ard to grant you"
	line "passage, but you"
	
	para "must tread with"
	line "caution."
	
	para "The MT.SILVER and"
	line "SILVER CAVE areas"
	
	para "are fraught with"
	line "peril."
	
	para "Even the most sea-"
	line "soned of trainers"
	cont "must be wary."
	
	para "But nevermind that"
	line "right now."
	
	para "This is a moment"
	line "of celebration!"
	
	para "Let's register the"
	line "#MON that stood"
	
	para "by your side into"
	line "the HALL OF FAME!"
	done

HallOfFame_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, LANCES_ROOM, 3
	warp_event  5, 13, LANCES_ROOM, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 12, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
