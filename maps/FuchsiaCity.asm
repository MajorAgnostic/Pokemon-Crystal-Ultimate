GAME_FEE EQU 2000
	
	object_const_def
	const FUCHSIACITY_YOUNGSTER
	const FUCHSIACITY_POKEFAN_M1
	const FUCHSIACITY_TEACHER
	const FUCHSIACITY_BIKER1
	const FUCHSIACITY_BIKER2
	const FUCHSIACITY_BIKER3
	const FUCHSIACITY_JANINE
	const FUCHSIACITY_FISHER
	const FUCHSIACITY_FRUIT_TREE
	const FUCHSIACITY_POKEFAN_M2
	const FUCHSIACITY_FRUIT_TREE2
	const FUCHSIACITY_LAPRAS
	const FUCHSIACITY_SLOWPOKE
	const FUCHSIACITY_KANGASKHAN
	const FUCHSIACITY_VOLTORB
	const FUCHSIACITY_WEEZING
	const FUCHSIACITY_ITEMBALL

FuchsiaCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_FUCHSIA
	endcallback

FuchsiaCityYoungster:
	jumptextfaceplayer FuchsiaCityYoungsterText

FuchsiaCityPokefanM:
	checkevent EVENT_BEAT_KANTO_FEDERATION
	iffalse .Invasion
	jumptextfaceplayer FuchsiaCityPokefanMText
.Invasion
	jumptextfaceplayer FuchsiaCityPokefanMText2

FuchsiaCityTeacher:
	jumptextfaceplayer FuchsiaCityTeacherText
	
FuchsiaGymBlocker:
	jumptextfaceplayer FuchsiaGymBlockerText
	
BackBiker1:
	faceplayer
	opentext
	checkevent EVENT_BEAT_TONY
	iftrue .Beaten
	writetext BackBiker1Text
	waitbutton
	closetext
	winlosstext BackBiker1BeatenText, 0
	setlasttalked FUCHSIACITY_BIKER1
	loadtrainer BIKER, TONY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_TONY
	opentext
	writetext BackBiker1AfterBattleText
	waitbutton
	closetext
	applymovement FUCHSIACITY_BIKER2, BikerMovement1
	turnobject FUCHSIACITY_BIKER2, LEFT
	applymovement FUCHSIACITY_BIKER1, BikerMovement1
	end
	
.Beaten:
	writetext BackBiker1AfterBattleText
	waitbutton
	closetext
	end

BackBiker2:
	jumptext BackBiker2Text
	
BikerVsJanine:
	checkevent EVENT_BEAT_NEV
	iftrue .Defeated
	jumptext BikerVsJanineText
.Defeated:
	jumptextfaceplayer BikerVsJanineText2
	
JanineOutdoors:
	jumptext JanineOutdoorsText
	
FuchsiaCityCloysterScript:
	opentext
	writetext FuchsiaCityCloysterText
	scall Game_ConfirmPurchaseScript
	iffalse Game_CancelPurchaseScript
	checkmoney YOUR_MONEY, GAME_FEE
	ifequal HAVE_LESS, Game_YoureBroke
	waitsfx
	playsound SFX_TRANSACTION
	writetext GameHereYouGoText
	waitbutton
	verbosegiveitem LURE_BALL, 5
	takemoney YOUR_MONEY, GAME_FEE
	waitsfx
	writetext GameStartText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement FUCHSIACITY_POKEFAN_M2, GameTeleportIntoSkyMovement
	disappear FUCHSIACITY_POKEFAN_M2
	end
	
Game_ConfirmPurchaseScript:
	yesorno
	end
	
Game_CancelPurchaseScript:
	writetext GameQuitText
	waitbutton
	closetext
	end
	
Game_YoureBroke:
	writetext FuchsiaCityCloysterBrokeText
	waitbutton
	closetext
	end
	
FuchsiaItem:
	itemball RARE_CANDY
	
SafariLockedDoor:
	jumptext SafariLockedDoorText

FuchsiaCitySign:
	jumptext FuchsiaCitySignText

FuchsiaGymSign:
	jumptext FuchsiaGymSignText

