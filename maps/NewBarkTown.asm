	object_const_def
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_SILVER
	const NEWBARKTOWN_MOM

NewBarkTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU
	scene_script .DummyScene1, SCENE_NEWBARKTOWN_FISHER

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	endcallback

NewBarkTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherRunsToYou1_NBT
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherBringsYouBack1_NBT
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

NewBarkTown_TeacherStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherRunsToYou2_NBT
	turnobject PLAYER, UP
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow NEWBARKTOWN_TEACHER, PLAYER
	applymovement NEWBARKTOWN_TEACHER, Movement_TeacherBringsYouBack2_NBT
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end
	
NewBarkTown_FisherStopsYouScene1:
	checkevent EVENT_HOMEUPGRADE
	iftrue .End
	checkflag ENGINE_RISINGBADGE
	iffalse .End
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_FISHER, RIGHT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement NEWBARKTOWN_FISHER, Movement_FisherRunsToYou1_NBT
	opentext
	writetext Text_EightBadges
	waitbutton
	closetext
	follow NEWBARKTOWN_FISHER, PLAYER
	applymovement NEWBARKTOWN_FISHER, Movement_FisherBringsYouBack1_NBT
	stopfollow
	opentext
	writetext Text_BeforeYouGo
	waitbutton
	closetext
	special RestartMapMusic
	end
	
.End:
	end
	
NewBarkTown_FisherStopsYouScene2:
	checkevent EVENT_HOMEUPGRADE
	iftrue .End
	checkflag ENGINE_RISINGBADGE
	iffalse .End
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_FISHER, RIGHT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	applymovement NEWBARKTOWN_FISHER, Movement_FisherRunsToYou2_NBT
	opentext
	writetext Text_EightBadges
	waitbutton
	closetext
	follow NEWBARKTOWN_FISHER, PLAYER
	applymovement NEWBARKTOWN_FISHER, Movement_FisherBringsYouBack2_NBT
	stopfollow
	opentext
	writetext Text_BeforeYouGo
	waitbutton
	closetext
	special RestartMapMusic
	end
	
.End:
	end
	
NewBarkTown_FisherStopsYouScene3:
	checkevent EVENT_HOMEUPGRADE
	iftrue .End
	checkflag ENGINE_RISINGBADGE
	iffalse .End
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_FISHER, RIGHT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	applymovement NEWBARKTOWN_FISHER, Movement_FisherRunsToYou3_NBT
	turnobject PLAYER, DOWN
	opentext
	writetext Text_EightBadges
	waitbutton
	closetext
	follow NEWBARKTOWN_FISHER, PLAYER
	applymovement NEWBARKTOWN_FISHER, Movement_FisherBringsYouBack3_NBT
	stopfollow
	opentext
	writetext Text_BeforeYouGo
	waitbutton
	closetext
	special RestartMapMusic
	end
	
.End:
	end
	
NewBarkTown_FisherStopsYouScene4:
	checkevent EVENT_HOMEUPGRADE
	iftrue .End
	checkflag ENGINE_RISINGBADGE
	iffalse .End
	playmusic MUSIC_MOM
	turnobject NEWBARKTOWN_FISHER, RIGHT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	applymovement NEWBARKTOWN_FISHER, Movement_FisherRunsToYou4_NBT
	opentext
	writetext Text_EightBadges
	waitbutton
	closetext
	follow NEWBARKTOWN_FISHER, PLAYER
	applymovement NEWBARKTOWN_FISHER, Movement_FisherBringsYouBack4_NBT
	stopfollow
	opentext
	writetext Text_BeforeYouGo
	waitbutton
	closetext
	special RestartMapMusic
	end
	
.End:
	end

NewBarkTownTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .CallMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

.TellMomYoureLeaving:
	writetext Text_TellMomIfLeaving
	waitbutton
	closetext
	end

.CallMom:
	writetext Text_CallMomOnGear
	waitbutton
	closetext
	end

NewBarkTownFisherScript:
	jumptextfaceplayer Text_ElmDiscoveredNewMon

NewBarkTownSilverScript:
	opentext
	writetext NewBarkTownRivalText1
	waitbutton
	closetext
	turnobject NEWBARKTOWN_SILVER, LEFT
	opentext
	writetext NewBarkTownRivalText2
	waitbutton
	closetext
	follow PLAYER, NEWBARKTOWN_SILVER
	applymovement PLAYER, Movement_SilverPushesYouAway_NBT
	stopfollow
	pause 5
	turnobject NEWBARKTOWN_SILVER, DOWN
	pause 5
	playsound SFX_TACKLE
	applymovement PLAYER, Movement_SilverShovesYouOut_NBT
	applymovement NEWBARKTOWN_SILVER, Movement_SilverReturnsToTheShadows_NBT
	end

NewBarkTownSign:
	jumptext NewBarkTownSignText

