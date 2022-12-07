	object_const_def
	const VICTORYROAD_SILVER
	const VICTORYROAD_BLACK_BELT1
	const VICTORYROAD_BIKER1
	const VICTORYROAD_COOLTRAINER_M1
	const VICTORYROAD_SUPER_NERD1
	const VICTORYROAD_SWIMMER_GIRL
	const VICTORYROAD_BOULDER1
	const VICTORYROAD_BOULDER2
	const VICTORYROAD_BOULDER3
	const VICTORYROAD_BOULDER4
	const VICTORYROAD_BOULDER5
	const VICTORYROAD_BOULDER6
	const VICTORYROAD_BOULDER7
	const VICTORYROAD_POKE_BALL1
	const VICTORYROAD_POKE_BALL2
	const VICTORYROAD_POKE_BALL3
	const VICTORYROAD_POKE_BALL4

VictoryRoad_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .VictoryRoadLocked
	
.DummyScene0:
	end
	
.DummyScene1:
	end
	
.VictoryRoadLocked:
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue .KeepEntranceOpen
	changeblock 9, 67, $2 ; wall
	changeblock 9, 68, $5 ; entrance gone
.KeepEntranceOpen:
	endcallback

VictoryRoadRivalLeft:
	moveobject VICTORYROAD_SILVER, 18, 11
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD_SILVER
	applymovement VICTORYROAD_SILVER, VictoryRoadRivalBattleApproachMovement1
	scall VictoryRoadRivalNext
	applymovement VICTORYROAD_SILVER, VictoryRoadRivalBattleExitMovement1
	disappear VICTORYROAD_SILVER
	setscene SCENE_FINISHED
	playmapmusic
	end

VictoryRoadRivalRight:
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear VICTORYROAD_SILVER
	applymovement VICTORYROAD_SILVER, VictoryRoadRivalBattleApproachMovement2
	scall VictoryRoadRivalNext
	applymovement VICTORYROAD_SILVER, VictoryRoadRivalBattleExitMovement2
	disappear VICTORYROAD_SILVER
	setscene SCENE_FINISHED
	playmapmusic
	end

VictoryRoadRivalNext:
	turnobject PLAYER, DOWN
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext VictoryRoadRivalBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_VICTORY_ROAD
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .GotTotodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .GotChikorita
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_SILVER
	loadtrainer RIVAL2, RIVAL2_5_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotTotodile:
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_SILVER
	loadtrainer RIVAL2, RIVAL2_5_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.GotChikorita:
	winlosstext VictoryRoadRivalDefeatText, VictoryRoadRivalVictoryText
	setlasttalked VICTORYROAD_SILVER
	loadtrainer RIVAL2, RIVAL2_5_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext VictoryRoadRivalAfterText
	waitbutton
	closetext
	end
	
TrainerBlackbeltBob:
	trainer BLACKBELT_T, BOBBY, EVENT_BEAT_BLACKBELT_BOBBY, BlackbeltBobSeenText, BlackbeltBobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltBobAfterText
	waitbutton
	closetext
	end
	
TrainerBikerGryphon:
	trainer BIKER, GRYPHON, EVENT_BEAT_BIKER_GRYPHON, BikerGryphonSeenText, BikerGryphonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerGryphonAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCooltrainermChrist:
	trainer COOLTRAINERM, CHRIST, EVENT_BEAT_COOLTRAINERM_CHRIST, CooltrainermChrisSeenText, CooltrainermChrisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermChrisAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSuperNerdBrady:
	trainer SUPER_NERD, BRADY, EVENT_BEAT_VRBRADY, SuperNerdBradySeenText, SuperNerdBradyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdBradyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSwimmerfClaire:
	trainer SWIMMERF, CLAIRE, EVENT_BEAT_SWIMMERF_CLAIRE, SwimmerfClaireSeenText, SwimmerfClaireBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfClaireAfterBattleText
	waitbutton
	closetext
	end

VictoryRoadTMEarthquake:
	itemball TM_EARTHQUAKE

VictoryRoadMoonStone:
	itemball MOON_STONE
	
VictoryRoadTMSteelWing:
	itemball TM_STEEL_WING
	
VictoryRoadTMCurse:
	itemball TM_CURSE

VictoryRoadHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_VICTORY_ROAD_HIDDEN_MAX_POTION

VictoryRoadHiddenFullHeal:
	hiddenitem FULL_RESTORE, EVENT_VICTORY_ROAD_HIDDEN_FULL_HEAL
	
VictoryRoadHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_VICTORY_ROAD_MAX_REVIVE
	
VictoryRoadBoulder:
	jumpstd StrengthBoulderScript
	
VictoryRoadRivalBattleApproachMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

VictoryRoadRivalBattleApproachMovement2:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

VictoryRoadRivalBattleExitMovement1:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

VictoryRoadRivalBattleExitMovement2:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step_end

VictoryRoadRivalBeforeText:
	text "Hold it."

	para "…Are you going to"
	line "take the #MON"
	cont "LEAGUE challenge?"

	para "…Don't make me"
	line "laugh."

	para "You're so much"
	line "weaker than I am."

	para "I'm not like I was"
	line "before."

	para "I now have the"
	line "best and strongest"

	para "#MON with me."
	line "I'm invincible!"

	para "<PLAYER>!"
	line "I challenge you!"
	done

