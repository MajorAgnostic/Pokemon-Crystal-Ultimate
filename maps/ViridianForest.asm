	object_const_def ; object_event constants
	const FOREST_BUG_CATCHER1
	const FOREST_BUG_CATCHER2
	const FOREST_BUG_CATCHER3
	const FOREST_BUG_CATCHER4
	const FOREST_POKE_BALL1
	const FOREST_POKE_BALL2
	const FOREST_POKE_BALL3

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerBugCatcherDane:
	trainer BUG_CATCHER, DANE, EVENT_BEAT_BUG_CATCHER_DANE, BugCatcherDaneSeenText, BugCatcherDaneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDaneAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherDion:
	trainer BUG_CATCHER, DION, EVENT_BEAT_BUG_CATCHER_DION, BugCatcherDionSeenText, BugCatcherDionBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDionAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherEllis:
	trainer BUG_CATCHER, ELLIS, EVENT_BEAT_BUG_CATCHER_ELLIS, BugCatcherEllisSeenText, BugCatcherEllisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEllisAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherAbner:
	trainer BUG_CATCHER, ABNER, EVENT_BEAT_BUG_CATCHER_ABNER, BugCatcherAbnerSeenText, BugCatcherAbnerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherAbnerAfterBattleText
	waitbutton
	closetext
	end

ForestFullRestore:
	itemball LEAF_STONE

ForestMaxPotion:
	itemball MAX_POTION
	
ForestBigMushroom:
	itemball BIG_MUSHROOM

ForestHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_2_HIDDEN_MAX_ETHER

ForestHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ROUTE_2_HIDDEN_FULL_HEAL

ForestHiddenDireHit:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_2_HIDDEN_FULL_RESTORE
	
ForestHiddenBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_ROUTE_2_BIGMUSHROOM
	
ForestHiddenBigMushroom2:
	hiddenitem BIG_MUSHROOM, EVENT_ROUTE_2_BIGMUSHROOM2
	
PewterSign:
	jumptext PewterSignText

PoisonSign:
	jumptext PoisonSignText
	
ForestSign:
	jumptext ForestSignText
	
HiddenSign:
	jumptext HiddenSignText
	
BugCatcherDaneSeenText:
	text "Welcome to VIRI-"
	line "DIAN FOREST."
	
	para "Enjoy my bug-type"
	line "#MON!"
	done

BugCatcherDaneBeatenText:
	text "That's wonderful…"
	done

BugCatcherDaneAfterBattleText:
	text "Pretty impressive!"

	para "I'm sure you can"
	line "go anywhere with"
	cont "that skill!"
	done
	
BugCatcherDionSeenText:
	text "Shh! Be quiet! The"
	line "bug #MON will"
	cont "run away!"
	done

BugCatcherDionBeatenText:
	text "Phew…"
	done

BugCatcherDionAfterBattleText:
	text "The sounds of mun-"
	line "ching on grass,"

	para "walking on crunchy"
	line "leaves, swimming"
	cont "in puddles…"
	
	para "For bug #MON"
	line "fans, knowing how"
	
	para "to distinguish be-"
	line "tween them is key!"
	done
	
BugCatcherEllisSeenText:
	text "There is nothing"
	line "more efficient and"

	para "beautiful in this"
	line "world than a bug-"
	cont "type #MON."
	done

BugCatcherEllisBeatenText:
	text "We lost!"
	done

BugCatcherEllisAfterBattleText:
	text "If this is it, I"
	line "don't mind losing!"
	done
	
BugCatcherAbnerSeenText:
	text "There are many pe-"
	line "ople out there who"

	para "prefer solid over"
	line "squishy bug #-"
	cont "MON."
	done

BugCatcherAbnerBeatenText:
	text "You worked hard,"
	line "my lovely #MON…"
	done

BugCatcherAbnerAfterBattleText:
	text "#MON type does"
	line "not matter as long"
	
	para "as you find them"
	line "cute!"
	done
	
PewterSignText:
	text "PEWTER CITY lies"
	line "ahead."
	done
	
PoisonSignText:
	text "TRAINER TIPS"

	para "For poison, use"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTs!"
	done

ForestSignText:
	text "Deep, dark VIRI-"
	line "DIAN FOREST."
	
	para "Be on the lookout"
	line "for tasty mush-"
	cont "rooms."
	done
	
HiddenSignText:
	text "TRAINER TIPS"

	para "There are hidden"
	line "items nearby!"
	done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, ROUTE_2_NORTHGATE, 3
	warp_event 19, 49, ROUTE_2_SOUTHGATE, 3
	warp_event 19, 48, ROUTE_2_SOUTHGATE, 4

	def_coord_events

	def_bg_events
	bg_event 27,  4, BGEVENT_ITEM, ForestHiddenMaxEther
	bg_event 10, 13, BGEVENT_ITEM, ForestHiddenFullHeal
	bg_event  3, 43, BGEVENT_ITEM, ForestHiddenDireHit
	bg_event 32, 43, BGEVENT_ITEM, ForestHiddenBigMushroom
	bg_event 15,  6, BGEVENT_ITEM, ForestHiddenBigMushroom2
	bg_event 17, 43, BGEVENT_READ, ForestSign
	bg_event 25, 41, BGEVENT_READ, PoisonSign
	bg_event  5,  5, BGEVENT_READ, PewterSign
	bg_event 15, 13, BGEVENT_READ, HiddenSign

	def_object_events
	object_event 31, 31, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDane, -1
	object_event 32, 19, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherDion, -1
	object_event 24,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherEllis, -1
	object_event  2, 11, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherAbner, -1
	object_event  2, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ForestFullRestore, EVENT_ROUTE_2_DIRE_HIT
	object_event 27, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ForestMaxPotion, EVENT_ROUTE_2_MAX_POTION
	object_event 14, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ForestBigMushroom, EVENT_ROUTE_2_HIDDEN_BIGMUSHROOM
