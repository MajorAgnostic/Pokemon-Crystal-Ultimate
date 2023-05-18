	object_const_def
	const SILPHB1F_PHARMACIST1
	const SILPHB1F_BIKER1
	const SILPHB1F_BIKER2
	const SILPHB1F_BIKER3
	const SILPHB1F_FED1
	const SILPHB1F_PHARMACIST2
	const SILPHB1F_PHARMACIST22
	const SILPHB1F_SUDOWOODO
	const SILPHB1F_MACHOKE
	const SILPHB1F_POKE_BALL1
	const SILPHB1F_POKE_BALL2
	const SILPHB1F_POKE_BALL3
	const SILPHB1F_BOOK

SafariZoneMainOffice_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .CratesBlocking
	
.CratesBlocking:
	checkevent EVENT_CRATES_MOVED
	iftrue .WayUnblocked
	changeblock 5, 3, $0b ; way blocked
.WayUnblocked:
	endcallback
	
TrainerBikerStrauss:
	trainer BIKER, STRAUSS, EVENT_BEAT_STRAUSS, StraussSeenText, StraussBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext StraussAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBikerTheron:
	trainer BIKER, THERON, EVENT_BEAT_THERON, TheronSeenText, TheronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TheronAfterBattleText
	waitbutton
	closetext
	end
	
SilphBurglar:
	trainer BURGLAR, ALEXANDER, EVENT_BEAT_ALEXANDER, AlexSeenText, AlexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AlexAfterBattleText
	waitbutton
	closetext
	end
	
NightShiftGuy:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KANTO_FEDERATION
	iftrue .Saved
	checkevent EVENT_CRATES_MOVED
	iftrue .SkipCrane
	writetext NightShiftGuyText1
	waitbutton
	closetext
	pause 10
	turnobject SILPHB1F_PHARMACIST2, UP
	pause 10
	playsound SFX_ELEVATOR_2
	pause 80
	playsound SFX_ELEVATOR_2
	pause 80
	faceplayer
	setevent EVENT_CRATES_MOVED
	changeblock 5, 3, $0d ; way opened
	opentext
.SkipCrane:
	writetext NightShiftGuyText2
	waitbutton
	closetext
	end
	
.Saved:
	writetext NightShiftGuyText3
	waitbutton
	closetext
	end
	
NightShiftGuy2:
	opentext
	writetext NightShiftGuy2Text
	waitbutton
	closetext
	applymovement SILPHB1F_PHARMACIST22, NightShiftGuyMovement
	disappear SILPHB1F_PHARMACIST22
	setevent EVENT_GUY_FREED2
	end
	
SudowoodoDoll:
	jumptext SudowoodoDollText
	
TrainerBikerNev:
	trainer BIKER, NEV, EVENT_BEAT_NEV, NevSeenText, NevBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NevAfterBattleText
	waitbutton
	closetext
	end
	
SuspiciousBookshelf:
	checkevent EVENT_GUY_FREED
	iffalse .Done
	checkevent EVENT_SUSPICIOUS_BOOK
	iftrue .SuspiciousPaper
.Done:
	jumpstd DifficultBookshelfScript
	
.SuspiciousPaper:
	opentext
	writetext SuspiciousBookshelfText
	waitbutton
	closetext
	clearevent EVENT_SUSPICIOUS_BOOK
	applymovement PLAYER, PlayerMovement
	appear SILPHB1F_BOOK
	; fallthrough
	
KantoFed1:
	faceplayer
	checkevent EVENT_BEAT_BIKER_ZEKE
	iftrue .ZekeBeaten
	checkevent EVENT_SUSPICIOUS_BOOK
	iftrue .TwerpText
	pause 20
	turnobject SILPHB1F_FED1, LEFT
	showemote EMOTE_SHOCK, SILPHB1F_FED1, 15
	playmusic MUSIC_HIKER_ENCOUNTER
	applymovement SILPHB1F_FED1, ZekeToPlayerMovement
	turnobject PLAYER, RIGHT
	opentext
	writetext BikerZekeSeenText
	waitbutton
	closetext
	winlosstext BikerZekeBeatenText, 0
	loadtrainer BIKER, ZEKE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BIKER_ZEKE
	clearevent EVENT_BEAT_FED1_1
