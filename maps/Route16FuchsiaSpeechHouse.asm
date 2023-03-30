	object_const_def
	const ROUTE16FUCHSIASPEECHHOUSE_SUPER_NERD

Route16FuchsiaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route16FuchsiaSpeechHouseSuperNerdScript:
	faceplayer
	opentext
	checkflag ENGINE_ENTIREFLYMAP
	iftrue .Finished
	checkflag ENGINE_FLYPOINT_CELADON
	iffalse .Intro
	checkflag ENGINE_FLYPOINT_FUCHSIA
	iffalse .Intro
	checkflag ENGINE_FLYPOINT_CINNABAR
	iffalse .Intro
	checkflag ENGINE_FLYPOINT_PALLET
	iffalse .Intro
	checkflag ENGINE_FLYPOINT_VIRIDIAN
	iffalse .Intro
	checkflag ENGINE_FLYPOINT_PEWTER
	iffalse .Intro
	writetext UnlockEntireFlyMapText
	setflag ENGINE_ENTIREFLYMAP
	waitbutton
	closetext
	playsound SFX_GET_BADGE
	pause 100
	reloadmapafterbattle
	opentext
	writetext FinishedText
	waitbutton
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
	
	para "city and town in"
	line "KANTO, I'll teach"
	
	para "your #MON how"
	line "to FLY across re-"
	cont "gions."
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
	
	para "city and town in"
	line "KANTO, I'll teach"
	
	para "your #MON how"
	line "to FLY across re-"
	cont "gions."
	
	para "What's that? You"
	line "already traveled"
	
	para "around the whole"
	line "region?"
	
	para "I'm impressed!"
	line "As promised, I'll"
	
	para "share my wisdom"
	line "with you."
	
	para "Just a moment…"
	done
	
FinishedText:
	text "I hope you enjoy"
	line "your travels to"
	cont "the fullest!"
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