SafariZoneOfficeSign:
	jumptext SafariZoneOfficeSignText

WardensHomeSign:
	jumptext WardensHomeSignText

SafariZoneClosedSign:
	jumptext SafariZoneClosedSignText

FuchsiaCityPokecenterSign:
	jumpstd PokecenterSignScript

FuchsiaCityMartSign:
	jumpstd MartSignScript
	
GameSign:
	jumptext GameSignText
	
FuchsiaCityWeezingScript:
	opentext
	writetext FuchsiaCityWeezingText
	cry WEEZING
	waitbutton
	closetext
	end

FuchsiaCityFruitTree:
	fruittree FRUITTREE_FUCHSIA_CITY
	
FuchsiaCityFruitTree2:
	fruittree FRUITTREE_FUCHSIA_CITY2
	
GameTeleportIntoSkyMovement:
	teleport_from
	step_end
	
BikerMovement1:
	step RIGHT
	step RIGHT
	step_end
	
SafariLockedDoorText:
	text "It's locked…"
	done
	
GameHereYouGoText:
	text "Alright! Here you"
	line "go, on the house."
	done
	
FuchsiaCityCloysterBrokeText:	
	text "Sorry, pal! You're"
	line "kinda low on cash."
	done
	
GameQuitText:
	text "Come back when you"
	line "get an itchin' for"
	cont "some fishin'!"
	done
	
GameStartText:
	text "Well then, let me"
	line "get out of the way"
	cont "in style!"
	done

FuchsiaCityCloysterText:
	text "Heya! Care for a"
	line "round of CLOYSTER"
	cont "HOISTER?"

	para "All you need is a"
	line "SUPER ROD and you"
	
	para "can fish up all of"
	line "the PEARLs you"
	cont "want!"
	
	para "It'll only cost ya"
	line "¥2000."
	
	para "I'll even throw in"
	line "some LURE BALLs!"
	
	para "So, how about a"
	line "round?"
	done
	
FuchsiaCityCloysterText2:
	text "Heya! Care for a"
	line "round of CLOYSTER"
	cont "HOISTER?"

	para "All you need is a"
	line "SUPER ROD and you"
	
	para "can fish up all of"
	line "the PEARLs you"
	cont "want!"
	done

FuchsiaCityYoungsterText:
	text "One of the ELITE"
	line "FOUR used to be"

	para "the LEADER of"
	line "FUCHSIA's GYM."
	done

FuchsiaCityPokefanMText:
	text "KOGA's daughter"
	line "succeeded him as"

	para "the GYM LEADER"
	line "after he joined"
	cont "the ELITE FOUR."
	done
	
FuchsiaCityPokefanMText2:
	text "What is going on"
	line "at the DELIVERY"
	cont "CENTER?"
	done

FuchsiaCityTeacherText:
	text "The SAFARI ZONE is"
	line "closed… It's sad,"

	para "considering it's"
	line "FUCHSIA's main"
	cont "attraction."
	done
	
FuchsiaGymBlockerText:
	text "Our GYM LEADER,"
	line "JANINE, is out"

	para "dealing with some"
	line "ne'er-do-wells"
	cont "stirring up quite"
	cont "a ruckus."
	
	para "Could you lend her"
	line "a hand?"
	
	para "You seem quite"
	line "capable."
	done
	
JanineOutdoorsText:
	text "Gah, they won't"
	line "stop coming!"

	para "I might run out of"
	line "#MON if this"
	cont "continues…"
	done
	
BackBiker1Text:
	text "Huh? Uh… we're uh…"
	line "moving packages to"
	cont "the-"

	para "Wait, you're just"
	line "some little punk!"
	
	para "Why am I trying to"
	line "cover up?"
	
	para "Get him!"
	done
	
BackBiker1BeatenText:
	text "Ouch!"
	done
	
BackBiker1AfterBattleText:
	text "Fine, we'll get"
	line "out of the way…"
	done
	
BackBiker2Text:
	text "Hey, psst… psst…"
	done
	
BikerVsJanineText:
	text "Get lost, this is"
	line "the KANTO FEDERA-"
	cont "TION's turf now!"
	done
	
