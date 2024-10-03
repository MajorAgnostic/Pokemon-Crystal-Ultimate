	object_const_def
	const SEAFOAMB1F_BOULDER1
	const SEAFOAMB1F_BOULDER2
	const SEAFOAMB1F_POKE_BALL

SeafoamIslandsB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 11, SEAFOAMB1F_BOULDER1, .Boulder1
	stonetable 10, SEAFOAMB1F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAMB1F_BOULDER1
	clearevent EVENT_BOULDER_IN_SEAFOAM_5
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAMB1F_BOULDER2
	clearevent EVENT_BOULDER_IN_SEAFOAM_6
	sjump .FinishBoulder

.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
	opentext
	writetext SeafoamB1FBoulderFellThroughText
	waitbutton
	closetext
	end

.BoulderFallsThrough:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
SeafoamB1FBoulder:
	jumpstd StrengthBoulderScript
	
SeafoamB1FWaterStone:
	itemball WATER_STONE
	
SeafoamHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_SEAFOAM_HIDDEN_MAX_REVIVE
	
SeafoamB1FBoulderFellThroughText:
	text "The boulder fell"
	line "through."
	done

SeafoamIslandsB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  3, SEAFOAM_ISLANDS_1F, 3
	warp_event  7,  5, SEAFOAM_ISLANDS_1F, 4
	warp_event 23, 15, SEAFOAM_ISLANDS_1F, 5
	warp_event  3,  3, SEAFOAM_ISLANDS_B2F, 2
	warp_event 25, 11, SEAFOAM_ISLANDS_B2F, 3
	warp_event 19, 15, SEAFOAM_ISLANDS_B2F, 1
	warp_event 13,  7, SEAFOAM_ISLANDS_B2F, 4
	warp_event 17,  7, SEAFOAM_ISLANDS_1F, 6 ; holes
	warp_event 24,  6, SEAFOAM_ISLANDS_1F, 7
	warp_event 18,  7, SEAFOAM_ISLANDS_B2F, 8
	warp_event 23,  6, SEAFOAM_ISLANDS_B2F, 9

	def_coord_events

	def_bg_events
	bg_event 13,  2, BGEVENT_ITEM, SeafoamHiddenMaxRevive

	def_object_events
	object_event 23,  5, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB1FBoulder, EVENT_BOULDER_IN_SEAFOAM_3
	object_event 18,  6, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB1FBoulder, EVENT_BOULDER_IN_SEAFOAM_4
	object_event 13, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamB1FWaterStone, EVENT_SEAFOAM_WATER_STONE
