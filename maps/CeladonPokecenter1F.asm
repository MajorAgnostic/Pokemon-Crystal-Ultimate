	object_const_def
	const CELADONPOKECENTER1F_NURSE
	const CELADONPOKECENTER1F_GENTLEMAN
	const CELADONPOKECENTER1F_PHARMACIST
	const CELADONPOKECENTER1F_COOLTRAINER_F
	const CELADONPOKECENTER1F_EUSINE

CeladonPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CeladonPokecenter1FGentlemanScript:
	jumpstd HappinessCheckScript

CeladonPokecenter1FCooltrainerFScript:
	jumptextfaceplayer CeladonPokecenter1FCooltrainerFText

CeladonPokecenter1FPharmacistScript:
	jumptextfaceplayer CeladonPokecenter1FPharmacistText

CeladonEusine:
	faceplayer
	opentext
	checkevent EVENT_SPOKE_EUSINE
	iftrue .SecondMeeting
	writetext CeladonEusineText1
	setevent EVENT_SPOKE_EUSINE
	sjump .NoSuicune
.SecondMeeting
	special BeastsCheck
	iffalse .NoBeasts
	checkevent EVENT_BEAT_MISTY
	iftrue .HoOh
	sjump .NoMisty
.NoBeasts:
	writetext NoBeastsText
.NoSuicune:
	waitbutton
	closetext
	end
	
.NoMisty:
	writetext CeladonEusineText2
	waitbutton
	closetext
	end

.HoOh:
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	writetext EusineLeavesCeladonText
	setevent EVENT_EUSINE_LEAVES
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal UP, .Location1
	applymovement CELADONPOKECENTER1F_EUSINE, .Movement1
	sjump .Continue

.Location1:
	applymovement CELADONPOKECENTER1F_EUSINE, .Movement2
.Continue:
	disappear CELADONPOKECENTER1F_EUSINE
	playsound SFX_EXIT_BUILDING
	special FadeOutMusic
	pause 20
	playmusic MUSIC_POKEMON_CENTER
	end

.Movement2:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

.Movement1:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

CeladonPokecenter1FCooltrainerFText:
	text "ERIKA is a master"
	line "of grass #MON."

	para "She'll make you"
	line "pay if you don't"
	cont "watch yourself."
	done

CeladonPokecenter1FPharmacistText:
	text "TEAM ROCKET's"
	line "hideout is in the"

	para "basement of the"
	line "GAME CORNER."

	para "Oh, wait. That was"
	line "three years ago."
	done

CeladonEusineText1:
	text "EUSINE: Hello,"
	line "<PLAYER>!"

	para "I'm back visiting"
	line "my hometown."

	para "It's been quite a"
	line "while."
	
	para "What? You saw the"
	line "rainbow-colored"

	para "#MON flying in"
	line "this direction?"
	
	para "Incredible!"
	
	para "I hope to see it"
	line "roost soon; that"
	
	para "way I can finally"
	line "finish my research"
	
	para "on JOHTO's legen-"
	line "dary #MON."
	
	para "Perhaps it is wai-"
	line "ting for the three"
	cont "beasts' reunion?"
	
	para "That reminds me, I"
	line "heard of an elder"
	
	para "in PEWTER CITY who"
	line "has a SILVER WING."

	para "Maybe I am not as"
	line "close to finishing"
	
	para "my research as I"
	line "thought…"
	done
	
CeladonEusineText2:
	text "EUSINE: Hello,"
	line "<PLAYER>!"

	para "What? You caught"
	line "all of the legend-"
	cont "ary beasts?"

	para "That's incredible!"
	
	para "Maybe HO-OH will"
	line "roost soon to meet"
	cont "you…"
	
	para "By the way, have"
	line "you been collect-"
	cont "ing KANTO badges?"
	
	para "I hear that MISTY"
	line "is a fierce GYM"
	cont "LEADER!"
	done

EusineLeavesCeladonText:
	text "<PLAYER>, have you"
	line "heard?"

	para "There have been"
	line "fresh rumors of a"

	para "rainbow-colored"
	line "#MON appearing"
	cont "at TIN TOWER."

	para "I've just had my"
	line "party healed, so"

	para "now I'm headed to"
	line "ECRUTEAK."

	para "I'll be seeing"
	line "you, <PLAYER>!"
	done

NoBeastsText:
	text "Oh, by the way,"
	line "<PLAYER>."

	para "Have you caught"
	line "the legendary"

	para "#MON RAIKOU and"
	line "ENTEI?"

	para "<……><……><……>"

	para "Okay…"

	para "If you catch them"
	line "both, I hope that"
	cont "you'll inform me."

	para "I'm counting on"
	line "you, <PLAYER>!"
	done

CeladonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CELADON_CITY, 5
	warp_event  4,  7, CELADON_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FGentlemanScript, -1
	object_event  0,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FPharmacistScript, -1
	object_event  8,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonPokecenter1FCooltrainerFScript, -1
	object_event  4,  3, SPRITE_EUSINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, CeladonEusine, EVENT_EUSINE_LEAVES