NewBarkTownPlayersHouseSign:
	jumptext NewBarkTownPlayersHouseSignText

NewBarkTownElmsLabSign:
	jumptext NewBarkTownElmsLabSignText

NewBarkTownElmsHouseSign:
	jumptext NewBarkTownElmsHouseSignText

Movement_TeacherRunsToYou1_NBT:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Movement_TeacherRunsToYou2_NBT:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

Movement_TeacherBringsYouBack1_NBT:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

Movement_TeacherBringsYouBack2_NBT:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end
	
Movement_FisherRunsToYou1_NBT:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step UP
	step UP
	step_end
	
Movement_FisherBringsYouBack1_NBT:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end
	
Movement_FisherRunsToYou2_NBT:
	step RIGHT
	turn_head UP
	step UP
	step UP
	turn_head RIGHT
	step RIGHT
	step RIGHT
	step_end
	
Movement_FisherBringsYouBack2_NBT:
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end
	
Movement_FisherRunsToYou3_NBT:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end
	
Movement_FisherBringsYouBack3_NBT:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head RIGHT
	step_end
	
Movement_FisherRunsToYou4_NBT:
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
Movement_FisherBringsYouBack4_NBT:
	step LEFT
	step LEFT
	step LEFT
	turn_head RIGHT
	step_end

Movement_SilverPushesYouAway_NBT:
	turn_head UP
	step DOWN
	step_end

Movement_SilverShovesYouOut_NBT:
	turn_head UP
	fix_facing
	jump_step DOWN
	remove_fixed_facing
	step_end

Movement_SilverReturnsToTheShadows_NBT:
	step RIGHT
	step_end

Text_GearIsImpressive:
	text "Wow, your #GEAR"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

Text_WaitPlayer:
	text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done
	
Text_EightBadges:
	text "Before you leave"
	line "to face the ELITE"
	
	para "FOUR, be sure to"
	line "go home. Your MOM"

	para "left a surprise"
	line "for you in your"
	cont "room!"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "Wild #MON"
	line "jump out of the"

	para "grass on the way"
	line "to the next town."
	done
	
Text_BeforeYouGo:
	text "Oh, and congrats"
	line "on obtaining all"
	cont "GYM BADGES!"

	para "That's quite an"
	line "accomplishment!"
	done

Text_YourMonIsAdorable:
	text "Oh! Your #MON"
	line "is adorable!"
	cont "I wish I had one!"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAY_G>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #GEAR to"

	para "let her know how"
	line "you're doing."
	done

Text_ElmDiscoveredNewMon:
	text "Yo, <PLAYER>!"

	para "I hear PROF.ELM"
	line "discovered some"
	cont "new #MON."
	done

NewBarkTownRivalText1:
	text "<……>"

	para "So this is the"
	line "famous ELM #MON"
	cont "LAB…"
	done

NewBarkTownRivalText2:
	text "…What are you"
	line "staring at?"
	done

NewBarkTownSignText:
	text "NEW BARK TOWN"

	para "The Town Where the"
	line "Winds of a New"
	cont "Beginning Blow"
	done

NewBarkTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

NewBarkTownElmsLabSignText:
	text "ELM #MON LAB"
	done

NewBarkTownElmsHouseSignText:
	text "ELM'S HOUSE"
	done

NewBarkTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  3, ELMS_LAB, 1
	warp_event 13,  5, PLAYERS_HOUSE_1F, 1
	warp_event  3, 11, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 11, 13, ELMS_HOUSE, 1

	def_coord_events
	coord_event  1,  8, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU, NewBarkTown_TeacherStopsYouScene1
	coord_event  1,  9, SCENE_NEWBARKTOWN_TEACHER_STOPS_YOU, NewBarkTown_TeacherStopsYouScene2
	coord_event 16,  6, SCENE_NEWBARKTOWN_FISHER, NewBarkTown_FisherStopsYouScene1
	coord_event 16,  7, SCENE_NEWBARKTOWN_FISHER, NewBarkTown_FisherStopsYouScene2
	coord_event 16,  8, SCENE_NEWBARKTOWN_FISHER, NewBarkTown_FisherStopsYouScene3
	coord_event 16,  9, SCENE_NEWBARKTOWN_FISHER, NewBarkTown_FisherStopsYouScene4

	def_bg_events
	bg_event  8,  8, BGEVENT_READ, NewBarkTownSign
	bg_event 11,  5, BGEVENT_READ, NewBarkTownPlayersHouseSign
	bg_event  3,  3, BGEVENT_READ, NewBarkTownElmsLabSign
	bg_event  9, 13, BGEVENT_READ, NewBarkTownElmsHouseSign

	def_object_events
	object_event  6,  8, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	object_event 12,  9, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkTownFisherScript, -1
	object_event  3,  2, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownSilverScript, EVENT_RIVAL_NEW_BARK_TOWN
