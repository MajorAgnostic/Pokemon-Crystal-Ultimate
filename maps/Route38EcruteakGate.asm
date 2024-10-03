	object_const_def
	const ROUTE38ECRUTEAKGATE_OFFICER

Route38EcruteakGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route38EcruteakGateOfficerScript:
	opentext
	checkevent EVENT_BEAT_MORTY
	iffalse .BeforeMorty
	writetext Route38EcruteakGateOfficerText
	waitbutton
	closetext
	end

.BeforeMorty:
	writetext Route38EcruteakGateOfficerText2
	waitbutton
	closetext
	end

Route38EcruteakGateOfficerText:
	text "Where did you say"
	line "you're from?"

	para "NEW BARK TOWN?"

	para "PROF.ELM lives"
	line "over there, right?"

	para "You've come a long"
	line "way to get here."
	done
	
Route38EcruteakGateOfficerText2:
	text "Where did you say"
	line "you're from?"

	para "NEW BARK TOWN?"

	para "PROF.ELM lives"
	line "over there, right?"

	para "You've come a long"
	line "way to get here."
	
	para "The trainers this"
	line "this way our quite"
	
	para "strong, so I would"
	line "advise caution."
	done

Route38EcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_38, 1
	warp_event  0,  5, ROUTE_38, 2
	warp_event  9,  4, ECRUTEAK_CITY, 14
	warp_event  9,  5, ECRUTEAK_CITY, 15

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route38EcruteakGateOfficerScript, -1