.ZekeBeaten:
	opentext
	writetext BikerZekeAfterBattleText
	waitbutton
	closetext
	end 
	
.TwerpText:
	opentext
	writetext BikerZekeTwerpText
	waitbutton
	closetext
	end 
	
SilphB1FMachoke:
	opentext
	writetext SilphB1FMachokeText
	cry MACHOKE
	waitbutton
	closetext
	end
	
PlayerMovement:
	step LEFT
	step LEFT
	turn_head UP
	step_end
	
ZekeToPlayerMovement:
	step LEFT
	step LEFT
	step LEFT
	step_end
	
NightShiftGuyMovement:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
SuspiciousBook:
	jumptext SuspiciousBookText
	
SilphDelivUltraBall:
	hiddenitem ULTRA_BALL, EVENT_SILPDELIV_HIDDEN_ULTRA_BALL
	
SilphDelivFR:
	itemball FULL_RESTORE
	
SilphDelivMaxRevive:
	itemball MAX_REVIVE
	
SilphDelivRevive:
	itemball REVIVE
	
StraussSeenText:
	text "We're the KANTO"
	line "FEDERATION!"
	cont "Right on!"
	done

StraussBeatenText:
	text "Yikes! Sorry!"
	done

StraussAfterBattleText:
	text "I'll try not to"
	line "disturb anyone"
	cont "from now on…"
	done

TheronSeenText:
	text "Vroom vroom!"
	line "Baribaribaribari!"
	
	para "What do you think"
	line "of my engine imi-"
	cont "tation?"
	done

TheronBeatenText:
	text "Hnnff, hnnff, I'm"
	line "out of breath…"
	done

TheronAfterBattleText:
	text "Hnnff, hnnff, I'm"
	line "out of breath…"
	done
	
AlexSeenText:
	text "I heard something"
	line "was going down"
	cont "here."
	
	para "So I figured I'd"
	line "take advantage of"
	cont "the chaos, hehe."
	done

AlexBeatenText:
	text "It's not my fault"
	line "I happen to be a"
	cont "kleptomaniac!"
	done

AlexAfterBattleText:
	text "Ok, fine. I'll"
	line "leave these here…"
	done
	
NevSeenText:
	text "Hey, where do you"
	line "think you're off"
	cont "to?"
	
	para "Wait… how did you"
	line "even reach me?"
	done

NevBeatenText:
	text "So that's how…"
	done

NevAfterBattleText:
	text "Darn… I should"
	line "warn the others,"
	
	para "but I'm all out"
	line "of gas."
	done
	
BikerZekeTwerpText:
	text "Hey, twerp! Are"
	line "you looking to"
	
	para "join the great"
	line "KANTO FEDERATION?"
	
	para "No? You want to"
	line "foil our plans,"
	cont "you say?"
	
	para "Hahahahaha!"
	
	para "We kidnapped the"
	line "crane operator,"
	
	para "and he left no"
	line "evidence of where"
	cont "he was taken to!"
	
	para "Both the desk and"
	line "chair are clean."
	cont "I checked all the"
	cont "boxes too!"
	
	para "Good luck getting"
	line "anywhere without"
	cont "him, hahahaha."
	done
	
BikerZekeSeenText:
	text "Hey, what's that?"
	line "You're gonna hand"
	cont "that over, punk!"
	done

BikerZekeBeatenText:
	text "Huh, you got some"
	line "nerve!"
	done

BikerZekeAfterBattleText:
	text "Well, no matter."
	
	para "My buds and boss"
	line "are upstairs, so"
	
	para "you'll find your-"
	line "self outnumbered"
	cont "and outmatched,"
	cont "hahahahaha."
	done
	
NightShiftGuy2Text:
	text "Seems like you've"
	line "cleared out a few"
	cont "of the baddies."
	
	para "Good work!"
	
	para "Come to my office"
	line "so we can get you"
	cont "upstairs."
	done
	