VictoryRoadRivalDefeatText:
	text "…I couldn't win…"

	para "I gave it every-"
	line "thing I had…"

	para "What you possess,"
	line "and what I lack…"

	para "I'm beginning to"
	line "understand what"

	para "that dragon master"
	line "said to me…"
	done

VictoryRoadRivalAfterText:
	text "…I haven't given up"
	line "on becoming the"
	cont "greatest trainer…"

	para "I'm going to find"
	line "out why I can't"

	para "win and become"
	line "stronger…"

	para "When I do, I will"
	line "challenge you."

	para "And I'll beat you"
	line "down with all my"
	cont "power."

	para "…Humph! You keep"
	line "at it until then."
	done

VictoryRoadRivalVictoryText:
	text "…Humph!"

	para "When it comes down"
	line "to it, nothing can"
	cont "beat power."

	para "I don't need any-"
	line "thing else."
	done
	
BlackbeltBobSeenText:
	text "Finally, a tough-"
	line "looking trainer!"
	cont "Prepare to get"
	cont "pummeled!"
	done

BlackbeltBobBeatenText:
	text "…"
	done

BlackbeltBobAfterText:
	text "It seems that I'm"
	line "still too weak to"
	cont "face the #MON"
	cont "LEAGUE…"
	done
	
BikerGryphonSeenText:
	text "I may seem a bit"
	line "crazy with this"
	cont "bike in here, but"
	cont "I do like jello!"
	done

BikerGryphonBeatenText:
	text "Arrrgh! Why are"
	line "you eating my"
	cont "crisps!?"
	done

BikerGryphonAfterBattleText:
	text "DONALD doesn't"
	line "have anything I"
	cont "want!"
	done
	
CooltrainermChrisSeenText:
	text "No games; bring"
	line "it on!"
	done

CooltrainermChrisBeatenText:
	text "Astounding!"
	done

CooltrainermChrisAfterBattleText:
	text "Thank you for the"
	line "show of power!"

	para "Now I know what"
	line "to work on and"
	cont "toward."

	para "I wish you luck"
	line "against the ELITE"
	cont "FOUR!"
	done
	
SuperNerdBradySeenText:
	text "What's your pre-"
	line "ferred language"
	cont "for programming?"
	done

SuperNerdBradyBeatenText:
	text "I C what you did!"
	done

SuperNerdBradyAfterBattleText:
	text "If only I could"
	line "hack in some top-"

	para "notch #MON to"
	line "defeat you…"
	done
	
SwimmerfClaireSeenText:
	text "CLAIR has got no-"
	line "thing on me!"
	done

SwimmerfClaireBeatenText:
	text "Me and my big"
	line "mouth."
	done

SwimmerfClaireAfterBattleText:
	text "Wow, you're so"
	line "strong!"
	
	para "But can you make"
	line "it up there?"
	done

VictoryRoad_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 67, VICTORY_ROAD_GATE, 5
	warp_event 13, 31, VICTORY_ROAD, 3
	warp_event 13, 17, VICTORY_ROAD, 2
	warp_event 17, 33, VICTORY_ROAD, 5
	warp_event 17, 19, VICTORY_ROAD, 4
	warp_event  0, 11, VICTORY_ROAD, 7
	warp_event  0, 27, VICTORY_ROAD, 6
	warp_event  9, 35, VICTORY_ROAD, 9
	warp_event  1, 35, VICTORY_ROAD, 8
	warp_event 13,  5, ROUTE_23, 3

	def_coord_events
	coord_event 12,  8, SCENE_DEFAULT, VictoryRoadRivalLeft
	coord_event 13,  8, SCENE_DEFAULT, VictoryRoadRivalRight

	def_bg_events
	bg_event  3, 29, BGEVENT_ITEM, VictoryRoadHiddenMaxPotion
	bg_event  3, 65, BGEVENT_ITEM, VictoryRoadHiddenFullHeal
	bg_event 12, 48, BGEVENT_ITEM, VictoryRoadHiddenMaxRevive

	def_object_events
	object_event 18, 13, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_VICTORY_ROAD
	object_event 12, 52, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBlackbeltBob, -1
	object_event 12, 34, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBikerGryphon, -1
	object_event 10, 17, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermChrist, -1
	object_event  7, 34, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSuperNerdBrady, -1
	object_event  0, 49, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerSwimmerfClaire, -1
	object_event  9, 38, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadBoulder, -1
	object_event 10, 38, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadBoulder, -1
	object_event 11, 38, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadBoulder, -1
	object_event 10, 39, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadBoulder, -1
	object_event 11, 40, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadBoulder, -1
	object_event 13, 40, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadBoulder, -1
	object_event 14, 39, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadBoulder, -1
	object_event 18, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMEarthquake, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
	object_event  5, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadMoonStone, EVENT_VICTORY_ROAD_FULL_RESTORE
	object_event  7, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMCurse, EVENT_VICTORY_ROAD_HP_UP
	object_event  2, 62, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMSteelWing, EVENT_VICTORY_ROAD_TM_STEEL_WING
