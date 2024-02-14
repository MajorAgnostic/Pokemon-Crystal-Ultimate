	object_const_def
	const TOHJOFALLS_POKE_BALL
	const TOHJOFALLS_GIOVANNI

TohjoFalls_MapScripts:
	def_scene_scripts

	def_callbacks

TohjoFallsMoonStone:
	itemball MOON_STONE
	
TohjoGiovanni:
	faceplayer
	checkevent EVENT_SPOKE_ONCE
	iffalse .Speak2Pre
	checkevent EVENT_SPOKE_TO_ANDREA
	iffalse .LeaveMe
	checkevent EVENT_GIOVANNI_READY
	iffalse .Ready
	opentext
	writetext TohjoGiovanniBeforeBattle
	waitbutton
	closetext
	winlosstext TohjoGiovanniBeatenText, TohjoGiovanniBeatenText
	loadtrainer GIOVANNI, GIOVANNI1
	loadvar VAR_BATTLETYPE, BATTLETYPE_SET
	startbattle
	reloadmapafterbattle
	opentext
	writetext TohjoGiovanniAfterBattleText
	waitbutton
	closetext
	setevent EVENT_BEAT_GIOVANNI
	disappear TOHJOFALLS_GIOVANNI
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 15
	special FadeInQuickly
	pause 30
	refreshscreen
	end
	
.Speak2Pre:
	opentext
	checkevent EVENT_SPOKE_TO_ANDREA
	iffalse .NoAndrea
	writetext TohjoGiovanniOpeningPostAndrea
	setevent EVENT_SPOKE_ONCE
	setevent EVENT_GIOVANNI_READY
	waitbutton
	closetext
	turnobject TOHJOFALLS_GIOVANNI, UP
	end
	
.NoAndrea:
	writetext TohjoGiovanniOpening
	setevent EVENT_SPOKE_ONCE
	waitbutton
	closetext
	turnobject TOHJOFALLS_GIOVANNI, UP
	end
	
.LeaveMe:
	opentext
	writetext TohjoGiovanniOpening2
	waitbutton
	closetext
	turnobject TOHJOFALLS_GIOVANNI, UP
	end
	
.Ready:
	opentext
	writetext TohjoGiovanniBeforeBattle2
	setevent EVENT_GIOVANNI_READY
	waitbutton
	closetext
	turnobject TOHJOFALLS_GIOVANNI, UP
	end
	
TohjoGiovanniOpening:
	text "Hmm… …yes, maybe…"
	line "… … …hmm?"

	para "A trainer, by the"
	line "looks of it."

	para "Looking to issue a"
	line "challenge to the"
	cont "ELITE FOUR?"
	
	para "I once shared that"
	line "dream, too."
	
	para "I once shared many"
	line "dreams with many"
	cont "others, in fact…"
	
	para "Well, don't you"
	line "have somewhere"
	cont "to be?"
	
	para "Leave me be."
	done
	
TohjoGiovanniOpening2:
	text "Leave me be."
	done
	
TohjoGiovanniOpeningPostAndrea:
	text "Hmm… …yes, maybe…"
	line "… … …hmm?"

	para "A trainer, by the"
	line "looks of it."

	para "Looking to issue a"
	line "challenge to the"
	cont "ELITE FOUR?"
	
	para "I once shared that"
	line "dream, too."
	
	para "I once shared many"
	line "dreams with many"
	cont "others, in fact…"
	
	para "What's that? You"
	line "spoke to a man who"
	cont "was looking for"
	cont "me?"
	
	para "… … …"
	line "… … …"
	
	para "…Mind your place,"
	line "child."
	
	para "I wouldn't be here"
	line "if I wanted to be"
	cont "found."
	
	para "Now, leave me be."
	done
	
TohjoGiovanniBeforeBattle2:
	text "You again."
	
	para "What's that? You"
	line "spoke to a man who"
	cont "was looking for"
	cont "me?"
	
	para "… … …"
	line "… … …"
	
	para "…Mind your place,"
	line "child."
	
	para "I wouldn't be here"
	line "if I wanted to be"
	cont "found."
	
	para "Now, leave me be."
	done
	
TohjoGiovanniBeforeBattle:
	text "You again."
	
	para "I instructed you"
	line "to begone."
	
	para "It seems you must"
	line "be taught some"
	cont "manners."
	done

TohjoGiovanniBeatenText:
	text "What? Impossible."
	line "Are you…? No, it"
	cont "cannot be…"
	done

TohjoGiovanniAfterBattleText:
	text "Hmph. You can hold"
	line "your own, that"
	cont "much is certain."
	
	para "I'm GIOVANNI, the"
	line "former leader of"
	cont "TEAM ROCKET."
	
	para "Sometimes I wonder"
	line "what TEAM ROCKET"
	cont "could've achieved"
	cont "if we had more"
	cont "strength…"

	para "If I… had more"
	line "strength…"
	done

TohjoFalls_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 15, ROUTE_27, 2
	warp_event 25, 15, ROUTE_27, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TohjoFallsMoonStone, EVENT_TOHJO_FALLS_MOON_STONE
	object_event 27, 14, SPRITE_HAT_GIOVANNI, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TohjoGiovanni, EVENT_BEAT_GIOVANNI
