	object_const_def
	const SILPH1F_BIKER2
	const SILPH1F_BIKER3
	const SILPH1F_BIKER4
	const SILPH1F_BIKER5
	const SILPH1F_BIKER6
	const SILPH1F_BIKER7
	const SILPH1F_JANINE1
	const SILPH1F_JANINE2
	const SILPH1F_JANINE3
	const SILPH1F_ROCKET
	const SILPH1F_ROUGHNECK
	const SILPH1F_YOUNGSTER
	const SILPH1F_LASS
	const SILPH1F_POKE_BALL
	const SILPH1F_VENOMOTH
	const SILPH1F_RATTATA
	const SILPH1F_FORRETRESS

SafariZoneMainOffice2_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .Gate
	
.Gate:
	checkevent EVENT_DELIV_GATE_UNLOCKED
	iftrue .WayUnlocked
	changeblock 17, 7, $13 ; way locked
	changeblock 19, 7, $13 ; way locked
.WayUnlocked:
	endcallback

RandomBiker2:
	faceplayer
	opentext
	writetext MeetingAboutText
	waitbutton
	closetext
	end

RandomBiker3:
	faceplayer
	opentext
	writetext DefeatedText
	waitbutton
	closetext
	end

RandomBiker4:
	faceplayer
	opentext
	writetext ScaryText
	waitbutton
	closetext
	end

TrainerBikerBuck:
	trainer BIKER, BUCK, EVENT_BEAT_BUCK, BuckSeenText, BuckBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BuckAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerDwayne:
	faceplayer
	checkevent EVENT_BEAT_BIKER_DWAYNE
	iftrue .AfterBattle
	playmusic MUSIC_HIKER_ENCOUNTER
	opentext
	writetext BikerDwayneSeenText
	waitbutton
	closetext
	disappear SILPH1F_JANINE1
	disappear SILPH1F_VENOMOTH
	disappear SILPH1F_RATTATA
	disappear SILPH1F_FORRETRESS
	winlosstext BikerDwayneBeatenText, 0
	loadtrainer BIKER, DWAYNE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BIKER_DWAYNE
	clearevent EVENT_NO_JANINE
	refreshscreen
	end
	
.AfterBattle:
	opentext
	writetext BikerDwayneAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerHarris:
	trainer BIKER, HARRIS, EVENT_BEAT_BIKER_HARRIS, BikerHarrisSeenText, BikerHarrisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerHarrisAfterBattleText
	waitbutton
	closetext
	end

JanineSurrounded:
	opentext
	writetext JanineSurroundedText
	waitbutton
	cry VENOMOTH
	closetext
	end
	
JanineChuck:
	opentext
	checkevent EVENT_JANINE_CHUCKED
	iftrue .Chucked
	setevent EVENT_JANINE_CHUCKED
	writetext JanineChuckText
	sjump .ContinueChuck
.Chucked:
	writetext JanineChuckText2
.ContinueChuck:
	waitbutton
	closetext
	playsound SFX_TACKLE
	applymovement PLAYER, Movement_JanineShovesYou
	turnobject SILPH1F_JANINE2, LEFT
	end
	
JanineFinal:
	opentext
	writetext JanineFinalText
	waitbutton
	closetext
	end
	
FederationBoss:
	faceplayer
	opentext
	writetext PaxtonSeenText
	waitbutton
	closetext
	winlosstext PaxtonBeatenText, 0
	loadtrainer ROUGHNECK, PAXTON
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KANTO_FEDERATION
	opentext
	writetext PaxtonAfterText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SILPH1F_ROUGHNECK
	disappear SILPH1F_BIKER2
	disappear SILPH1F_BIKER3
	disappear SILPH1F_BIKER4
	disappear SILPH1F_BIKER5
	disappear SILPH1F_BIKER6
	disappear SILPH1F_BIKER7
	refreshscreen
	pause 20
	turnobject SILPH1F_ROCKET, DOWN
	pause 20
	turnobject PLAYER, RIGHT
	opentext
	writetext RocketGogoText
	waitbutton
	closetext
	applymovement SILPH1F_ROCKET, Movement_Rocket
	disappear SILPH1F_ROCKET
	clearflag ENGINE_FEDERATION_IN_FUCHSIA
	turnobject SILPH1F_JANINE3, RIGHT
	opentext
	writetext JanineLeavesText
	waitbutton
	closetext
	applymovement SILPH1F_JANINE3, Movement_JanineLeaves
	disappear SILPH1F_JANINE3
	playmapmusic
	end
	
DoorSwitch:
	checkevent EVENT_DELIV_GATE_UNLOCKED
	iftrue .SwitchOff
	opentext
	writetext DoorSwitchText
	playsound SFX_TALLY
	waitbutton
	closetext
	setevent EVENT_DELIV_GATE_UNLOCKED
	setevent EVENT_NO_JANINE
	end

