	object_const_def
	const CERULEANGYMBADGESPEECHHOUSE_POKEFAN_M

CeruleanGymBadgeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanGymBadgeSpeechHousePokefanMScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_THICKCLUB
	iftrue .GotClub
	readvar VAR_BADGES
	ifequal 16, .GiveClub
	writetext CeruleanGymBadgeSpeechHousePokefanMText
	waitbutton
	closetext
	end
	
.GotClub:
	writetext GotClubText
	waitbutton
	closetext
	end
	
.GiveClub:
	writetext GiveClubText
	promptbutton
	verbosegiveitem THICK_CLUB
	iffalse .BagFull
	closetext
	setevent EVENT_GOT_THICKCLUB
	end
	
.BagFull:
	writetext ClubBagFullText
	waitbutton
	closetext
	end
	
GotClubText:
	text "Obtaining all GYM"
	line "BADGES is a very"
	cont "impressive feat!"
	done
	
GiveClubText:
	text "Wow! You have all"
	line "eight GYM BADGES!"
	
	para "I think that you"
	line "deserve this."
	done
	
ClubBagFullText:
	text "Ah, you'll have to"
	line "make more room for"
	cont "it."
	done

CeruleanGymBadgeSpeechHousePokefanMText:
	text "Are you collecting"
	line "KANTO GYM BADGES?"
	
	para "Come show me when"
	line "you obtain them"
	cont "all!"
	done

CeruleanGymBadgeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 1
	warp_event  3,  7, CERULEAN_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGymBadgeSpeechHousePokefanMScript, -1
