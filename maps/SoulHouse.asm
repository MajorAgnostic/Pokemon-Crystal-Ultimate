	object_const_def
	const SOULHOUSE_MRFUJI
	const SOULHOUSE_TEACHER
	const SOULHOUSE_LASS
	const SOULHOUSE_GRANNY

SoulHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrFuji:
	jumptextfaceplayer MrFujiText

SoulHouseTeacherScript:
	jumptextfaceplayer SoulHouseTeacherText

SoulHouseLassScript:
	jumptextfaceplayer SoulHouseLassText

SoulHouseGrannyScript:
	checkevent BEAT_GHOST
	iftrue .BeatGhost
	checkevent OFFERED_METAL_POWDER
	iftrue .GaveMetalPowder
	setevent SPOKE_TO_GRANNY
	jumptextfaceplayer SoulHouseGrannyText
.BeatGhost:
	jumptextfaceplayer SoulHouseGrannyText3
.GaveMetalPowder:
	jumptextfaceplayer SoulHouseGrannyText2
	
Grave:
	checkevent SPOKE_TO_GRANNY
	iffalse .End2
	checkevent GHOST_ACTIVATED
	iftrue .StartBattle
	checkevent OFFERED_METAL_POWDER
	iftrue .Offered
	opentext
	writetext GiveAwayPowderText
	yesorno
	iffalse .End
	takeitem THICK_CLUB
	iffalse .End3
	setevent OFFERED_METAL_POWDER
	writetext GaveAwayPowderText
	cry MAROWAK
	pause 30
	closetext
	end
	
.StartBattle:
	checkitem SQUIRTBOTTLE
	iffalse .End2
	opentext
	writetext UseSquirtbottleText2
	yesorno
	iffalse .End
	closetext
	playsound SFX_WATER_GUN
	waitsfx
	pause 15
	cry MAROWAK
	opentext
	writetext MarowakText
	pause 30
	closetext
	clearevent GHOST_ACTIVATED
	setevent BEAT_GHOST
	loadwildmon MAROWAK, 85
	loadvar VAR_BATTLETYPE, BATTLETYPE_SHINY
	startbattle
	reloadmapafterbattle
	end
	
.End:
	closetext
	end
	
.End2:
	end
	
.End3:
	writetext SoulTooBadText
	waitbutton
	closetext
	end
	
.Offered:
	jumptext OfferedPowderText
	
MarowakText:
	text "Begone…"
	line "Intruder…"
	done
	
UseSquirtbottleText2:
	text "???: No rest…"
	line "No rest… No rest…"
	
	para "Use the SQUIRT-"
	line "BOTTLE?"
	done
	
GiveAwayPowderText:
	text "Offer THICK"
	line "CLUB?"
	done
	
GaveAwayPowderText:
	text "<PLAYER> offered"
	line "the THICK CLUB."
	
	para "<……>"
	line "<……>"

	para "???: No rest…"
	line "No rest… No rest…"
	done
	
OfferedPowderText:
	text "A THICK CLUB has"
	line "been offered."
	done

MrFujiText:
	text "MR.FUJI: Welcome."

	para "Hmm… You appear to"
	line "be raising your"

	para "#MON in a kind"
	line "and loving manner."

	para "#MON lovers"
	line "come here to pay"

	para "their respects to"
	line "departed #MON."

	para "Please offer con-"
	line "dolences for the"

	para "souls of the de-"
	line "parted #MON."

	para "I'm sure that will"
	line "make them happy."
	done

SoulHouseTeacherText:
	text "There are other"
	line "graves of #MON"
	cont "here, I think."

	para "There are many"
	line "chambers that only"
	cont "MR.FUJI may enter."
	done

SoulHouseLassText:
	text "I came with my mom"
	line "to visit #MON"
	cont "graves…"
	done	

SoulHouseGrannyText:
	text "The #MON that"
	line "lived with me…"

	para "I loved them like"
	line "my grandchildren…"
	
	para "Child, would you"
	line "care to make an"
	
	para "offering of THICK"
	line "CLUB?"
	
	para "I think they would"
	line "be grateful if you"
	
	para "placed one on the"
	line "grave next to you."
	done
	
SoulHouseGrannyText2:
	text "…What was that?"
	line "You heard a ghost?"
	
	para "You may want to"
	line "pay a visit to our"
	cont "RADIO TOWER then."
	
	para "It is the former"
	line "home of the souls"
	cont "of #MON."
	
	para "Perhaps you will"
	line "find a clue to"
	cont "help appease the"
	cont "soul of that poor"
	cont "#MON."
	done
	
SoulHouseGrannyText3:
	text "Thank you for your"
	line "kindness."
	done
	
SoulTooBadText:
	text "<PLAYER> has no"
	line "THICK CLUB…"
	done

SoulHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, LAVENDER_TOWN, 6
	warp_event  5,  7, LAVENDER_TOWN, 6

	def_coord_events

	def_bg_events
	bg_event  2,  2, BGEVENT_READ, Grave

	def_object_events
	object_event  4,  2, SPRITE_MRFUJI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFuji, -1
	object_event  7,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseTeacherScript, -1
	object_event  2,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseLassScript, -1
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseGrannyScript, -1