.SwitchOff:
	end
	
ForeignRocket1:
	opentext
	writetext ForeignRocket1Text
	waitbutton
	closetext
	end

ForretressScript:
	opentext
	writetext ForretressText
	cry FORRETRESS
	waitbutton
	closetext
	end
	
MaleCaptive:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KANTO_FEDERATION
	iftrue .FreedM
	writetext MaleCaptiveText
	waitbutton
	closetext
	end
	
.FreedM:
	writetext MaleCaptiveText2
	waitbutton
	closetext
	end
	
FemaleCaptive:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KANTO_FEDERATION
	iftrue .FreedF
	writetext FemaleCaptiveText
	waitbutton
	closetext
	end
	
.FreedF:
	writetext FemaleCaptiveText2
	waitbutton
	closetext
	end
	
SilphDelivRareCandy:
	itemball RARE_CANDY
	
SilphDelivFullHeal:
	hiddenitem FULL_HEAL, EVENT_SILPDELIV_HIDDEN_FULL_HEAL
	
Movement_JanineShovesYou:
	fix_facing
	jump_step LEFT
	remove_fixed_facing
	step_end
	
Movement_JanineLeaves:
	step RIGHT
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
Movement_Rocket:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
RocketGogoText:
	text "All is according"
	line "to go plan, yes."
	
	para "Again rise, TEAM"
	line "ROCKET will be!"
	
	para "Time for me to"
	line "bye-bye a go-go."
	done
	
JanineLeavesText:
	text "…"
	
	para "I couldn't stop"
	line "him."
	
	para "My #MON were"
	line "too tired and he"
	
	para "had frightening"
	line "#MON."
	
	para "He's no ordinary"
	line "GRUNT."
	
	para "……I should go to"
	line "the POLICE now."
	done
	
JanineSurroundedText:
	text "This isn't good,"
	line "I'm surrounded."
	
	para "VENOMOTH, use"
	line "SLUDGE BOMB!"
	done
	
JanineChuckText:
	text "Hmm, that won't"
	line "work…"
	
	para "Oh, hello! Sorry"
	line "for running off"
	cont "like that."
	
	para "You were a tre-"
	line "mendous help!"
	
	para "I've just been"
	line "trying to figure"
	cont "out how to open"
	cont "this gate…"
	
	para "…"
	
	para "So, you came from"
	line "downstairs and no"
	cont "switch in sight,"
	cont "huh?"
	
	para "Well, I think I"
	line "may have an idea,"
	cont "hehe."
	
	para "3…"
	
	para "2…"
	
	para "1…"
	
	para "Up you go!"
	done
	
JanineChuckText2:
	text "No luck? Okay, one"
	line "more time!"
	done
	
JanineFinalText:
	text "TEAM ROCKET!? I"
	line "thought that you"
	cont "crooks disbanded!"
	
	para "And why speaking"
	line "this way are you?"
	done
	
ForeignRocket1Text:
	text "Secret it is my"
	line "mission, so tell"
	cont "you I not!"

	para "But! If win you do"
	line "versus me, a man I"

	para "be and mine secret"
	line "to you I tell."
	done
	
DoorSwitchText:
	text "The door switch!"
	line "Better press it."
	done
	
DefeatedText:
	text "Wow, she swept us"
	line "all away."
	done
	
ScaryText:
	text "That VENOMOTH is"
	line "scary!"
	
	para "It paralyzed my"
	line "RATTATA."
	done
	
MaleCaptiveText:
	text "What's going on?"
	line "You have to help"
	cont "us get out of"
	cont "here!"
	done
	
MaleCaptiveText2:
	text "Wow, you're both"
	line "a great trainer"
	cont "and person."
	
	para "You remind me of"
	line "a kid who helped"
	
	para "free us in SILPH"
	line "CO. HQ, three"
	cont "years ago."
	done
	
FemaleCaptiveText:
	text "Please, save us!"
	line "There's a switch"

	para "below one of the"
	line "desks that opens"
	cont "the gate ahead."
	done

FemaleCaptiveText2:
	text "My hero!"
	done
	
MeetingAboutText:
	text "The boss and some"
	line "TEAM ROCKET guy"
	
	para "are about to have"
	line "a meeting."
	done
	
BikerDwayneSeenText:
	text "Another intruder?"
	done

BikerDwayneBeatenText:
	text "Kids these days…"
	done

BikerDwayneAfterBattleText:
	text "Huh, no wonder you"
	line "were able to beat"
	cont "ZEKE."
	done

BikerHarrisSeenText:
	text "The cops shut down"
	line "our UNDERGROUND"

	para "PATH! That really"
	line "fries me!"
	
	para "But this place is"
	line "much better for"
	cont "hanging out."
	
	para "We have a whole"
	line "warehouse now!"
	done

