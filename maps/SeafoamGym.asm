	object_const_def
	const SEAFOAMGYM_BLAINE
	const SEAFOAMGYM_GYM_GUIDE
	const SEAFOAMGYM_SCIENTIST1
	const SEAFOAMGYM_SCIENTIST2
	const SEAFOAMGYM_SCIENTIST3
	const SEAFOAMGYM_SCIENTIST4
	const SEAFOAMGYM_SCIENTIST5
	const SEAFOAMGYM_SCIENTIST6
	const SEAFOAMGYM_SCIENTIST7
	const SEAFOAMGYM_SCIENTIST8
	const SEAFOAMGYM_SCIENTIST9
	const SEAFOAMGYM_SCIENTIST10
	const SEAFOAMGYM_SCIENTIST11
	const SEAFOAMGYM_SCIENTIST12
	const SEAFOAMGYM_SCIENTIST13
	const SEAFOAMGYM_SCIENTIST14

SeafoamGym_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0, SCENE_SEAFOAM_DEFAULT
	scene_script .DummyScene1, SCENE_QUIZ2
	scene_script .DummyScene2, SCENE_QUIZ3
	scene_script .DummyScene3, SCENE_QUIZ4
	scene_script .DummyScene4, SCENE_QUIZ5

	def_callbacks
	
.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end
	
QuizScientist1Scene:
	turnobject PLAYER, LEFT
QuizScientist1:
	faceplayer
	opentext
	checkevent EVENT_QUIZ1
	iftrue .DoneQuiz
	checkevent EVENT_QUIZ1_WRONG
	iftrue .CannotProceed
	writetext QuizText1
	promptbutton
	loadmenu Question1_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .WrongAnswer
	ifequal 2, .CorrectAnswer
	ifequal 3, .WrongAnswer
.CorrectAnswer:
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext QuizCorrectText
	promptbutton
	setevent EVENT_QUIZ1
	setscene SCENE_QUIZ2
.DoneQuiz:
	writetext QuizProceedText
	waitbutton
	closetext
	end

.WrongAnswer:
	playsound SFX_WRONG
	setevent EVENT_QUIZ1_WRONG
	writetext QuizWrongText
	waitbutton
	closetext
	applymovement PLAYER, MoveUp
	end
	
.CannotProceed:
	writetext QuizCannotProceedText
	waitbutton
	closetext
	applymovement PLAYER, MoveUp
	end
	
QuizScientist2Scene2:
	applymovement PLAYER, MoveUp
QuizScientist2Scene:
	turnobject PLAYER, UP
QuizScientist2:
	faceplayer
	opentext
	checkevent EVENT_QUIZ2
	iftrue .DoneQuiz
	checkevent EVENT_QUIZ2_WRONG
	iftrue .CannotProceed
	writetext QuizText2
	yesorno
	iffalse .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext QuizCorrectText
	promptbutton
	setevent EVENT_QUIZ2
	setscene SCENE_QUIZ3
.DoneQuiz:
	writetext QuizProceedText
	waitbutton
	closetext
	end

.WrongAnswer:
	playsound SFX_WRONG
	setevent EVENT_QUIZ2_WRONG
	writetext QuizWrongText
	waitbutton
	closetext
	applymovement PLAYER, MoveRight
	end
	
.CannotProceed:
	writetext QuizCannotProceedText
	waitbutton
	closetext
	applymovement PLAYER, MoveRight
	end
	
QuizScientist3Scene2:
	applymovement PLAYER, MoveUp
QuizScientist3Scene:
	turnobject PLAYER, UP
QuizScientist3:
	faceplayer
	opentext
	checkevent EVENT_QUIZ3
	iftrue .DoneQuiz
	checkevent EVENT_QUIZ3_WRONG
	iftrue .CannotProceed
	writetext QuizText3
	yesorno
	iffalse .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext QuizCorrectText
	promptbutton
	setevent EVENT_QUIZ3
	setscene SCENE_QUIZ4
.DoneQuiz:
	writetext QuizProceedText
	waitbutton
	closetext
	end

.WrongAnswer:
	playsound SFX_WRONG
	setevent EVENT_QUIZ3_WRONG
	writetext QuizWrongText
	waitbutton
	closetext
	applymovement PLAYER, MoveRight
	end
	
.CannotProceed:
	writetext QuizCannotProceedText
	waitbutton
	closetext
	applymovement PLAYER, MoveRight
	end

QuizScientist4Scene2:
	applymovement PLAYER, MoveLeft
QuizScientist4Scene:
	turnobject PLAYER, LEFT
QuizScientist4:
	faceplayer
	opentext
	checkevent EVENT_QUIZ4
	iftrue .DoneQuiz
	checkevent EVENT_QUIZ4_WRONG
	iftrue .CannotProceed
	writetext QuizText4
	promptbutton
	loadmenu Question4_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .CorrectAnswer
	ifequal 2, .WrongAnswer
	ifequal 3, .WrongAnswer
