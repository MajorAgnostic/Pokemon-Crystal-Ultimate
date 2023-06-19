	object_const_def
	const ROUTE16FUCHSIASPEECHHOUSE_SUPER_NERD

Route16FuchsiaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route16FuchsiaSpeechHouseSuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_ENTIREFLYMAP
	iftrue .Finished
	checkflag ENGINE_FLYPOINT_SILVER_CAVE
	iffalse .Intro
	checkflag ENGINE_FLYPOINT_MT_MOON
	iffalse .Intro
	checkflag ENGINE_FLYPOINT_PALLET
	iffalse .Intro
	checkflag ENGINE_FLYPOINT_CINNABAR
	iffalse .Intro
	writetext UnlockEntireFlyMapText
	promptbutton
	verbosegiveitem SILVER_LEAF
	iffalse .BagFull
	setevent EVENT_ENTIREFLYMAP
	writetext ReceivedLeafText
	waitbutton
.BagFull:
	closetext
	end
	
.Finished:
	writetext FinishedText
	waitbutton
	closetext
	end
	
.Intro:
	writetext IntroText
	waitbutton
	closetext
	end

Route16FuchsiaSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

IntroText:
	text "If you cruise down"
	line "CYCLING ROAD, you"

	para "will end up in"
	line "FUCHSIA CITY."
	
	para "But it's much more"
	line "convenient to get"
	cont "around using FLY."
	
	para "Tell you what, if"
	line "you visit every"
	
	para "single location in"
	line "the world, I will"
	
	para "show you how to"
	line "FLY anywhere."
	done
	
UnlockEntireFlyMapText:
	text "If you cruise down"
	line "CYCLING ROAD, you"

	para "will end up in"
	line "FUCHSIA CITY."
	
	para "But it's much more"
	line "convenient to get"
	cont "around using FLY."
	
	para "Tell you what, if"
	line "you visit every"
	
	para "single location in"
	line "the world, I will"
	
	para "show you how to"
	line "FLY anywhere."
	
	para "What's that? You"
	line "already traveled"
	
	para "around the whole"
	line "world?"
	
	para "I'm impressed!"
	
	para "As promised, I'll"
	line "share my secret"
	cont "with you."
	done
	
ReceivedLeafText:
	text "This SILVER LEAF"
	line "seems to possess"
	
	para "the ability to"
	line "propel a #MON"
	
	para "through strong"
	line "air currents."
	
	para "I wonder if that"
	line "power comes from"
	
	para "the silver #-"
	line "MON of storms…"
	
	para "Anyway, this can"
	line "get your flying"
	cont "#MON across"
	cont "regions!"
	
	para "How amazing is"
	line "that?"
	done
	
FinishedText:
	text "I hope you enjoy"
	line "your travels to"
	cont "the fullest."
	
	para "And make sure to"
	line "hold on to that"
	cont "SILVER LEAF!"
	done

Route16FuchsiaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_16, 1
	warp_event  3,  7, ROUTE_16, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, Route16FuchsiaSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, Route16FuchsiaSpeechHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route16FuchsiaSpeechHouseSuperNerdScript, -1
