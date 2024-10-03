	object_const_def
	const SEAFOAMB2F_LANCE
	const SEAFOAMB2F_BOULDER1
	const SEAFOAMB2F_BOULDER2

SeafoamIslandsB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, .SetUpStoneTable

.SetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 11, SEAFOAMB2F_BOULDER1, .Boulder1
	stonetable 10, SEAFOAMB2F_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAMB2F_BOULDER1
	clearevent EVENT_BOULDER_IN_SEAFOAM_8
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAMB2F_BOULDER2
	clearevent EVENT_BOULDER_IN_SEAFOAM_7
	sjump .FinishBoulder

.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
	opentext
	writetext SeafoamB2FBoulderFellThroughText
	waitbutton
	closetext
	end

.BoulderFallsThrough:
	playsound SFX_STRENGTH
	earthquake 80
	end
	
SeafoamLanceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SEAFOAM_LANCE
	iftrue .LanceBeaten
	checkevent RED_REMATCH
	iftrue .LanceBattle
	writetext SeafoamLanceTrainingText
	waitbutton
	closetext
	turnobject SEAFOAMB2F_LANCE, UP
	end
	
.LanceBattle:
	writetext SeafoamLanceBeforeBattleText
	waitbutton
	closetext
	winlosstext SeafoamLanceWinLossText, SeafoamLanceWinLossText
	loadtrainer CHAMPION2, CHAMPION2A
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SEAFOAM_LANCE
	opentext
	writetext SeafoamLanceAfterBattleText
	waitbutton
	closetext
	turnobject SEAFOAMB2F_LANCE, UP
	end
	
.LanceBeaten:
	writetext SeafoamLanceAfterBattleText
	waitbutton
	closetext
	turnobject SEAFOAMB2F_LANCE, UP
	end
	
SeafoamB2FBoulder:
	jumpstd StrengthBoulderScript
	
SeafoamHiddenBigPearl:
	hiddenitem BIG_PEARL, EVENT_SEAFOAM_HIDDEN_BIG_PEARL
	
SeafoamLanceBeforeBattleText:
	text "LANCE: So you've"
	line "defeated the new"
	cont "CHAMPION."
	
	para "And even #MON"
	line "MASTER RED."
	
	para "That is very"
	line "impressive."
	
	para "Well, I've been"
	line "training in this"
	
	para "solitary cavern"
	line "for quite a while"
	cont "now."
	
	para "It's about time I"
	line "show the fruits"
	cont "of my labor."
	
	para "I hate to say it,"
	line "but your reign"
	
	para "shall end here,"
	line "<PLAY_G>."
	
	para "My team has become"
	line "unstoppable."
	
	para "We will now ascend"
	line "to glory, once"
	cont "again."
	
	para "Prepare yourself!"
	done
	
SeafoamLanceWinLossText:
	text "You have become"
	line "truly powerful,"
	cont "<PLAY_G>."

	para "Your #MON have"
	line "responded to your"

	para "strong and up-"
	line "standing nature."
	
	para "I feel no frustra-"
	line "tion from my loss,"
	cont "only awe."
	done
	
SeafoamLanceAfterBattleText:
	text "LANCE: …Whew."
	
	para "You clearly have"
	line "been pushing your-"
	cont "self to the limit."
	
	para "But don't forget"
	line "to stay sharp."
	
	para "I will defeat you"
	line "next time if you"
	cont "become complacent."
	
	para "Take care now,"
	line "<PLAY_G>."
	done
	
SeafoamLanceTrainingText:
	text "LANCE: Hm? Well if"
	line "it isn't the CHAM-"
	cont "PION in the flesh!"
	
	para "Funny seeing you"
	line "here."
	
	para "What am I doing?"
	line "Training against"
	cont "my weakness, of"
	cont "course."
	
	para "In this cavern of"
	line "ice, we will grow"
	cont "stronger than we"
	cont "ever were!"
	
	para "After all, I lost"
	line "to another since"
	cont "you've become the"
	
	para "CHAMPION, so I can"
	line "ill afford to sit"
	
	para "idly by as you get"
	line "stronger with each"
	cont "passing day."
	
	para "I'm sure that we"
	line "will have another"
	
	para "magnificent battle"
	line "someday."
	done
	
SeafoamB2FBoulderFellThroughText:
	text "The boulder fell"
	line "through."
	done

SeafoamIslandsB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 15, SEAFOAM_ISLANDS_B1F, 6
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 4
	warp_event 25, 11, SEAFOAM_ISLANDS_B1F, 5
	warp_event 13,  7, SEAFOAM_ISLANDS_B1F, 7
	warp_event 25,  3, SEAFOAM_ISLANDS_B3F, 3
	warp_event  5, 13, SEAFOAM_ISLANDS_B3F, 2
	warp_event 25, 13, SEAFOAM_ISLANDS_B3F, 1
	warp_event 19,  5, SEAFOAM_ISLANDS_B1F, 10 ; holes
	warp_event 22,  6, SEAFOAM_ISLANDS_B1F, 11
	warp_event 19,  6, SEAFOAM_ISLANDS_B3F, 6
	warp_event 22,  7, SEAFOAM_ISLANDS_B3F, 7

	def_coord_events

	def_bg_events
	bg_event 17, 15, BGEVENT_ITEM, SeafoamHiddenBigPearl

	def_object_events
	object_event 12,  4, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamLanceScript, -1
	object_event 23,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB2FBoulder, EVENT_BOULDER_IN_SEAFOAM_5
	object_event 18,  6, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamB2FBoulder, EVENT_BOULDER_IN_SEAFOAM_6
