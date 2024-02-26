	object_const_def
	const VIRIDIANGYM_BLUE
	const VIRIDIANGYM_GYM_GUIDE

ViridianGym_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_DYLAN

	def_callbacks
	callback MAPCALLBACK_TILES, .GymLocked
	
.DummyScene0:
.DummyScene1:
	end
	
.GymLocked:
	checkevent EVENT_VIRIDIAN_GYM_BLUE
	iffalse .KeepOpen
	changeblock 4, 8, $d
.KeepOpen:
	endcallback

ViridianGymBlueScript:
	faceplayer
	opentext
	checkflag ENGINE_EARTHBADGE
	iftrue .FightDone
	writetext LeaderBlueBeforeText
	waitbutton
	closetext
	winlosstext LeaderBlueWinText, 0
	loadtrainer BLUE, BLUE1
	loadvar VAR_BATTLETYPE, BATTLETYPE_SET
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLUE
	clearevent EVENT_HOMEBIGONIXDOLL
	opentext
	writetext Text_ReceivedEarthBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
	writetext LeaderBlueAfterText
	waitbutton
	closetext
	end

.FightDone:
	checkevent EVENT_OPENED_RIGHTBB
	iffalse .FightDoneOak
	writetext LeaderBlueEpilogueText
	waitbutton
	closetext
	end

.FightDoneOak:
	writetext LeaderBlueEpilogueOakText
	waitbutton
	closetext
	end
	
DylanScene1:
	opentext
	writetext DylanText1
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 30
	waitbutton
	closetext
	moveobject VIRIDIANGYM_GYM_GUIDE, 5, 11
	appear VIRIDIANGYM_GYM_GUIDE
	playmusic MUSIC_CLAIR
	applymovement VIRIDIANGYM_GYM_GUIDE, DylanMovement1
	turnobject PLAYER, RIGHT
	sjump DylanBattleCommon
	
DylanScene2:
	opentext
	writetext DylanText1
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 30
	waitbutton
	closetext
	moveobject VIRIDIANGYM_GYM_GUIDE, 4, 11
	appear VIRIDIANGYM_GYM_GUIDE
	playmusic MUSIC_CLAIR
	applymovement VIRIDIANGYM_GYM_GUIDE, DylanMovement2
	turnobject PLAYER, LEFT
DylanBattleCommon:
	opentext
	writetext DylanText2
	waitbutton
	closetext
	setscene SCENE_FINISHED
	setevent EVENT_BEAT_DYLAN
	winlosstext DylanWinText, 0
	setlasttalked VIRIDIANGYM_GYM_GUIDE
	loadtrainer SUPER_NERD, DYLAN
	startbattle
	reloadmapafterbattle
	faceplayer
	opentext
	writetext DylanAfterBattleText
	waitbutton
	closetext
	end

ViridianGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLUE
	iftrue .ViridianGymGuideWinScript
	checkevent EVENT_BEAT_DYLAN
	iftrue .PostBattle
	writetext ViridianGymGuideText
	waitbutton
	closetext
	end

.ViridianGymGuideWinScript:
	writetext ViridianGymGuideWinText
	waitbutton
	closetext
	end
	
.PostBattle:
	writetext DylanAfterBattleText
	waitbutton
	closetext
	end

ViridianGymStatue:
	checkflag ENGINE_EARTHBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script

.Beaten:
	gettrainername STRING_BUFFER_4, BLUE, BLUE1
	jumpstd GymStatue2Script
	
DylanMovement1:
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end
	
DylanMovement2:
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end
	
DylanAfterBattleText:
	text "Uber strong!"

	para "Alright, here's a"
	line "tip, CHAMP."
	
	para "BLUE's first #-"
	line "MON was BLASTOISE."
	
	para "It's exceptionally"
	line "well-trained and"
	
	para "far faster than an"
	line "average BLASTOISE."
	
	para "Don't rely on one"
	line "#MON to take it"
	cont "down."
	
	para "I know you can do"
	line "it if you count on"
	cont "your team!"
	done

DylanWinText:
	text "Ergh!"
	done
	
DylanText1:
	text "Yo, CHAMP!"
	done
	
