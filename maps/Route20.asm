	object_const_def
	const ROUTE20_SWIMMER_GIRL1
	const ROUTE20_SWIMMER_GIRL2
	const ROUTE20_SWIMMER_GUY1
	const ROUTE20_SWIMMER_GIRL3
	const ROUTE20_SWIMMER_GUY2
	const ROUTE20_SWIMMER_FISHER

Route20_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmerfNicole:
	trainer SWIMMERF, NICOLE, EVENT_BEAT_SWIMMERF_NICOLE, SwimmerfNicoleSeenText, SwimmerfNicoleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNicoleAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfLori:
	trainer SWIMMERF, LORI, EVENT_BEAT_SWIMMERF_LORI, SwimmerfLoriSeenText, SwimmerfLoriBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfLoriAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermCameron:
	trainer SWIMMERM, CAMERON, EVENT_BEAT_SWIMMERM_CAMERON, SwimmermCameronSeenText, SwimmermCameronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermCameronAfterBattleText
	waitbutton
	closetext
	end
	
TrainerMina:
	trainer SWIMMERF, MINA, EVENT_BEAT_MINA, MinaSeenText, MinaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MinaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerFrankie:
	trainer SWIMMERM, FRANKIE, EVENT_BEAT_FRANKIE, FrankieSeenText, FrankieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FrankieAfterBattleText
	waitbutton
	closetext
	end
	
TrainerMurphy:
	trainer FISHER, MURPHY, EVENT_BEAT_MURPHY, MurphySeenText, MurphyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MurphyAfterBattleText
	waitbutton
	closetext
	end

CinnabarGymSign:
	jumptext CinnabarGymSignText
	
SeafoamSign:
	jumptext SeafoamSignText

SwimmerfNicoleSeenText:
	text "I feel so much"
	line "lighter in water."
	done

SwimmerfNicoleBeatenText:
	text "Oh, no!"
	done

SwimmerfNicoleAfterBattleText:
	text "Swimming exercises"
	line "your full body."

	para "It's really good"
	line "for you."
	done

SwimmerfLoriSeenText:
	text "What an impressive"
	line "collection of GYM"

	para "BADGES. We should"
	line "battle!"
	done

SwimmerfLoriBeatenText:
	text "No!"
	done

SwimmerfLoriAfterBattleText:
	text "SURF is no longer"
	line "the only HM move"
	cont "you use in water."
	done

SwimmermCameronSeenText:
	text "I guess it's im-"
	line "possible to swim"

	para "all the way to"
	line "JOHTO."
	done

SwimmermCameronBeatenText:
	text "Aiyah!"
	done

SwimmermCameronAfterBattleText:
	text "Besides the sea, I"
	line "can also swim in"
	cont "ponds and rivers."
	done
	
MinaSeenText:
	text "Mmph? Mmmph mmmph?"
	line "Mmmmph mmmmmpphh!!"
	done

MinaBeatenText:
	text "Pwah!"
	done

MinaAfterBattleText:
	text "I was trying to"
	line "see how long I can"
	cont "hold my breath!"
	done
	
FrankieSeenText:
	text "Gotta keep going!"
	done

FrankieBeatenText:
	text "Glug…"
	done

FrankieAfterBattleText:
	text "This arrogant guy"
	line "was at CINNABAR's"
	cont "volcano."
	done
	
MurphySeenText:
	text "Huh? I've caught a"
	line "trainer instead of"
	cont "a #MON!"
	done

MurphyBeatenText:
	text "My fishing line"
	line "got cut!"
	done

MurphyAfterBattleText:
	text "It's said that the"
	line "#MON that esca-"
	cont "ped were huge."
	
	para "It's the truth!"
	done

CinnabarGymSignText:
	text "SEAFOAM ISLANDS &"
	line "SEAFOAM GYM"
	cont "LEADER: BLAINE"
	done
	
SeafoamSignText:
	text "SEAFOAM ISLANDS"
	done

Route20_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 38,  9, SEAFOAM_ISLANDS_ENTRANCE, 1
	warp_event 30,  5, SEAFOAM_ISLANDS_ENTRANCE, 4

	def_coord_events

	def_bg_events
	bg_event 37, 11, BGEVENT_READ, CinnabarGymSign
	bg_event 33,  7, BGEVENT_READ, SeafoamSign

	def_object_events
	object_event 52,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 45, 13, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfLori, -1
	object_event 12, 13, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSwimmermCameron, -1
	object_event  4,  4, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerMina, -1
	object_event 21, 11, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFrankie, -1
	object_event 14,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerMurphy, -1