BikerHarrisBeatenText:
	text "Wiped out by some"
	line "punk from JOHTO…"
	done

BikerHarrisAfterBattleText:
	text "Well, our boss is"
	line "about to make us"
	
	para "rich, so I guess"
	line "I'm still the one"
	
	para "laughing in the"
	line "end, hahaha."
	done
	
PaxtonSeenText:
	text "What's a kid like"
	line "you doing here?"
	
	para "We have important"
	line "business to take"
	cont "care of."
	
	para "Intercepting some"
	line "shipment from the"
	
	para "SILPH CO. HQ just"
	line "made the KANTO"
	cont "FEDERATION rich!"
	
	para "Wahahahahaha!"
	
	para "Now, how about we"
	line "celebrate?"
	
	para "It's not like I'm"
	line "about to let you"
	cont "walk out, kid."
	done

PaxtonBeatenText:
	text "No, no… the KANTO"
	line "FEDERATION cannot"
	cont "fall!"
	done

PaxtonAfterText:
	text "Well, at least we"
	line "have our money…"
	
	para "Okay boys, time"
	line "to roll out!"
	done
	
BuckSeenText:
	text "So you're the one"
	line "causing all that"
	cont "ruckus below."
	
	para "I'll show you the"
	line "KANTO FEDERATION"
	cont "means business!"
	done

BuckBeatenText:
	text "Who… are you?"
	done

BuckAfterBattleText:
	text "Are you in league"
	line "with JANINE?"
	done
	
ForretressText:
	text "Tresssssss!"
	done

SafariZoneMainOffice2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 14, SAFARI_ZONE_MAIN_OFFICE, 3
	warp_event  7, 17, FUCHSIA_CITY, 7
	warp_event  6, 17, FUCHSIA_CITY, 7
	warp_event 12, 11, SAFARI_ZONE_MAIN_OFFICE, 4
	warp_event 13, 11, SAFARI_ZONE_MAIN_OFFICE, 5
	warp_event  3, 12, SAFARI_ZONE_MAIN_OFFICE, 6
	warp_event 14,  8, SAFARI_ZONE_MAIN_OFFICE, 7
	warp_event 11, 10, SAFARI_ZONE_MAIN_OFFICE, 8
	warp_event  9, 10, SAFARI_ZONE_MAIN_OFFICE, 9
	warp_event 13, 10, SAFARI_ZONE_MAIN_OFFICE, 10
	warp_event  3,  5, SAFARI_ZONE_MAIN_OFFICE, 11
	warp_event 17, 11, SAFARI_ZONE_MAIN_OFFICE2, 13
	warp_event  5, 11, SAFARI_ZONE_MAIN_OFFICE2, 12

	def_coord_events

	def_bg_events
	bg_event 13,  7, BGEVENT_READ, DoorSwitch
	bg_event 11, 17, BGEVENT_ITEM, SilphDelivFullHeal

	def_object_events
	object_event  0,  5, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, RandomBiker2, EVENT_BEAT_KANTO_FEDERATION
	object_event  3,  9, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_TRAINER, 2, TrainerBikerBuck, EVENT_BEAT_KANTO_FEDERATION
	object_event  9, 15, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerBikerDwayne, EVENT_BEAT_KANTO_FEDERATION
	object_event  6, 17, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, RandomBiker3, EVENT_BEAT_KANTO_FEDERATION
	object_event  7, 17, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, RandomBiker4, EVENT_BEAT_KANTO_FEDERATION
	object_event 16,  3, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBikerHarris, EVENT_BEAT_KANTO_FEDERATION
	object_event  7, 14, SPRITE_JANINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, JanineSurrounded, EVENT_BEAT_BIKER_DWAYNE
	object_event 16,  9, SPRITE_JANINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, JanineChuck, EVENT_NO_JANINE
	object_event 10,  4, SPRITE_JANINE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, JanineFinal, EVENT_BEAT_KANTO_FEDERATION
	object_event  9,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ForeignRocket1, EVENT_BEAT_KANTO_FEDERATION
	object_event  8,  4, SPRITE_ROUGHNECK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FederationBoss, EVENT_BEAT_KANTO_FEDERATION
	object_event 18, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MaleCaptive, -1
	object_event 17, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FemaleCaptive, -1
	object_event  5,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilphDelivRareCandy, EVENT_SILPDELIV_RARE_CANDY
	object_event  7, 15, SPRITE_VENOMOTH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ForretressScript, EVENT_BEAT_BIKER_DWAYNE
	object_event  7, 16, SPRITE_RATTATA_BACK, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ForretressScript, EVENT_BEAT_BIKER_DWAYNE
	object_event  8, 15, SPRITE_FORRETRESS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ForretressScript, EVENT_BEAT_BIKER_DWAYNE
	