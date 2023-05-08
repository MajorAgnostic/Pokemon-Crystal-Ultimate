	object_const_def
	const FIGHTINGDOJO_BLACK_BELT1
	const FIGHTINGDOJO_BLACK_BELT2
	const FIGHTINGDOJO_KIYO
	const FIGHTINGDOJO_POKE_BALL1
	const FIGHTINGDOJO_POKE_BALL2

FightingDojo_MapScripts:
	def_scene_scripts

	def_callbacks
	
FightingDojoBlackBelt2:
	checkevent EVENT_BEAT_BLACKBELT_KIYO2
	iftrue .QuestDone2
	jumptextfaceplayer FightingDojoBlackBeltText
	
.QuestDone2:
	jumptextfaceplayer QuestDoneText

FightingDojoBlackBelt:
	checkevent EVENT_BEAT_BLACKBELT_KIYO
	iffalse .NoFirstBattle
	checkevent EVENT_BEAT_BLACKBELT_KIYO2
	iftrue .QuestDone
	checkevent EVENT_PICKED_UP_FOCUS_BAND
	iftrue .Waterfall
	checkitem BRICK_PIECE
	iftrue .StartQuest
.NoFirstBattle:
	jumptextfaceplayer FightingDojoBlackBeltText
	
.StartQuest:
	faceplayer
	opentext
	writetext GiveFocusBandText
	promptbutton
	verbosegiveitem FOCUS_BAND
	iffalse .BagFull
	setevent EVENT_PICKED_UP_FOCUS_BAND
	closetext
	end
	
.Waterfall:
	jumptextfaceplayer WaterfallText
	
.QuestDone:
	jumptextfaceplayer QuestDoneText
	
.BagFull:
	writetext FocusBandBagFullText
	waitbutton
	closetext
	end
	
FightingDojoKiyo:
	faceplayer
	opentext
	checkevent EVENT_GOT_DOJOPOKE
	iftrue .GotDojoPoke
	writetext KiyoGiveText
	waitbutton
	closetext
	end
	
.GotDojoPoke:
	writetext DojoQuestCompleteText
	waitbutton
	closetext
	end
	
FightingDojoElekid:
	refreshscreen
	pokepic ELEKID
	cry ELEKID
	waitbutton
	closepokepic
	opentext
	writetext TakeElekidText
	yesorno
	iffalse .End
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	disappear FIGHTINGDOJO_POKE_BALL1
	disappear FIGHTINGDOJO_POKE_BALL2
	setevent EVENT_GOT_DOJOPOKE
	writetext ReceivedElekidText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke ELEKID, 50
	checkevent EVENT_GOT_DOJOPOKE
	special GiveElekid
.End:
	closetext
	end
	
.NoRoom
	writetext ReceivedElekidText
	waitsfx
	promptbutton
	writetext PartyFullText
	waitbutton
	closetext
	end
	
FightingDojoMagby:
	refreshscreen
	pokepic MAGBY
	cry MAGBY
	waitbutton
	closepokepic
	opentext
	writetext TakeMagbyText
	yesorno
	iffalse .End2
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom2
	disappear FIGHTINGDOJO_POKE_BALL1
	disappear FIGHTINGDOJO_POKE_BALL2
	setevent EVENT_GOT_DOJOPOKE
	writetext ReceivedMagbyText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke MAGBY, 50
	checkevent EVENT_GOT_DOJOPOKE
	special GiveMagby
.End2:
	closetext
	end
	
.NoRoom2
	writetext ReceivedMagbyText
	waitsfx
	promptbutton
	writetext PartyFullText
	waitbutton
	closetext
	end

FightingDojoSign1:
	jumptext FightingDojoSign1Text

FightingDojoSign2:
	jumptext FightingDojoSign2Text
	
TakeElekidText:
	text "Will you choose"
	line "ELEKID?"
	done
	
TakeMagbyText:
	text "Will you choose"
	line "MAGBY?"
	done
	
ReceivedElekidText:
	text "<PLAYER> received"
	line "ELEKID!"
	done

ReceivedMagbyText:
	text "<PLAYER> received"
	line "MAGBY!"
	done
	
PartyFullText:
	text "But there's no"
	line "more room left"
	cont "in the party…"
	done
	
FocusBandBagFullText:
	text "You don't seem to"
	line "have room for it."
	done
	
KiyoGiveText:
	text "I now know why my"
	line "training was not"
	cont "enough to defeat"
	cont "you."

	para "I was too selfish."
	
	para "In neglecting the"
	line "dojo and my disci-"
	cont "ples, my fighting"
	cont "spirit grew weak."
	
	para "My desire to grow"
	line "stronger became an"
	
	para "obsession and you"
	line "reminded me of why"
	cont "I train to begin"
	cont "with."
	
	para "To revive the dojo"
	line "and seek vengeance"
	
	para "against SABRINA's"
	line "GYM."
	
	para "One day, we will"
	line "be SAFFRON CITY's"
	
	para "official GYM, once"
	line "again!"
	
	para "I cannot thank you"
	line "enough."
	
	para "But perhaps one of"
	line "these #MON may"
	
	para "share with you the"
	line "happiness that you"
	cont "have brought me."
	done
	
QuestDoneText:
	text "The KARATE KING is"
	line "back!"

	para "I cannot thank you"
	line "enough."
	
	para "You've helped our"
	line "dojo return to its"
	cont "former glory!"
	done
	
DojoQuestCompleteText:
	text "I will never again"
	line "forget that this"
	cont "is my home."

	para "Thanks, kid."
	
	para "You'll always be"
	line "welcome in this"
	cont "dojo."
	done
	
GiveFocusBandText:
	text "Hello!"

	para "KARATE KING, the"
	line "FIGHTING DOJO's"

	para "master, is in a"
	line "cave in JOHTO for"
	cont "training."
	
	para "It has been a long"
	line "time, though."
	
	para "Hold on a second."
	line "Is that the BRICK"
	cont "PIECE?"
	
	para "Incredible! Where"
	line "did you find it?"
	
	para "This is no ordi-"
	line "nary brick piece."
	
	para "It is symbolic of"
	line "the history of the"
	cont "FIGHTING DOJO."
	
	para "Could I ask you to"
	line "find my master and"
	cont "show this to him?"
	
	para "I believe he would"
	line "be inspired to re-"
	cont "turn to the dojo"
	cont "if he saw it."
	
	para "You will? Oh, I am"
	line "truly relieved!"
	
	para "Please, take this"
	line "as thanks."
	done
	
WaterfallText:
	text "I believe that my"
	line "master is train-"

	para "ing in a cave with"
	line "a WATERFALL."
	done

FightingDojoBlackBeltText:
	text "Hello!"

	para "KARATE KING, the"
	line "FIGHTING DOJO's"

	para "master, is in a"
	line "cave in JOHTO for"
	cont "training."
	done

FightingDojoSign1Text:
	text "What goes around"
	line "comes around!"
	done

FightingDojoSign2Text:
	text "We accept BRICK"
	line "donations."
	done

FightingDojo_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, SAFFRON_CITY, 1
	warp_event  5, 11, SAFFRON_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_READ, FightingDojoSign1
	bg_event  5,  0, BGEVENT_READ, FightingDojoSign2

	def_object_events
	object_event  3,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FightingDojoBlackBelt, -1
	object_event  6,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FightingDojoBlackBelt2, -1
	object_event  5,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FightingDojoKiyo, EVENT_DOJO_KIYO
	object_event  4,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FightingDojoElekid, EVENT_GOT_DOJOPOKE
	object_event  5,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FightingDojoMagby, EVENT_GOT_DOJOPOKE
