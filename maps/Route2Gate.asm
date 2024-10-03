	object_const_def
	const ROUTE2GATE_SCIENTIST

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateScientistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ROUTE2SHARE
	iftrue .GotShare
	writetext Route2GateScientistText
	readvar VAR_DEXCAUGHT
	ifgreater NUM_POKEMON - 154, .GiveShare
	promptbutton
	writetext Route2GateScientistNotEnoughText
	waitbutton
	closetext
	end
	
.GiveShare:
	promptbutton
	writetext Route2GateScientistText3
	promptbutton
	verbosegiveitem EXP_SHARE
	iffalse .NoRoom
	setevent EVENT_GOT_ROUTE2SHARE
	writetext Route2GateScientistText2
	waitbutton
	closetext
	end
	
.NoRoom:
	writetext Route2GateScientistNoRoomText
	waitbutton
	closetext
	end
	
.GotShare:
	writetext Route2GateScientistText2
	waitbutton
	closetext
	end

Route2GateScientistText:
	text "Are you <PLAY_G>?"

	para "I work as PROF."
	line "OAK's AIDE."

	para "I had no idea that"
	line "you were out here."

	para "PROF.OAK's LAB is"
	line "nearby in PALLET"
	cont "TOWN."
	
	para "By the by, could I"
	line "take a gander at"
	cont "your #DEX?"
	
	para "Hmm…"
	done
	
Route2GateScientistNotEnoughText:
	text "I see, this isn't"
	line "bad, <PLAY_G>!"
	
	para "Keep up the good"
	line "work. If you ob-"
	
	para "tain at least 100"
	line "#MON, I will"
	cont "give you an EXP."
	cont "SHARE!"
	
	para "If you drop by the"
	line "LAB, say hello to"
	cont "PROF.OAK for me."
	done
	
Route2GateScientistText2:
	text "If you drop by the"
	line "LAB, say hello to"
	cont "PROF.OAK for me."
	done
	
Route2GateScientistText3:
	text "Wow! You've caught"
	line "over 100 species!"
	cont "You deserve this."
	done
	
Route2GateScientistNoRoomText:
	text "It seems as though"
	line "you have no more"
	cont "room for this."
	
	para "Drop by again once"
	line "you've made room."
	done

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 3
	warp_event  5,  0, ROUTE_2, 4
	warp_event  4,  7, ROUTE_2, 2
	warp_event  5,  7, ROUTE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2GateScientistScript, -1
