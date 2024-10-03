	object_const_def
	const ROUTE42ECRUTEAKGATE_OFFICER

Route42EcruteakGate_MapScripts:
    def_scene_scripts
    scene_script .DummyScene0, SCENE_ROUTE42ECRUTEAKGATE_NOTHING
	scene_script .DummyScene1, SCENE_ROUTE42ECRUTEAKGATE_SCENE

	def_callbacks
	
.DummyScene0:
.DummyScene1:
	end
	
Route42EcruteakGateBadgeCheckScene:
	turnobject PLAYER, UP
	sjump Route42EcruteakGateBadgeCheckScript
	
Route42EcruteakGateBadgeCheckScene2:
	applymovement PLAYER, PassGuard_Movement
	sjump Route42EcruteakGateBadgeCheckScript

Route42EcruteakGateOfficerScript:
	faceplayer
Route42EcruteakGateBadgeCheckScript:
	opentext
	checkevent EVENT_ROUTE42ECRUTEAKGATE_OPEN
	iftrue .postSixBadges
	writetext Route42EcruteakGateOfficerText
	promptbutton
	readvar VAR_BADGES
	ifgreater NUM_JOHTO_BADGES - 3, .SixBadges
	writetext Route42EcruteakGateNotEnoughBadgesText
	waitbutton
	closetext
	applymovement PLAYER, Route42EcruteakGateStepLeftMovement
	end

.SixBadges:
	writetext Route42EcruteakGateSixBadgesText
	waitbutton
	closetext
	setscene SCENE_FINISHED
	setevent EVENT_ROUTE42ECRUTEAKGATE_OPEN
	end
	
.postSixBadges
	writetext Route42EcruteakGateBadgeCheckDONEtext
	waitbutton
	closetext
	end
	
Route42EcruteakGateStepLeftMovement:
	step LEFT
	step_end
	
PassGuard_Movement:
	step UP
	step_end

Route42EcruteakGateOfficerText:
	text "Halt, trainer! I"
	line "have been told to"
	
	para "let no one through"
	line "this gate. LANCE"
	
	para "is investigating"
	line "the MAHOGANY TOWN"
	
	para "area due to sus-"
	line "picions of TEAM"
	cont "ROCKET activity."
	
	para "We don't want any-"
	line "one interfering or"
	
	para "getting caught up"
	line "in this mess."
	done
	
Route42EcruteakGateNotEnoughBadgesText:
	text "I am sorry, but I"
	line "must ask you to"
	cont "turn back."
	done
	
Route42EcruteakGateSixBadgesText:
	text "Hmm, you have six"
	line "BADGES, eh? LANCE"

	para "did allow me to"
	line "grant passage to"
	
	para "strong trainers"
	line "that could help"
	
	para "with the inves-"
	line "tigation."
	
	para "Head on through"
	line "then, trainer,"
	cont "but be careful."
	done
	
Route42EcruteakGateBadgeCheckDONEtext:
	text "Head on through,"
	line "trainer."
	done

Route42EcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ECRUTEAK_CITY, 1
	warp_event  0,  5, ECRUTEAK_CITY, 2
	warp_event  9,  4, ROUTE_42, 1
	warp_event  9,  5, ROUTE_42, 2

	def_coord_events
	coord_event 5, 4, SCENE_ROUTE42ECRUTEAKGATE_NOTHING, Route42EcruteakGateBadgeCheckScene
	coord_event 5, 5, SCENE_ROUTE42ECRUTEAKGATE_NOTHING, Route42EcruteakGateBadgeCheckScene2

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateOfficerScript, -1
