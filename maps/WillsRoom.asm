	object_const_def
	const WILLSROOM_WILL

WillsRoom_MapScripts:
	def_scene_scripts
	scene_script .LockDoor, SCENE_WILLSROOM_LOCK_DOOR
	scene_script .DummyScene, SCENE_WILLSROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, .WillsRoomDoors

.LockDoor:
	prioritysjump .WillsDoorLocksBehindYou
	end

.DummyScene:
	end

.WillsRoomDoors:
	checkevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 14, $2a ; wall
.KeepEntranceOpen:
	checkevent EVENT_WILLS_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 2, $16 ; open door
.KeepExitClosed:
	endcallback

.WillsDoorLocksBehindYou:
	applymovement PLAYER, WillsRoom_EnterMovement
	refreshscreen $86
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a ; wall
	reloadmappart
	closetext
	setscene SCENE_WILLSROOM_NOOP
	setevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

WillScript_Battle:
	readvar VAR_BADGES
	ifequal 16, .REMATCH
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_WILL
	iftrue WillScript_AfterBattle
	writetext WillScript_WillBeforeText
	waitbutton
	closetext
	winlosstext WillScript_WillBeatenText, 0
	loadtrainer WILL, WILL1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_WILL
	opentext
	writetext WillScript_WillDefeatText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_WILLS_ROOM_EXIT_OPEN
	waitsfx
	end

.REMATCH:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_4_WILL
	iftrue WillScript_AfterBattle2
	writetext WillScript_WillRematchText
	waitbutton
	closetext
	winlosstext WillScript_WillBeatenText, 0
	loadtrainer WILL, WILL2
	loadvar VAR_BATTLETYPE, BATTLETYPE_SET
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ELITE_4_WILL
	opentext
	writetext WillScript_WillDefeatText2
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16 ; open door
	reloadmappart
	closetext
	setevent EVENT_WILLS_ROOM_EXIT_OPEN
	waitsfx
	end

WillScript_AfterBattle:
	writetext WillScript_WillDefeatText
	waitbutton
	closetext
	end

WillScript_AfterBattle2:
	writetext WillScript_WillDefeatText2
	waitbutton
	closetext
	end

WillsRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

WillScript_WillBeforeText:
	text "Welcome to the"
	line "#MON LEAGUE," 
	cont "<PLAYER>."

	para "Allow me to intro-"
	line "duce myself. I am"
	cont "WILL."

	para "I have trained all"
	line "around the world,"

	para "making my psychic"
	line "#MON powerful."

	para "And, at last, I've"
	line "been accepted into"
	cont "the ELITE FOUR."

	para "I can only keep"
	line "getting better!"

	para "Losing is not an"
	line "option!"
	done

WillScript_WillRematchText:
	text "Welcome back,"
	line "CHAMPION, to the"
	cont "#MON LEAGUE."

	para "I have carefully"
	line "studied tactical"
	
	para "data and have put"
	line "my findings into"
	cont "practice."

	para "I have also added"
	line "new #MON to my"
	cont "psychic team."

	para "This time, things"
	line "will be different."
	
	para "Heed my call,"
	line "LUGIA!"
	done

WillScript_WillBeatenText:
	text "I… I can't…"
	line "believe it…"
	done

WillScript_WillDefeatText:
	text "Even though I was"
	line "defeated, I won't"
	cont "change my course."

	para "I will continue"
	line "battling until I"

	para "stand above all"
	line "trainers!"

	para "Now, <PLAYER>, move"
	line "on and experience"

	para "the true ferocity"
	line "of the ELITE FOUR."
	done

WillScript_WillDefeatText2:
	text "Whew, I've expended"
	line "all my power and"
	
	para "it still wasn't"
	line "enough to win."

	para "You've shown your-"
	line "self to be a truly"
	cont "mighty foe."

	para "<PLAYER>, I will"
	line "reflect on our ex-"
	
	para "perience and forge"
	line "a new path for my"
	cont "#MON."

	para "Never forget the"
	line "spirit of the"
	cont "ELITE FOUR!"
	done

WillsRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 17, INDIGO_PLATEAU_POKECENTER_1F, 4
	warp_event  4,  2, KOGAS_ROOM, 1
	warp_event  5,  2, KOGAS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WillScript_Battle, -1