DylanText2:
	text "You're truly some-"
	line "thing else, aren't"
	cont "you?"

	para "Not only have you"
	line "dominated all of"
	cont "the GYMs in JOHTO,"
	
	para "but those in KANTO"
	line "as well."
	
	para "Well, almost."

	para "Before you take on"
	line "the former CHAMP,"
	
	para "I thought I'd give"
	line "you a little warm-"
	cont "up."
	
	para "I'm no pushover"
	line "myself!"
	done

LeaderBlueBeforeText:
	text "BLUE: Yo! Finally"
	line "got here, huh?"

	para "I wasn't in the"
	line "mood at CINNABAR,"

	para "but now I'm ready"
	line "to battle you."

	para "…"

	para "You're telling me"
	line "you conquered all"
	cont "the GYMS in JOHTO"
	cont "as well, is that"
	cont "right?"

	para "Heh! JOHTO's GYMs"
	line "must be pretty"
	cont "pathetic then."

	para "Hey, don't worry"
	line "about it."

	para "I'll know if you"
	line "are good or not by"

	para "battling you right"
	line "now."

	para "Ready, JOHTO"
	line "CHAMP?"
	done

LeaderBlueWinText:
	text "BLUE: What?"

	para "How the heck did I"
	line "lose to you?"

	para "…"

	para "Tch, all right…"
	line "Here, take this--"
	cont "it's EARTHBADGE."
	done

Text_ReceivedEarthBadge:
	text "<PLAYER> received"
	line "EARTHBADGE."
	done

LeaderBlueAfterText:
	text "BLUE: …"

	para "Alright, I was"
	line "wrong. You're the"

	para "real deal. You're"
	line "a good trainer."
	
	para "You know, you may"
	line "even give my rival"

	para "RED a run for his"
	line "money!"
	
	para "You should go see"
	line "my gramps, if you"
	cont "are interested."
	
	para "Speaking of RED, I"
	line "left something for"
	cont "him in his room."
	
	para "I bet he never got"
	line "around to opening"
	cont "the gift!"
	
	para "Why don't you go"
	line "ahead and grab it?"
	
	para "No point letting"
	line "it sit there and"
	cont "collect dust."
	
	para "But I'm going to"
	line "beat you someday."

	para "Don't you forget"
	line "it!"
	done

LeaderBlueEpilogueText:
	text "BLUE: Listen, you."

	para "You'd better not"
	line "lose until I beat"
	cont "you. Got it?"
	done
	
LeaderBlueEpilogueOakText:
	text "BLUE: Listen, you."

	para "You'd better not"
	line "lose until I beat"
	cont "you. Got it?"
	
	para "And don't forget"
	line "to give my gramps"
	cont "a visit!"
	done

ViridianGymGuideText:
	text "Yo, CHAMP in"
	line "making!"

	para "How's it going?"
	line "Looks like you're"
	cont "on a roll."
	
	para "What? You were the"
	line "the CHAMP before"
	cont "arriving in KANTO?"
	
	para "Why didn't you say"
	line "something?"
	
	para "I'm embarrassed, to"
	line "say the least."

	para "Anyway, the LEADER"
	line "of this GYM became"

	para "the CHAMPION three"
	line "years ago."

	para "He's no pushover."

	para "Give it everything"
	line "you've got!"
	done

ViridianGymGuideWinText:
	text "Wow, you are truly"
	line "tough…"

	para "That was a heck of"
	line "an inspirational"

	para "battle. It brought"
	line "tears to my eyes."
	done

ViridianGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, VIRIDIAN_CITY, 1
	warp_event  5, 17, VIRIDIAN_CITY, 1

	def_coord_events
	coord_event  4,  6, SCENE_DEFAULT, DylanScene1
	coord_event  5,  6, SCENE_DEFAULT, DylanScene2

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, ViridianGymStatue
	bg_event  6, 13, BGEVENT_READ, ViridianGymStatue

	def_object_events
	object_event  5,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianGymBlueScript, EVENT_VIRIDIAN_GYM_BLUE
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianGymGuideScript, EVENT_VIRIDIAN_GYM_BLUE