.CorrectAnswer:
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext QuizCorrectText
	promptbutton
	setevent EVENT_QUIZ4
	setscene SCENE_QUIZ5
.DoneQuiz:
	writetext QuizProceedText
	waitbutton
	closetext
	end

.WrongAnswer:
	playsound SFX_WRONG
	setevent EVENT_QUIZ4_WRONG
	writetext QuizWrongText
	waitbutton
	closetext
	applymovement PLAYER, MoveDown
	end
	
.CannotProceed:
	writetext QuizCannotProceedText
	waitbutton
	closetext
	applymovement PLAYER, MoveDown
	end
	
QuizScientist5Scene2:
	applymovement PLAYER, MoveUp
QuizScientist5Scene:
	turnobject PLAYER, UP
QuizScientist5:
	faceplayer
	opentext
	checkevent EVENT_QUIZ5
	iftrue .DoneQuiz
	checkevent EVENT_QUIZ5_WRONG
	iftrue .CannotProceed
	writetext QuizText5
	promptbutton
	loadmenu Question5_MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .WrongAnswer
	ifequal 2, .WrongAnswer
	ifequal 3, .CorrectAnswer
	ifequal 4, .WrongAnswer
.CorrectAnswer:
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext QuizCorrectText
	promptbutton
	setevent EVENT_QUIZ5
	setscene SCENE_FINISHED
.DoneQuiz:
	writetext QuizProceedText
	waitbutton
	closetext
	end

.WrongAnswer:
	playsound SFX_WRONG
	setevent EVENT_QUIZ5_WRONG
	writetext QuizWrongText
	waitbutton
	closetext
	applymovement PLAYER, MoveLeft
	end
	
.CannotProceed:
	writetext QuizCannotProceedText
	waitbutton
	closetext
	applymovement PLAYER, MoveLeft
	end

SeafoamGymBlaineScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .AfterTM
	writetext BlaineIntroText
	waitbutton
	closetext
	winlosstext BlaineWinLossText, 0
	loadtrainer BLAINE, BLAINE1
	loadvar VAR_BATTLETYPE, BATTLETYPE_SET
	startbattle
	iftrue .ReturnAfterBattle
	appear SEAFOAMGYM_GYM_GUIDE
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	opentext
	writetext ReceivedVolcanoBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
	setevent EVENT_BEAT_LOWELL
	setevent EVENT_BEAT_DANIEL
	setevent EVENT_BEAT_CARY
	setevent EVENT_BEAT_LINDEN
	setevent EVENT_BEAT_OSCAR
	setevent EVENT_BEAT_WALDO
	setevent EVENT_BEAT_MERLE
	setevent EVENT_BEAT_EINSTEIN
	setevent EVENT_QUIZ1
	setevent EVENT_QUIZ2
	setevent EVENT_QUIZ3
	setevent EVENT_QUIZ4
	setevent EVENT_QUIZ5
	setscene SCENE_FINISHED
	writetext BlaineAfterBattleText
	promptbutton
	verbosegiveitem TM_FIRE_BLAST
	iffalse .AfterTM
	setevent EVENT_FIRE_BLAST_TM
.AfterTM:
	writetext BlaineFightDoneText
	waitbutton
	closetext
	end

SeafoamGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	iftrue .TalkedToSeafoamGymGuideScript
	writetext SeafoamGymGuideWinText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	end

.TalkedToSeafoamGymGuideScript:
	writetext SeafoamGymGuideWinText2
	waitbutton
	closetext
	end
	
MoveUp:
	step UP
	step_end
	
MoveDown:
	step DOWN
	step_end
	
MoveLeft:
	step LEFT
	step_end
	
MoveRight:
	step RIGHT
	step_end
	
Question1_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "NORMAL@"
	db "FIGHTING@"
	db "ROCK@"
	
Question4_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 4, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "POLIWHIRL@"
	db "POLIWRATH@"
	db "POLITOED@"
	
Question5_MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 2, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 4 ; items
	db "MAGMAR@"
	db "RAPIDASH@"
	db "ARCANINE@"
	db "MEWTWO@"
	
TrainerLowell:
	trainer SCIENTIST, LOWELL, EVENT_BEAT_LOWELL, LowellSeenText, LowellBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LowellAfterBattleText
	waitbutton
	closetext
	end
	
TrainerDaniel:
	trainer SCIENTIST, DANIAL, EVENT_BEAT_DANIEL, DanielSeenText, DanielBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DanielAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCary:
	trainer SUPER_NERD, CARY, EVENT_BEAT_CARY, CarySeenText, CaryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CaryAfterBattleText
	waitbutton
	closetext
	end
	
