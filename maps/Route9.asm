	object_const_def
	const ROUTE9_YOUNGSTER1
	const ROUTE9_LASS1
	const ROUTE9_YOUNGSTER2
	const ROUTE9_LASS2
	const ROUTE9_POKEFAN_M1
	const ROUTE9_POKEFAN_M2
	const ROUTE9_YOUNGSTER3
	const ROUTE9_YOUNGSTER4
	const ROUTE9_LASS3
	const ROUTE9_SILVER
	const ROUTE9_POKE_BALL

Route9_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_ROUTE9_NOTHING
	scene_script .DummyScene1 ; SCENE_ROUTE9_RIVAL_BATTLE

	def_callbacks
	
.DummyScene0:
	end

.DummyScene1:
	end
	
Route9RivalBattleScene:
	moveobject ROUTE9_SILVER, 47, 4
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear ROUTE9_SILVER
	applymovement ROUTE9_SILVER, Route9RivalBattleApproachMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext Route9RivalBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_ROUTE_9
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext Route9RivalWinText, Route9RivalLossText
	setlasttalked ROUTE9_SILVER
	loadtrainer RIVAL2, RIVAL2_1_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Totodile:
	winlosstext Route9RivalWinText, Route9RivalLossText
	setlasttalked ROUTE9_SILVER
	loadtrainer RIVAL2, RIVAL2_1_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Chikorita:
	winlosstext Route9RivalWinText, Route9RivalLossText
	setlasttalked ROUTE9_SILVER
	loadtrainer RIVAL2, RIVAL2_1_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext Route9RivalAfterText
	waitbutton
	closetext
	applymovement ROUTE9_SILVER, Route9RivalBattleExitMovement
	disappear ROUTE9_SILVER
	setscene SCENE_ROUTE9_NOTHING
	waitsfx
	playmapmusic
	end

TrainerCamperDean:
	trainer CAMPER, DEAN, EVENT_BEAT_CAMPER_DEAN, CamperDeanSeenText, CamperDeanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperDeanAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerHeidi:
	trainer PICNICKER, HEIDI, EVENT_BEAT_PICNICKER_HEIDI, PicnickerHeidiSeenText, PicnickerHeidiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerHeidiAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperSid:
	trainer CAMPER, SID, EVENT_BEAT_CAMPER_SID, CamperSidSeenText, CamperSidBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperSidAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerEdna:
	trainer PICNICKER, EDNA, EVENT_BEAT_PICNICKER_EDNA, PicnickerEdnaSeenText, PicnickerEdnaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerEdnaAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerTim:
	trainer HIKER, TIM, EVENT_BEAT_HIKER_TIM, HikerTimSeenText, HikerTimBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerTimAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerSidney:
	trainer HIKER, SIDNEY, EVENT_BEAT_HIKER_SIDNEY, HikerSidneySeenText, HikerSidneyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerSidneyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerConner:
	trainer YOUNGSTER, CONNER, EVENT_BEAT_CONNER, ConnerSeenText, ConnerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ConnerAfterBattleText
	waitbutton
	closetext
	end
	
TrainerChris:
	trainer CAMPER, DREW, EVENT_BEAT_DREW, ChrisSeenText, ChrisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChrisAfterBattleText
	waitbutton
	closetext
	end
	
TrainerAlicia:
	trainer PICNICKER, ALICIA, EVENT_BEAT_ALICIA, AliciaSeenText, AliciaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AliciaAfterBattleText
	waitbutton
	closetext
	end
	
Route9FR:
	itemball FULL_RESTORE

Route9Sign:
	jumptext Route9SignText

Route9HiddenEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_9_HIDDEN_ETHER
	
Route9RivalBattleApproachMovement:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step_end

Route9RivalBattleExitMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
Route9RivalBeforeText:
	text "<……> <……> <……>"

	para "It's been a while,"
	line "<PLAYER>."

	para "…Since I lost to"
	line "you, I thought"

	para "about what I was"
	line "lacking with my"
	cont "#MON…"

	para "And we came up"
	line "with an answer."

	para "<PLAYER>, now we'll"
	line "show you!"
	done

Route9RivalWinText:
	text "<……> <……> <……>"

	para "I thought I raised"
	line "my #MON to be"

	para "the best they"
	line "could be…"

	para "…But it still "
	line "wasn't enough…"
	done

Route9RivalAfterText:
	text "<……> <……> <……>"

	para "I still need more"
	line "strength."

	para "Love… compassion…"
	line "It's not enough."

	para "Maybe the strength"
	line "of an organization"

	para "is what I really"
	line "need, after all…"

	para "…Listen, <PLAYER>."

	para "One of these days"
	line "I'm going to prove"

	para "myself, no matter"
	line "what."
	
	para "Even if it means…"
	line "…following in my"
	cont "old man's foot-"
	cont "steps…"

	para "<……> <……> <……>"
	done