NightShiftGuyText1:
	text "Whew, well that"
	line "was more excite-"
	
	para "ment than I had"
	line "expected from a"
	cont "night shift!"
	
	para "Now, to get you"
	line "upstairs, I need"
	
	para "to use the crane"
	line "to move a few"
	cont "crates."
	
	para "Please stand by."
	done

NightShiftGuyText2:
	text "Okay buddy, it's"
	line "done! The way is"
	cont "clear now."
	
	para "Sadly, I'm not a"
	line "stellar trainer,"
	
	para "so I won't be a"
	line "whole lot of help"
	cont "from here on out."
	
	para "Be careful, won't"
	line "cha?"
	done
	
NightShiftGuyText3:
	text "So it's all over?"
	line "Thanks bud, you"
	cont "are a lifesaver!"
	done
	
SudowoodoDollText:
	text "This is a rare"
	line "SUDOWOODO! Huh?"

	para "It's only a doll…"
	done
	
SuspiciousBookshelfText:
	text "Huh? There seems"
	line "to be a piece of"

	para "paper sticking out"
	line "of one book."
	done
	
SuspiciousBookText:
	text "HELP!"

	para "I think I'm being"
	line "tak-   ROUTE 17!"
	
	para "…"
	
	para "It seems that they"
	line "wrote this in a"
	cont "hurry…"
	done
	
SilphB1FMachokeText:
	text "Maaacho!"
	done

SafariZoneMainOffice_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  0, FUCHSIA_CITY, 2
	warp_event 10,  0, FUCHSIA_CITY, 12
	warp_event  3, 12, SAFARI_ZONE_MAIN_OFFICE2, 1
	warp_event  8, 10, SAFARI_ZONE_MAIN_OFFICE2, 4
	warp_event 10,  9, SAFARI_ZONE_MAIN_OFFICE2, 5
	warp_event  9, 11, SAFARI_ZONE_MAIN_OFFICE2, 6
	warp_event 11,  9, SAFARI_ZONE_MAIN_OFFICE2, 7
	warp_event 13,  9, SAFARI_ZONE_MAIN_OFFICE2, 8
	warp_event  8,  5, SAFARI_ZONE_MAIN_OFFICE2, 9
	warp_event  9,  7, SAFARI_ZONE_MAIN_OFFICE2, 10
	warp_event  2,  2, SAFARI_ZONE_MAIN_OFFICE2, 11

	def_coord_events

	def_bg_events
	bg_event 10, 13, BGEVENT_READ, SuspiciousBookshelf
	bg_event 18, 15, BGEVENT_ITEM, SilphDelivUltraBall

	def_object_events
	object_event 12, 11, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, SilphBurglar, EVENT_BEAT_KANTO_FEDERATION
	object_event  4,  1, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_TRAINER, 1, TrainerBikerStrauss, EVENT_BEAT_KANTO_FEDERATION
	object_event 15,  9, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_TRAINER, 5, TrainerBikerTheron, EVENT_BEAT_KANTO_FEDERATION
	object_event  3, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_TRAINER, 2, TrainerBikerNev, EVENT_BEAT_KANTO_FEDERATION
	object_event 12, 14, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, KantoFed1, EVENT_BEAT_KANTO_FEDERATION
	object_event  8, 14, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NightShiftGuy, EVENT_GUY_FREED
	object_event 12,  1, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NightShiftGuy2, EVENT_GUY_FREED2
	object_event 18,  8, SPRITE_SUDOWOODO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SudowoodoDoll, -1
	object_event 12,  3, SPRITE_MACHOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, SilphB1FMachoke, -1
	object_event  5, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphDelivRevive, EVENT_SILPDELIV_REVIVE
	object_event  7, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphDelivFR, EVENT_SILPDELIV_FR
	object_event  7,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphDelivMaxRevive, EVENT_SILPDELIV_MAX_REVIVE
	object_event  8, 13, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SuspiciousBook, EVENT_SUSPICIOUS_BOOK
