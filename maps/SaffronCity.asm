	object_const_def
	const SAFFRONCITY_LASS1
	const SAFFRONCITY_POKEFAN_M1
	const SAFFRONCITY_COOLTRAINER_M
	const SAFFRONCITY_COOLTRAINER_F
	const SAFFRONCITY_FISHER
	const SAFFRONCITY_YOUNGSTER1
	const SAFFRONCITY_YOUNGSTER2
	const SAFFRONCITY_LASS2
	const SAFFRONCITY_POKEFAN_M2
	const SAFFRONCITY_MISTY

SaffronCity_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_SAFFRON_HOOH

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	
.DummyScene0:
.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_SAFFRON
	endcallback
	
Saffron_HoohScene:
	special FadeOutMusic
	showemote EMOTE_SHOCK, PLAYER, 20
	showemote EMOTE_SHOCK, SAFFRONCITY_POKEFAN_M1, 20
	showemote EMOTE_SHOCK, SAFFRONCITY_MISTY, 20
	turnobject PLAYER, DOWN
	turnobject SAFFRONCITY_POKEFAN_M1, DOWN
	cry HO_OH
	opentext
	writetext SaffronHoOhText
	pause 40
	waitbutton
	cry HO_OH
	turnobject PLAYER, LEFT
	pause 10
	turnobject SAFFRONCITY_MISTY, LEFT
	turnobject SAFFRONCITY_POKEFAN_M1, LEFT
	pause 20
	closetext
	reloadmapafterbattle
	pause 20
	refreshscreen
	pokepic HO_OH
	waitbutton
	closepokepic
	setval HO_OH
	special UnusedSetSeenMon
	opentext
	writetext SaffronHoOh2Text
	waitbutton
	closetext
	pause 20
	turnobject SAFFRONCITY_MISTY, UP
	pause 20
	showemote EMOTE_SHOCK, SAFFRONCITY_MISTY, 20
	pause 30
	applymovement SAFFRONCITY_MISTY, MistyMovement1
	opentext
	writetext MistyText
	waitbutton
	closetext
	turnobject SAFFRONCITY_MISTY, LEFT
	pause 20
	showemote EMOTE_HEART, SAFFRONCITY_MISTY, 25
	applymovement SAFFRONCITY_MISTY, MistyMovement2
	setevent EVENT_SAFFRONCITY_MISTY
	setscene SCENE_FINISHED
	disappear SAFFRONCITY_MISTY
	end

SaffronCityLass1Script:
	faceplayer
	opentext
	writetext SaffronCityLass1Text
	waitbutton
	closetext
	end

SaffronCityPokefanMScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iffalse .SawHooh
	writetext SaffronCityPokefanMText
	waitbutton
	closetext
	end

.SawHooh:
	writetext SaffronCityPokefanMText_SawHooh
	waitbutton
	closetext
	end

SaffronCityCooltrainerMScript:
	jumptextfaceplayer SaffronCityCooltrainerMText

SaffronCityCooltrainerFScript:
	jumptextfaceplayer SaffronCityCooltrainerFText

SaffronCityFisherScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SaffronCityFisherText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SaffronCityFisherText_ReturnedMachinePart
	waitbutton
	closetext
	end

SaffronCityYoungster1Script:
	jumptextfaceplayer SaffronCityYoungster1Text

SaffronCityYoungster2Script:
	jumptextfaceplayer SaffronCityYoungster2Text

SaffronCityLass2Script:
	jumptextfaceplayer SaffronCityLass2Text

SaffronCitySign:
	jumptext SaffronCitySignText

SaffronGymSign:
	jumptext SaffronGymSignText

FightingDojoSign:
	jumptext FightingDojoSignText

SilphCoSign:
	jumptext SilphCoSignText

MrPsychicsHouseSign:
	jumptext MrPsychicsHouseSignText

SaffronCityMagnetTrainStationSign:
	jumptext SaffronCityMagnetTrainStationSignText

SaffronCityPokecenterSign:
	jumpstd PokecenterSignScript

SaffronCityMartSign:
	jumpstd MartSignScript
	
SaffronCityGymBlockerScript:
	jumptextfaceplayer SaffronCityBlockerText
	
SaffronMoveDeleterSign:
	jumptext SaffronMoveDeleterSignText
	
MistyMovement1:
	step RIGHT
	step_end
	
MistyMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
SaffronCityBlockerText:
	text "The GYM is closed"
	line "until the problem"

	para "at the POWER PLANT"
	line "is resolved."
	
	para "No power, no warps"
	line "right?"
	done
	
SaffronHoOhText:
	text "Shaoooh!"
	done
	
SaffronHoOh2Text:
	text "The brilliant"
	line "rainbow-colored"

	para "#MON flew in"
	line "the direction of"
	cont "CELADON CITY!"
	done
	
MistyText:
	text "Wow, wasn't that"
	line "incredible?"

	para "That must've been"
	line "HO-OH!"

	para "It seems to have"
	line "dropped this GOLD"
	cont "WING…"

	para "I think I'll hand"
	line "it to my friend"
	cont "BROCK."
	
	para "He runs a GYM in"
	line "PEWTER CITY and"
	cont "loves these sorts"
	cont "of things!"
	
	para "Or maybe I should"
	line "donate it to the"
	cont "museum, tee hee."
	
	para "…"
	
	para "Oh sorry, I have"
	line "to go!"
	
	para "I have a cute date"
	line "later. Bye!"
	done

SaffronCityLass1Text:
	text "A little girl who"
	line "is an expert at"

	para "mimicking people"
	line "lives here."

	para "She even mimics"
	line "the people she's"

	para "conversing with."
	line "It's confusing."
	done