TrainerLinden:
	trainer SCIENTIST, LINDEN, EVENT_BEAT_LINDEN, LindenSeenText, LindenBeatenText, 0, .Script

.Script:
	checkevent EVENT_BEAT_BLAINE
	iftrue .BlaineDone
	setscene SCENE_QUIZ3
	setevent EVENT_QUIZ1
	setevent EVENT_QUIZ2
	endifjustbattled
.BlaineDone:
	opentext
	writetext LindenAfterBattleText
	waitbutton
	closetext
	end
	
TrainerOscar:
	trainer SCIENTIST, OSCAR, EVENT_BEAT_OSCAR, OscarSeenText, OscarBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext OscarAfterBattleText
	waitbutton
	closetext
	end
	
TrainerWaldo:
	trainer SCIENTIST, WALDO, EVENT_BEAT_WALDO, WaldoSeenText, WaldoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext WaldoAfterBattleText
	waitbutton
	closetext
	end
	
TrainerMerle:
	trainer SCIENTIST, MERLE, EVENT_BEAT_MERLE, MerleSeenText, MerleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MerleAfterBattleText
	waitbutton
	closetext
	end
	
TrainerEinstein:
	trainer SCIENTIST, EINSTEIN, EVENT_BEAT_EINSTEIN, EinsteinSeenText, EinsteinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EinsteinAfterBattleText
	waitbutton
	closetext
	end
	
LowellSeenText:
	text "Did you know that"
	line "the left side of"
	
	para "this GYM doesn't"
	line "have any trainer"
	cont "battles?"

	para "You can proceed as"
	line "long as you answer"
	cont "the questions"
	cont "correctly."
	
	para "But get one wrong"
	line "and you're back to"
	cont "battling us on the"
	cont "right side!"
	done

LowellBeatenText:
	text "Oof…"
	done

LowellAfterBattleText:
	text "Will you continue"
	line "to use brute"
	cont "force?"
	done
	
CarySeenText:
	text "Wow, to see a GYM"
	line "in a cave like"
	cont "this?"
	
	para "I've gotta explore"
	line "it!"
	done

CaryBeatenText:
	text "Losing hurts!"
	done

CaryAfterBattleText:
	text "Bitterness leads"
	line "to improvement"
	cont "tomorrow."
	done
	
DanielSeenText:
	text "We lost the GYM on"
	line "CINNABAR ISLAND"
	cont "and felt lost be-"
	cont "fore we came here."
	done

DanielBeatenText:
	text "Argh!"
	done

DanielAfterBattleText:
	text "Never lump us in"
	line "with SCIENTISTs"
	cont "who help bad guys."
	done
	
LindenSeenText:
	text "Beat me and you'll"
	line "get another try at"
	cont "the left side of"
	cont "the GYM."
	done

LindenBeatenText:
	text "Brilliant!"
	done

LindenAfterBattleText:
	text "This is your last"
	line "chance to display"
	cont "your knowledge of"
	cont "#MON."
	done
	
OscarSeenText:
	text "BLAINE might have"
	line "lost his gym, but"
	cont "he never gave up."
	
	para "That perseverance"
	line "is what motivates"
	cont "me!"
	done

OscarBeatenText:
	text "Argh… I'm spent…"
	done

OscarAfterBattleText:
	text "Together with BLA-"
	line "INE we'll rebuild"
	cont "our GYM!"
	done
	
WaldoSeenText:
	text "I'm in the process"
	line "of collecting"
	cont "battle records."
	
	para "Can you help me?"
	done

WaldoBeatenText:
	text "I'm not done measu-"
	line "ring data!"
	done

WaldoAfterBattleText:
	text "I didn't expect you"
	line "to be so good!"
	
	para "Who in the world"
	line "are you?"
	done
	
MerleSeenText:
	text "Ooh! You look easy"
	line "to defeat!"
	done

MerleBeatenText:
	text "I-I didn't win…"
	done

MerleAfterBattleText:
	text "I failed to sense"
	line "how strong you"
	cont "are."
	done
	
EinsteinSeenText:
	text "A white lab coat"
	line "is a researcher's"
	cont "life."
	
	para "We may be living"
	line "in a cave, but we"

	para "never forget to do"
	line "laundry."
	done

EinsteinBeatenText:
	text "It's pure white in"
	line "my head."
	done

EinsteinAfterBattleText:
	text "This white lab"
	line "coat makes me feel"
	
	para "like I've become"
	line "smarter for some"
	cont "reason."
	done
	
QuizWrongText:
	text "Whoops!"
	
	para "That's the wrong"
	line "answer."

	para "Good luck on the"
	line "other side."
	done
	
QuizCorrectText:
	text "Correct!"
	done
	
QuizProceedText:
	text "Please proceed."
	done
	
QuizCannotProceedText:
	text "You must proceed"
	line "to the right side"
	cont "of the GYM."
	done
	
