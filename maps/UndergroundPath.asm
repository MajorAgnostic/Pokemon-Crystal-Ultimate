	object_const_def
	const UPATH_OFFICER

UndergroundPath_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerOfficerGrant:
	faceplayer
	opentext
	checktime NITE
	iffalse .NotNight
	checkevent EVENT_BEAT_OFFICER_GRANT
	iftrue .AfterBattle
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext OfficerGrantSeenText
	waitbutton
	closetext
	winlosstext OfficerGrantBeatenText, 0
	loadtrainer OFFICER, GRANT
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_OFFICER_GRANT
	closetext
	end

.AfterBattle:
	writetext OfficerGrantAfterBattleText
	waitbutton
	closetext
	end

.NotNight:
	writetext OfficerGrantPrettyToughText
	waitbutton
	closetext
	end

UndergroundPathHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_UNDERGROUND_PATH_HIDDEN_FULL_RESTORE

UndergroundPathHiddenXSpecial:
	hiddenitem X_SPECIAL, EVENT_UNDERGROUND_PATH_HIDDEN_X_SPECIAL
	
OfficerGrantSeenText:
	text "You there!"
	
	para "You better not be"
	line "one of those KANTO"
	cont "#MON FEDERATION"
	cont "thugs!"
	done

OfficerGrantBeatenText:
	text "All clear."
	done

OfficerGrantAfterBattleText:
	text "Sorry about that,"
	line "trainer."
	
	para "We've had trouble"
	line "with a group of"
	cont "BIKERs lately."

	para "The other UNDER-"
	line "GROUND PATH had"
	cont "to be closed."
	done

OfficerGrantPrettyToughText:
	text "Members of KANTO"
	line "#MON FEDERATION"
	cont "like to hang out"
	cont "around the UNDER-"
	cont "GROUND PATHs at"
	cont "night."
	done

UndergroundPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  2, ROUTE_5_UNDERGROUND_PATH_ENTRANCE, 3
	warp_event  3, 24, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 3

	def_coord_events

	def_bg_events
	bg_event  3,  9, BGEVENT_ITEM, UndergroundPathHiddenFullRestore
	bg_event  1, 19, BGEVENT_ITEM, UndergroundPathHiddenXSpecial

	def_object_events
	object_event  3, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerOfficerGrant, -1