BikerVsJanineText2:
	text "That GYM LEADER is"
	line "tough…"
	
	para "I thought we had"
	line "the advantage in"
	cont "numbers."
	done

FuchsiaCitySignText:
	text "FUCHSIA CITY"

	para "Behold! It's"
	line "Passion Pink!"
	done

FuchsiaGymSignText:
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: JANINE"

	para "The Poisonous"
	line "Ninja Master"
	done

SafariZoneOfficeSignText:
	text "SIPLH CO. DELIVERY"
	line "CENTER"
	done

WardensHomeSignText:
	text "SAFARI ZONE"
	line "WARDEN'S HOME"
	done

SafariZoneClosedSignText:
	text "The WARDEN is"
	line "traveling abroad."

	para "Therefore, the"
	line "SAFARI ZONE is"
	cont "closed."
	done
	
GameSignText:
	text "CLOYSTER HOISTER"
	
	para "Riches await!"
	done
	
FuchsiaCityWeezingText:
	text "Weeezinnnngg…"
	done

FuchsiaCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, FUCHSIA_MART, 2
	warp_event 22,  9, SAFARI_ZONE_MAIN_OFFICE, 1
	warp_event  8, 27, FUCHSIA_GYM, 1
	warp_event 11, 27, BILLS_BROTHERS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 27, 27, SAFARI_ZONE_WARDENS_HOME, 1
	warp_event 22, 15, SAFARI_ZONE_MAIN_OFFICE2, 3
	warp_event 37, 22, ROUTE_15_FUCHSIA_GATE, 1
	warp_event 37, 23, ROUTE_15_FUCHSIA_GATE, 2
	warp_event  7, 35, ROUTE_19_FUCHSIA_GATE, 1
	warp_event  8, 35, ROUTE_19_FUCHSIA_GATE, 2
	warp_event 23,  9, SAFARI_ZONE_MAIN_OFFICE, 2

	def_coord_events

	def_bg_events
	bg_event 13, 15, BGEVENT_READ, FuchsiaCitySign
	bg_event  5, 29, BGEVENT_READ, FuchsiaGymSign
	bg_event 21, 17, BGEVENT_READ, SafariZoneOfficeSign
	bg_event 27, 29, BGEVENT_READ, WardensHomeSign
	bg_event 17,  5, BGEVENT_READ, SafariZoneClosedSign
	bg_event 20, 27, BGEVENT_READ, FuchsiaCityPokecenterSign
	bg_event  6, 13, BGEVENT_READ, FuchsiaCityMartSign
	bg_event 33, 25, BGEVENT_READ, GameSign
	bg_event 20,  3, BGEVENT_READ, SafariLockedDoor

	def_object_events
	object_event 14, 29, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungster, -1
	object_event 16, 14, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokefanM, -1
	object_event 13,  8, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityTeacher, -1
	object_event 22,  9, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, BackBiker1, EVENT_BEAT_TONY
	object_event 23,  9, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, BackBiker2, EVENT_BEAT_TONY
	object_event 22, 16, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, BikerVsJanine, EVENT_BEAT_KANTO_FEDERATION
	object_event 22, 18, SPRITE_JANINE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, JanineOutdoors, EVENT_BEAT_NEV
	object_event  8, 28, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, FuchsiaGymBlocker, EVENT_BEAT_KANTO_FEDERATION
	object_event  8,  1, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityFruitTree, -1
	object_event 33, 24, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityCloysterScript, -1
	object_event 31,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityFruitTree2, -1
	object_event  8, 17, SPRITE_LAPRAS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, FuchsiaCityWeezingScript, -1
	object_event  6,  6, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityWeezingScript, -1
	object_event 30, 15, SPRITE_KANGASKHAN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityWeezingScript, -1
	object_event 31,  9, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityWeezingScript, -1
	object_event 22, 17, SPRITE_WEEZING, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, FuchsiaCityWeezingScript, EVENT_BEAT_NEV
	object_event 37, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FuchsiaItem, EVENT_FUCHSIA_ITEM