QuizText1:
	text "Welcome! This side"
	line "of the GYM tests"
	cont "your knowledge of"
	cont "#MON."

	para "If you answer the"
	line "question correctly"
	cont "you may proceed."

	para "But if you get it"
	line "wrong, you'll have"

	para "to take the right"
	line "path and battle"
	cont "trainers."

	para "Now, here's your"
	line "first question!"

	para "What type of move"
	line "is HM04 STRENGTH?"
	done

QuizText2:
	text "Next question!"

	para "Is a poison-type"
	line "move super effec-"

	para "tive against the"
	line "bug type?"
	done
	
QuizText3:
	text "Next question!"

	para "Does SUDOWOODO"
	line "learn LEECH SEED?"
	done
	
QuizText4:
	text "Next question!"

	para "Which #MON has"
	line "the highest base"
	cont "SPEED stat among"
	cont "these three?"
	done
	
QuizText5:
	text "Final question!"

	para "What is BLAINE's"
	line "favorite #MON?"
	done

BlaineIntroText:
	text "BLAINE: Waaah!"

	para "My GYM in CINNABAR"
	line "burned down."

	para "My fire-breathing"
	line "#MON and I are"

	para "homeless because"
	line "of the volcano."

	para "Waaah!"

	para "But I'm back in"
	line "business as a GYM"

	para "LEADER here in"
	line "this cave."

	para "If you can beat"
	line "me, I'll give you"
	cont "a BADGE."

	para "Ha! You'd better"
	line "have BURN HEAL!"
	done

BlaineWinLossText:
	text "BLAINE: Awesome."
	line "I've burned out…"

	para "You've earned the"
	line "VOLCANOBADGE!"
	done

ReceivedVolcanoBadgeText:
	text "<PLAYER> received"
	line "VOLCANOBADGE."
	done

BlaineAfterBattleText:
	text "BLAINE: I did lose"
	line "this time, but I'm"

	para "going to win the"
	line "next."

	para "Meanwhile, keep up"
	line "that strength."

	para "I have a TM that"
	line "should help with"
	cont "that."
	
	para "I'm sure you can"
	line "guess what it is,"
	cont "ha!"
	done

BlaineFightDoneText:
	text "BLAINE: When I re-"
	line "build the CINNABAR"
	cont "GYM, we'll have to"
	cont "have a rematch."
	
	para "My fire #MON"
	line "will be stronger"

	para "than ever, just"
	line "you watch!"
	done

SeafoamGymGuideWinText:
	text "Yo!"

	para "… Huh? It's over"
	line "already?"

	para "Sorry, sorry!"

	para "CINNABAR GYM was"
	line "gone, so I didn't"

	para "know where to find"
	line "you."

	para "But, hey, you're"
	line "plenty strong even"

	para "without my advice."
	line "I knew you'd win!"
	done

SeafoamGymGuideWinText2:
	text "A #MON GYM can"
	line "be anywhere as"

	para "long as the GYM"
	line "LEADER is there."

	para "There's no need"
	line "for a building."
	done

SeafoamGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 15, SEAFOAM_ISLANDS_ENTRANCE, 3

	def_coord_events
	coord_event 10, 12, SCENE_SEAFOAM_DEFAULT, QuizScientist1Scene
	coord_event  8, 20, SCENE_QUIZ2, QuizScientist2Scene2
	coord_event  8, 19, SCENE_QUIZ2, QuizScientist2Scene
	coord_event  4, 16, SCENE_QUIZ3, QuizScientist3Scene2
	coord_event  4, 15, SCENE_QUIZ3, QuizScientist3Scene
	coord_event  3,  8, SCENE_QUIZ4, QuizScientist4Scene2
	coord_event  2,  8, SCENE_QUIZ4, QuizScientist4Scene
	coord_event  7,  4, SCENE_QUIZ5, QuizScientist5Scene2
	coord_event  7,  3, SCENE_QUIZ5, QuizScientist5Scene

	def_bg_events

	def_object_events
	object_event 17,  2, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamGymBlaineScript, -1
	object_event 18, 14, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamGymGuideScript, EVENT_SEAFOAM_GYM_GYM_GUIDE
	object_event 27, 13, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerMerle, -1
	object_event 30, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerWaldo, -1
	object_event 27,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerEinstein, -1
	object_event 30, 16, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerOscar, -1
	object_event 24, 15, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerLinden, -1
	object_event 18, 20, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCary, -1
	object_event 21, 13, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerDaniel, -1
	object_event 18,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerLowell, -1
	object_event  7,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, QuizScientist5, -1
	object_event  1,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, QuizScientist4, -1
	object_event  4, 14, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, QuizScientist3, -1
	object_event  8, 18, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, QuizScientist2, -1
	object_event  9, 12, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, QuizScientist1, -1
