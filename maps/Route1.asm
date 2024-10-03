	object_const_def
	const ROUTE1_YOUNGSTER1
	const ROUTE1_YOUNGSTER2
	const ROUTE1_YOUNGSTER3
	const ROUTE1_COOLTRAINER_F
	const ROUTE1_FRUIT_TREE

Route1_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSchoolboyDanny:
	trainer SCHOOLBOY, DANNY, EVENT_BEAT_SCHOOLBOY_DANNY, SchoolboyDannySeenText, SchoolboyDannyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyDannyAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfQuinn:
	trainer COOLTRAINERF, QUINN, EVENT_BEAT_COOLTRAINERF_QUINN, CooltrainerfQuinnSeenText, CooltrainerfQuinnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfQuinnAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSherman:
	trainer SCHOOLBOY, SHERMAN, EVENT_BEAT_SHERMAN, ShermanSeenText, ShermanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ShermanAfterBattleText
	waitbutton
	closetext
	end
	
TrainerFrench:
	trainer YOUNGSTER, FRENCH, EVENT_BEAT_FRENCH, FrenchSeenText, FrenchBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FrenchAfterBattleText
	waitbutton
	closetext
	end

Route1Sign:
	jumptext Route1SignText

Route1FruitTree:
	fruittree FRUITTREE_ROUTE_1

SchoolboyDannySeenText:
	text "If trainers meet,"
	line "the first thing to"
	cont "do is battle."
	done

SchoolboyDannyBeatenText:
	text "Awww… I've got a"
	line "losing record…"
	done

SchoolboyDannyAfterBattleText:
	text "For trainers, it's"
	line "a given that we'll"

	para "battle whenever we"
	line "meet."
	done

CooltrainerfQuinnSeenText:
	text "You there!"
	line "Want to battle?"
	done

CooltrainerfQuinnBeatenText:
	text "Down and out…"
	done

CooltrainerfQuinnAfterBattleText:
	text "You're strong."

	para "You obviously must"
	line "have trained hard."
	done
	
ShermanSeenText:
	text "After learning it"
	line "in class, I head"
	cont "right outside to"
	cont "practice!"
	done

ShermanBeatenText:
	text "I need to follow"
	line "the textbook…"
	done

ShermanAfterBattleText:
	text "I should be sure"
	line "to record all of"

	para "today's mistakes"
	line "in a notebook!"
	done
	
FrenchSeenText:
	text "You!"
	line "I've been waiting"
	
	para "for someone like"
	line "you!"
	done

FrenchBeatenText:
	text "Just as strong as"
	line "I expected!"
	done

FrenchAfterBattleText:
	text "That was a great"
	line "fight!"
	
	para "Don't you agree?"
	done

Route1SignText:
	text "ROUTE 1"

	para "PALLET TOWN -"
	line "VIRIDIAN CITY"
	done

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  7, 27, BGEVENT_READ, Route1Sign

	def_object_events
	object_event  4, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSchoolboyDanny, -1
	object_event 15,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSherman, -1
	object_event 11, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerFrench, -1
	object_event  9, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfQuinn, -1
	object_event  3,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1FruitTree, -1
