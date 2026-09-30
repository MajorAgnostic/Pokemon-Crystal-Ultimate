	object_const_def
	const PEWTERMUSEUM1F_SUPER_NERD
	const PEWTERMUSEUM1F_RECEPTIONIST
	const PEWTERMUSEUM1F_GRAMPS
	const PEWTERMUSEUM1F_MAN
	const PEWTERMUSEUM1F_SCIENTIST
	const PEWTERMUSEUM1F_KID1
	const PEWTERMUSEUM1F_KID2
	const PEWTERMUSEUM1F_GUARD1
	const PEWTERMUSEUM1F_GUARD2
	const PEWTERMUSEUM1F_RHYDON
	const PEWTERMUSEUM1F_TROPHY
	const PEWTERMUSEUM1F_POKEDEX

PewterMuseum1F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMuseumSuperNerdScript:
	jumptextfaceplayer PewterMuseumSuperNerdText
	
Museum1FReceptionistScript:
	jumptextfaceplayer PewterMuseumReceptionistText
	
Museum1FGuardScript:
	jumptextfaceplayer PewterMuseumGuardText
	
Museum1FKid1Script:
	jumptextfaceplayer Museum1FKid1Text
	
Museum1FKid2Script:
	jumptextfaceplayer Museum1FKid2Text
	
Museum1FGrampsScript:
	jumptextfaceplayer Museum1FGrampsText
	
Museum1FManScript:
	jumptextfaceplayer Museum1FManText
	
Museum1FScientistScript:
	jumptextfaceplayer Museum1FScientistText

PewterMuseumRhydon:
	opentext
	writetext PewterMuseumRhydonText
	cry RHYDON
	waitbutton
	closetext
	end
	
ScienceAwardScript:
	jumptextfaceplayer ScienceAwardText
	
SciencePaperScript:
	jumptextfaceplayer SciencePaperText
	
PewterCityFossil1Sign:
	jumptext PewterCityFossil1SignText
	
PewterCityFossil2Sign:
	jumptext PewterCityFossil2SignText
	
PewterCityMeteoriteSign:
	jumptext PewterCityMeteoriteSignText

PewterMuseumSuperNerdText:
	text "Look at my RHYDON"
	line "shake!"
	done
	
PewterMuseumReceptionistText:
	text "Welcome!"

	para "Thanks to a gene-"
	line "rous donation by"
	cont "SILPH CO., entry"
	cont "is free of charge!"

	para "Please enjoy your"
	line "visit."
	done
	
Museum1FGrampsText:
	text "I'm grateful for"
	line "my long life."

	para "Never did I think"
	line "I would get to see"
	
	para "the bones of a"
	line "dragon!"
	done
	
Museum1FManText:
	text "These meteorites…"
	
	para "Are they the same"
	line "as MOON STONE?"
	done
	
Museum1FScientistText:
	text "I wonder if these"
	line "fossils are older"
	cont "than humans…"
	done
	
Museum1FKid1Text:
	text "You can see a huge"
	line "skeleton through"
	cont "this glass!"

	para "Do you think we'll"
	line "fall through?"
	done
	
Museum1FKid2Text:
	text "Woah, it's so big!"

	para "How does it go up"
	line "into space?"

	para "And what is space,"
	line "anyway?"
	done
	
PewterCityFossil1SignText:
	text "Fossils of the"
	line "DOME #MON:"
	
	para "KABUTOPS and"
	line "KABUTO."

	para "Primitive and"
	line "rare species."
	done
	
PewterCityFossil2SignText:
	text "Fossils of the"
	line "HELIX #MON:"
	
	para "OMASTAR and"
	line "OMANYTE."

	para "Primitive and"
	line "rare species."
	done
	
PewterCityMeteoriteSignText:
	text "These meteorites"
	line "were recovered"
	cont "from MT.MOON."
	
	para "Some meteorites"
	line "are known to emit"

	para "a strange energy,"
	line "affecting #MON"
	cont "evolution."
	done
	
PewterMuseumGuardText:
	text "Please enjoy your"
	line "visit."
	done

PewterMuseumRhydonText:
	text "RHYDON: Gugooh!"
	done
	
ScienceAwardText:
	text "It's an award for"
	line "the Pewter Space"
	cont "Team's successful"
	cont "first launch into"
	cont "space."
	
	para "It was awarded by"
	line "the MOSSDEEP SPACE"
	cont "CENTER."
	done

SciencePaperText:
	text "This is a research"
	line "paper published by"
	cont "the Pewter Space"
	cont "Team."
	
	para "There are lots of"
	line "difficult words,"
	cont "just like in PROF."
	cont "ELM's books."
	done

PewterMuseum1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12, 17, PEWTER_CITY, 6
	warp_event 13, 17, PEWTER_CITY, 6
	warp_event  9, 17, PEWTER_MUSEUM_2F, 1

	def_coord_events

	def_bg_events
	bg_event 13, 14, BGEVENT_READ, Museum1FReceptionistScript
	bg_event  4, 16, BGEVENT_READ, PewterCityFossil1Sign
	bg_event  4, 13, BGEVENT_READ, PewterCityFossil2Sign
	bg_event  4,  7, BGEVENT_READ, PewterCityMeteoriteSign

	def_object_events
	object_event 21,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMuseumSuperNerdScript, -1
	object_event 14, 14, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum1FReceptionistScript, -1
	object_event 16,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1FGrampsScript, -1
	object_event  8,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1FManScript, -1
	object_event  8, 14, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum1FScientistScript, -1
	object_event 17,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Museum1FKid1Script, -1
	object_event  4,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Museum1FKid2Script, -1
	object_event 11,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum1FGuardScript, -1
	object_event 10,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Museum1FGuardScript, -1
	object_event 21,  7, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, PewterMuseumRhydon, -1
	object_event  8,  2, SPRITE_SILVER_TROPHY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ScienceAwardScript, -1
	object_event  2,  2, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SciencePaperScript, -1
