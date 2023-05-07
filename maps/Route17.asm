	object_const_def
	const ROUTE17_BIKER1
	const ROUTE17_BIKER2
	const ROUTE17_BIKER3
	const ROUTE17_BIKER4
	const ROUTE17_BIKER5
	const ROUTE17_BIKER6
	const ROUTE17_BIKER7
	const ROUTE17_BIKER8
	const ROUTE17_BIKER9
	const ROUTE17_BIKER10
	const ROUTE17_BIKER11
	const ROUTE17_POKE_BALL

Route17_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .AlwaysOnBike

.AlwaysOnBike:
	setflag ENGINE_ALWAYS_ON_BIKE
	setflag ENGINE_DOWNHILL
	endcallback

TrainerBikerCharles:
	trainer BIKER, CHARLES, EVENT_BEAT_BIKER_CHARLES, BikerCharlesSeenText, BikerCharlesBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerCharlesAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerRiley:
	trainer BIKER, RILEY, EVENT_BEAT_BIKER_RILEY, BikerRileySeenText, BikerRileyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerRileyAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerJoel:
	trainer BIKER, JOEL, EVENT_BEAT_BIKER_JOEL, BikerJoelSeenText, BikerJoelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerJoelAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerGlenn:
	trainer BIKER, GLENN, EVENT_BEAT_BIKER_GLENN, BikerGlennSeenText, BikerGlennBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerGlennAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBikerDal:
	trainer BIKER, DAL, EVENT_BEAT_DAL, DalSeenText, DalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DalAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBikerReese:
	trainer BIKER, REESE, EVENT_BEAT_REESE, ReeseSeenText, ReeseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ReeseAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBikerDan:
	trainer BIKER, DAN, EVENT_BEAT_DAN, DanSeenText, DanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DanAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBikerTeddy:
	trainer BIKER, TEDDY, EVENT_BEAT_TEDDY, TeddySeenText, TeddyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeddyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBikerMarkey:
	trainer BIKER, MARKEY, EVENT_BEAT_MARKEY, MarkeySeenText, MarkeyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MarkeyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBikerJacob:
	trainer BIKER, JACOB, EVENT_BEAT_JACOB, JacobSeenText, JacobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JacobAfterBattleText
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

Route17Nugget:
	itemball NUGGET

Route17HiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_MAX_ELIXER

BikerRileySeenText:
	text "Hey, you! You're"
	line "from JOHTO, huh?"
	done

BikerRileyBeatenText:
	text "Whoa, you kick!"
	done

BikerRileyAfterBattleText:
	text "Don't get cocky,"
	line "you JOHTO punk!"
	done

BikerJoelSeenText:
	text "Wow. That's a cool"
	line "BICYCLE!"
	done

BikerJoelBeatenText:
	text "But you don't just"
	line "look cool…"
	done

BikerJoelAfterBattleText:
	text "I look cool, but"
	line "I'm weak, so I'm"
	cont "not really cool."

	para "I have to train"
	line "harder…"
	done

BikerGlennSeenText:
	text "Hey! Want to have"
	line "a speed battle?"
	done

BikerGlennBeatenText:
	text "Yikes! You've got"
	line "awesome torque!"
	done

BikerGlennAfterBattleText:
	text "Hands-free riding"
	line "is considered cool"
	cont "on CYCLING ROAD."
	done

BikerCharlesSeenText:
	text "We're fearless"
	line "highway stars!"
	done

BikerCharlesBeatenText:
	text "Arrrgh! Crash and"
	line "burn!"
	done

BikerCharlesAfterBattleText:
	text "Reckless driving"
	line "causes accidents!"
	cont "Take it easy!"
	done
	
DalSeenText:
	text "You're gonna lose!"
	line "I've got a hunch!"
	done

DalBeatenText:
	text "Maybe my hunch was"
	line "a little off…"
	done

DalAfterBattleText:
	text "You're so cool!"
	
	para "You don't do any-"
	line "thing halfway!"
	done
	
ReeseSeenText:
	text "Hey, you!"
	line "You're from JOHTO,"
	cont "huh?"
	done

ReeseBeatenText:
	text "Whoa, you're"
	line "kickin'!"
	done

ReeseAfterBattleText:
	text "I wasn't feeling"
	line "my best today,"
	cont "that's all!"
	done
	
DanSeenText:
	text "Parara parapara"
	line "para-parara!"
	
	para "My horn's got a"
	line "great melody to"
	cont "it, don't you"
	cont "think?"
	done

DanBeatenText:
	text "Paaraaraaaaa…"
	done

DanAfterBattleText:
	text "I love this me-"
	line "lancholic melo-"
	cont "dy."
	
	para "It really suits"
	line "me well…"
	done
	
TeddySeenText:
	text "Hey, that's some"
	line "cool bike you're"
	cont "riding!"
	done

TeddyBeatenText:
	text "Great job."
	done

TeddyAfterBattleText:
	text "I love the way you"
	line "do battle, too!"

	para "Consider me a fan!"
	done
	
MarkeySeenText:
	text "Hey hey hey!"
	line "You're in my way!"
	cont "IN MY WAY!"
	done

MarkeyBeatenText:
	text "I lost. I lost!"
	done

MarkeyAfterBattleText:
	text "Would you like to"
	line "join my team?"

	para "We're part of the"
	line "KANTO FEDERATION!"
	done
	
JacobSeenText:
	text "Modding my bike is"
	line "really expensive!"
	
	para "I need a job!"
	done

JacobBeatenText:
	text "Argh. I failed!"
	done

JacobAfterBattleText:
	text "Bike?"
	line "Oh, I was talking"
	cont "about my BICYCLE!"
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
	text "Huh, you got some"
	line "nerve!"
	cont "That's awesome!"
	done

Route17_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 82, ROUTE_17_ROUTE_18_GATE, 1
	warp_event 17, 83, ROUTE_17_ROUTE_18_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  8, 77, BGEVENT_ITEM, Route17HiddenMaxElixer

	def_object_events
	object_event  9, 39, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBikerRiley, -1
	object_event  9, 68, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBikerJoel, -1
	object_event  3, 53, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerGlenn, -1
	object_event  6, 80, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerCharles, -1
	object_event  6,  3, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerDal, -1
	object_event  5, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerReese, -1
	object_event  2, 28, SPRITE_BIKER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBikerDan, -1
	object_event  3, 73, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBikerTeddy, -1
	object_event 18, 17, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerMarkey, -1
	object_event 14, 33, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerJacob, -1
	object_event 16, 52, SPRITE_BIKER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBikerTheron, -1
	object_event  9, 53, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route17Nugget, EVENT_ROUTE_17_HIDDEN_MAX_ETHER
