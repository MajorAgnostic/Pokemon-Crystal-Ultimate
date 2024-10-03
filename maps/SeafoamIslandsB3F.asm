	object_const_def
	const SEAFOAMB3F_BOULDER1
	const SEAFOAMB3F_BOULDER2
	const SEAFOAMB3F_BOULDER3
	const SEAFOAMB3F_BOULDER4
	const SEAFOAMB3F_BOULDER5
	const SEAFOAMB3F_BOULDER6
	const SEAFOAMB3F_POKE_BALL

SeafoamIslandsB3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 8, SEAFOAMB3F_BOULDER3, .Boulder1
	stonetable 9, SEAFOAMB3F_BOULDER5, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAMB3F_BOULDER3
	clearevent EVENT_BOULDER_IN_SEAFOAM_13
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAMB3F_BOULDER5
	clearevent EVENT_BOULDER_IN_SEAFOAM_14
	sjump .FinishBoulder

.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
	opentext
	writetext SeafoamB3FBoulderFellThroughText
	waitbutton
	closetext
	end

.BoulderFallsThrough:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
SeafoamB3FBoulder:
	jumpstd StrengthBoulderScript
	
SeafoamB3FIceBoulder:
	jumptext SeafoamB3FIceBoulderText
	
SeafoamB3FNevermeltice:
	itemball NEVERMELTICE
	
SeafoamHiddenNugget:
	hiddenitem NUGGET, EVENT_SEAFOAM_HIDDEN_NUGGET
	
SeafoamHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_SEAFOAM_HIDDEN_MAX_ELIXER
	
SeafoamB3FBoulderFellThroughText:
	text "The boulder fell"
	line "through."
	done
	
SeafoamB3FIceBoulderText:
	text "It's immovably"
	line "embedded in ice."
	done

SeafoamIslandsB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 13, SEAFOAM_ISLANDS_B2F, 7
	warp_event  5, 11, SEAFOAM_ISLANDS_B2F, 6
	warp_event 23,  3, SEAFOAM_ISLANDS_B2F, 5
	warp_event  9,  7, SEAFOAM_ISLANDS_B4F, 1
	warp_event 27,  3, SEAFOAM_ISLANDS_B4F, 2
	warp_event 18, 11, SEAFOAM_ISLANDS_B2F, 10 ; holes
	warp_event 18, 11, SEAFOAM_ISLANDS_B2F, 11
	warp_event  3, 16, SEAFOAM_ISLANDS_B4F, 3
	warp_event  7, 16, SEAFOAM_ISLANDS_B4F, 4

	def_coord_events

	def_bg_events
	bg_event  3,  3, BGEVENT_ITEM, SeafoamHiddenNugget
	bg_event  9, 16, BGEVENT_ITEM, SeafoamHiddenMaxElixer

	def_object_events
	object_event 19,  6, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB3FIceBoulder, EVENT_BOULDER_IN_SEAFOAM_7
	object_event 18,  6, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB3FIceBoulder, EVENT_BOULDER_IN_SEAFOAM_8
	object_event  3, 15, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB3FBoulder, EVENT_BOULDER_IN_SEAFOAM_9
	object_event  5, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB3FBoulder, EVENT_BOULDER_IN_SEAFOAM_10
	object_event  8, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB3FBoulder, EVENT_BOULDER_IN_SEAFOAM_11
	object_event  9, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB3FBoulder, EVENT_BOULDER_IN_SEAFOAM_12
	object_event  9, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamB3FNevermeltice, EVENT_SEAFOAM_NEVERMELTICE