SaffronCityPokefanMText:
	text "You came out from"
	line "JOHTO?"

	para "You can zip back"
	line "home by hopping on"
	cont "the MAGNET TRAIN."
	done
	
SaffronCityPokefanMText_SawHooh:
	text "D- did you just"
	line "see that?"

	para "The shadow of that"
	line "#MON blotted"
	cont "out the sun!"
	done

SaffronCityCooltrainerMText:
	text "I went to the GYM,"
	line "raring for battles"
	cont "against trainers…"

	para "It turns out, I"
	line "stumbled into the"

	para "unused GYM next"
	line "door."

	para "Boy, I was pretty"
	line "embarrassed."
	done

SaffronCityCooltrainerFText:
	text "This is SILPH CO.,"
	line "famous for #MON"
	cont "merchandise."

	para "In the past, TEAM"
	line "ROCKET wanted the"

	para "company because of"
	line "that."
	done

SaffronCityFisherText:
	text "Chew… Chew…"

	para "I hear there's big"
	line "trouble brewing at"
	cont "the POWER PLANT."

	para "Chew… Chew…"
	done

SaffronCityFisherText_ReturnedMachinePart:
	text "Chew… Chew…"

	para "I hear there was"
	line "big trouble at the"
	cont "POWER PLANT."

	para "Chew… Chew…"
	line "Haaah, I'm full!"
	done

SaffronCityYoungster1Text:
	text "Going into an"
	line "alley for the"

	para "first time makes"
	line "me sorta anxious."
	done
	
SaffronCityYoungster2Text:
	text "There's a place"
	line "called TRAINER"

	para "HOUSE in VIRIDIAN"
	line "where trainers"

	para "gather from all"
	line "over the place."
	done

SaffronCityLass2Text:
	text "Our city was"
	line "featured on a"
	cont "radio program."

	para "It's nice to hear"
	line "praise for your"

	para "city, but it's a"
	line "bit embarrassing"
	cont "too."
	done

SaffronCitySignText:
	text "SAFFRON CITY"

	para "Shining, Golden"
	line "Land of Commerce"
	done

SaffronGymSignText:
	text "SAFFRON CITY"
	line "#MON GYM"
	cont "LEADER: SABRINA"

	para "The Master of"
	line "Psychic #MON!"
	done

FightingDojoSignText:
	text "Everyone welcome!"
	line "FIGHTING DOJO"
	done

SilphCoSignText:
	text "SILPH CO. HEAD"
	line "OFFICE BUILDING"
	done

MrPsychicsHouseSignText:
	text "MR.PSYCHIC'S"
	line "HOUSE"
	done

SaffronCityMagnetTrainStationSignText:
	text "SAFFRON CITY"
	line "MAGNET TRAIN"
	cont "STATION"
	done
	
SaffronMoveDeleterSignText:
	text "MOVE DELETER &"
	line "REMINDER'S HOUSE"
	done

SaffronCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 26,  3, FIGHTING_DOJO, 1
	warp_event 34,  3, SAFFRON_GYM, 1
	warp_event 25, 11, SAFFRON_MART, 2
	warp_event  9, 29, SAFFRON_POKECENTER_1F, 1
	warp_event 27, 29, MR_PSYCHICS_HOUSE, 1
	warp_event  8,  3, SAFFRON_MAGNET_TRAIN_STATION, 2
	warp_event 18, 21, SILPH_CO_1F, 1
	warp_event  9, 11, COPYCATS_HOUSE_1F, 1
	warp_event 18,  3, ROUTE_5_SAFFRON_GATE, 3
	warp_event  0, 24, ROUTE_7_SAFFRON_GATE, 3
	warp_event  0, 25, ROUTE_7_SAFFRON_GATE, 4
	warp_event 16, 33, ROUTE_6_SAFFRON_GATE, 1
	warp_event 17, 33, ROUTE_6_SAFFRON_GATE, 2
	warp_event 39, 22, ROUTE_8_SAFFRON_GATE, 1
	warp_event 39, 23, ROUTE_8_SAFFRON_GATE, 2
	warp_event 32, 21, SAFFRON_MOVEDELETER, 1

	def_coord_events
	coord_event 16, 31, SCENE_DEFAULT, Saffron_HoohScene
	coord_event 17, 31, SCENE_DEFAULT, Saffron_HoohScene

	def_bg_events
	bg_event 21,  5, BGEVENT_READ, SaffronCitySign
	bg_event 33,  5, BGEVENT_READ, SaffronGymSign
	bg_event 25,  5, BGEVENT_READ, FightingDojoSign
	bg_event 15, 21, BGEVENT_READ, SilphCoSign
	bg_event 25, 29, BGEVENT_READ, MrPsychicsHouseSign
	bg_event 11,  5, BGEVENT_READ, SaffronCityMagnetTrainStationSign
	bg_event 10, 29, BGEVENT_READ, SaffronCityPokecenterSign
	bg_event 26, 11, BGEVENT_READ, SaffronCityMartSign
	bg_event 29, 21, BGEVENT_READ, SaffronMoveDeleterSign

	def_object_events
	object_event  7, 14, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityLass1Script, -1
	object_event 19, 30, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronCityPokefanMScript, -1
	object_event 30,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityCooltrainerMScript, -1
	object_event 12, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityCooltrainerFScript, -1
	object_event 31, 15, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityFisherScript, -1
	object_event 15, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SaffronCityYoungster1Script, -1
	object_event 35, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityYoungster2Script, -1
	object_event 19,  8, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityLass2Script, -1
	object_event 34,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronCityGymBlockerScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	object_event 14, 31, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SAFFRONCITY_MISTY