Route9RivalLossText:
	text "<……> <……> <……>"

	para "I've repaid my"
	line "debt to you."

	para "With my #MON,"
	line "I'm going to beat"

	para "the CHAMPION and"
	line "become the world's"
	cont "greatest trainer."
	done

CamperDeanSeenText:
	text "I came to explore"
	line "ROCK TUNNEL."
	done

CamperDeanBeatenText:
	text "Whoa! Danger, man."
	done

CamperDeanAfterBattleText:
	text "My #MON were"
	line "hurt before even"

	para "entering ROCK"
	line "TUNNEL."

	para "I'd better take"
	line "them to a #MON"
	cont "CENTER right away."
	done

PicnickerHeidiSeenText:
	text "Have you ever been"
	line "to a picnic?"

	para "They're so much"
	line "fun!"
	done

PicnickerHeidiBeatenText:
	text "Ohhhh!"
	done

PicnickerHeidiAfterBattleText:
	text "We bake lots of"
	line "goodies and share"

	para "them all around."
	line "They're delicious!"
	done

CamperSidSeenText:
	text "Hey, you!"
	line "Don't litter!"
	done

CamperSidBeatenText:
	text "I was just point-"
	line "ing out…"
	done

CamperSidAfterBattleText:
	text "Sorry. You weren't"
	line "littering. It was"
	cont "my mistake."
	done

PicnickerEdnaSeenText:
	text "People shouldn't"
	line "leave any litter"
	cont "behind."
	done

PicnickerEdnaBeatenText:
	text "Ohh… I lost…"
	done

PicnickerEdnaAfterBattleText:
	text "Conserving energy"
	line "is important, but"

	para "the environment is"
	line "even more vital."
	done

HikerTimSeenText:
	text "She'll be coming"
	line "'round MT.SILVER"
	cont "when she comes…"

	para "MT.SILVER is in"
	line "JOHTO, right?"
	done

HikerTimBeatenText:
	text "I was too busy"
	line "singing…"
	done

HikerTimAfterBattleText:
	text "Battles are about"
	line "concentration."
	done

HikerSidneySeenText:
	text "I'll tell you a"
	line "secret."

	para "But first, we"
	line "battle!"
	done

HikerSidneyBeatenText:
	text "Oh, dang!"
	line "I lost that…"
	done

HikerSidneyAfterBattleText:
	text "The POWER PLANT is"
	line "across a small"
	cont "river."
	done
	
ConnerSeenText:
	text "Go, my super team!"
	done

ConnerBeatenText:
	text "My team…"
	done

ConnerAfterBattleText:
	text "Your team must be"
	line "some sort of SUPER"
	cont "super team!"
	done
	
ChrisSeenText:
	text "Who's that walking"
	line "there with a team"
	cont "of good-looking"
	cont "#MON?"
	done

ChrisBeatenText:
	text "Out like a light!"
	done

ChrisAfterBattleText:
	text "Keep walking!"
	done
	
AliciaSeenText:
	text "You have #MON"
	line "with you!"
	
	para "You're mine!"
	done

AliciaBeatenText:
	text "You deceived me…"
	done

AliciaAfterBattleText:
	text "The tunnel coming"
	line "up is pitch-black"
	cont "inside."
	
	para "You'll need FLASH"
	line "to get through it."
	done

Route9SignText:
	text "ROUTE 9"

	para "CERULEAN CITY -"
	line "ROCK TUNNEL"
	done

Route9_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 48, 15, ROCK_TUNNEL_1F, 1

	def_coord_events
	coord_event 42,  8, SCENE_ROUTE9_RIVAL_BATTLE, Route9RivalBattleScene

	def_bg_events
	bg_event 15,  7, BGEVENT_READ, Route9Sign
	bg_event 41, 15, BGEVENT_ITEM, Route9HiddenEther

	def_object_events
	object_event 23, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperDean, -1
	object_event 39,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerHeidi, -1
	object_event 11,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperSid, -1
	object_event 12, 15, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerEdna, -1
	object_event 28,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerTim, -1
	object_event 36, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerSidney, -1
	object_event 27,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerConner, -1
	object_event 22,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerChris, -1
	object_event  9,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerAlicia, -1
	object_event 47,  4, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_ROUTE_9
	object_event 20,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route9FR, EVENT_ROUTE_9_FULL_RESTORE
