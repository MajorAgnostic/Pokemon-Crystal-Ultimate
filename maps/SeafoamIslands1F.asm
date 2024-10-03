	object_const_def
	const SEAFOAM1F_BOULDER1
	const SEAFOAM1F_BOULDER2
	const SEAFOAM1F_POKE_BALL

SeafoamIslands1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 7, SEAFOAM1F_BOULDER1, .Boulder1
	stonetable 6, SEAFOAM1F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAM1F_BOULDER1
	clearevent EVENT_BOULDER_IN_SEAFOAM_3
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAM1F_BOULDER2
	clearevent EVENT_BOULDER_IN_SEAFOAM_4
	sjump .FinishBoulder

.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
	opentext
	writetext Seafoam1FBoulderFellThroughText
	waitbutton
	closetext
	end

.BoulderFallsThrough:
	playsound SFX_STRENGTH
	earthquake 80
	end

Seafoam1FBoulder:
	jumpstd StrengthBoulderScript
	
Seafoam1FIceHeal:
	itemball ICE_HEAL
	
Seafoam1FBoulderFellThroughText:
	text "The boulder fell"
	line "through."
	done

SeafoamIslands1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27, 15, SEAFOAM_ISLANDS_ENTRANCE, 2
	warp_event  5, 15, SEAFOAM_ISLANDS_ENTRANCE, 5
	warp_event 27,  3, SEAFOAM_ISLANDS_B1F, 1
	warp_event  7,  5, SEAFOAM_ISLANDS_B1F, 2
	warp_event 25, 13, SEAFOAM_ISLANDS_B1F, 3
	warp_event 19,  6, SEAFOAM_ISLANDS_B1F, 8 ; holes
	warp_event 26,  7, SEAFOAM_ISLANDS_B1F, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event 28,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam1FBoulder, EVENT_BOULDER_IN_SEAFOAM_1
	object_event 20, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Seafoam1FBoulder, EVENT_BOULDER_IN_SEAFOAM_2
	object_event 19, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Seafoam1FIceHeal, EVENT_SEAFOAM_ICE_HEAL
