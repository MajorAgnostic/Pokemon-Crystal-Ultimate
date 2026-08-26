	object_const_def
	const ROUTE22PAST_GIOVANNI
	const ROUTE22PAST_SILVER
	const ROUTE22PAST_CELEBI

Route22Past_MapScripts:
	def_scene_scripts
	scene_script .Route22Past ; SCENE_GIOVANNISILVER

	def_callbacks
	
.Route22Past:
	pause 30
	applymovement PLAYER, Route22Past_PlayerLooksAroundMovementData
	pause 10
	showemote EMOTE_SHOCK, PLAYER, 20
	special FadeOutMusic
	applymovement ROUTE22PAST_SILVER, Route22Past_SilverMovementData1
	opentext
	writetext WhyQuitText
	waitbutton
	closetext
	turnobject ROUTE22PAST_GIOVANNI, RIGHT
	pause 15
	opentext
	writetext GoSoloText
	waitbutton
	closetext
	pause 15
	applymovement ROUTE22PAST_SILVER, Route22Past_SilverMovementData1
	opentext
	writetext IDontUnderstandYouText
	waitbutton
	closetext
	pause 15
	turnobject ROUTE22PAST_GIOVANNI, LEFT
	opentext
	writetext OneDayText
	waitbutton
	closetext
	applymovement ROUTE22PAST_GIOVANNI, Route22Past_GiovanniLeaves
	pause 15
	applymovement ROUTE22PAST_SILVER, Route22Past_SilverMovementData1
	opentext
	writetext StrongOnMyOwnText
	waitbutton
	closetext
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement ROUTE22PAST_SILVER, Route22Past_SilverMovementData2
	showemote EMOTE_SHOCK, ROUTE22PAST_SILVER, 15
	opentext
	writetext StaringText
	waitbutton
	closetext
	playsound SFX_TACKLE
	applymovement PLAYER, Route22Past_SilverMovementDataShove
	pause 15
	applymovement ROUTE22PAST_SILVER, Route22Past_SilverMovementData3
	turnobject PLAYER, DOWN
	special RestartMapMusic
	pause 30
	playsound SFX_GAME_FREAK_LOGO_GS
	pause 30
	turnobject PLAYER, UP
	pause 30
	cry CELEBI
	pause 15
	playsound SFX_GAME_FREAK_LOGO_GS
	special FadeOutPalettes
	waitsfx
	setmapscene NEW_BARK_TOWN, SCENE_NEWBARKTOWN_NOTHING
	warp GIOVANNI_HOUSE, 5, 2
	end
	
Route22Past_SilverMovementData1:
	slow_step LEFT
	step_end
	
Route22Past_SilverMovementData2:
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step_end
	
Route22Past_SilverMovementData3:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end
	
Route22Past_SilverMovementDataShove:
	turn_head_up
	fix_facing
	jump_step_down
	step_sleep_6
	turn_head_left
	step_right
	remove_fixed_facing
	step_end
	
Route22Past_GiovanniLeaves:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	step_end
	
Route22Past_PlayerLooksAroundMovementData:
	turn_head_left
	step_sleep_8
	step_sleep_8
	step_sleep_8
	turn_head_right
	step_sleep_8
	step_sleep_8
	step_sleep_8
	turn_head_up
	step_sleep_8
	step_sleep_8
	step_sleep_8
	step UP
	step UP
	step UP
	step_sleep_8
	turn_head_right
	step_sleep_8
	step_sleep_8
	step_sleep_8
	turn_head_up
	step_end

; Text mostly taken from Polished
WhyQuitText:
	text "<RIVAL>: You told"
	line "me… you told me"

	para "you were number"
	line "one!"
	
	para "Are you gonna"
	line "quit?"

	para "What are you"
	line "going to do now?"
	done
	
GoSoloText:
	text "???: …… …… ……"

	para "One must acknow-"
	line "ledge one's defeat"

	para "before he can move"
	line "on…"

	para "I will go solo…"
	line "for now…"

	para "So that one day I"
	line "will form a"

	para "stronger organ-"
	line "ization!"

	para "<RIVAL>: What"
	line "aspect of you was"
	cont "number one?"

	para "Gathering so many"
	line "only to be…"

	para "defeated by a"
	line "mere child!"

	para "???: …… …… ……"

	para "Putting together"
	line "the potential of"

	para "many is how you"
	line "produce a huge"
	cont "power…"

	para "That's what an"
	line "organization is!"

	para "I failed to make"
	line "the best use of"

	para "my subordinates'"
	line "potential…"

	para "But you shall wit-"
	line "ness one day the"

	para "revival of me and"
	line "my TEAM ROCKET!"
	done
	
IDontUnderstandYouText:
	text "<RIVAL>: I don't"
	line "understand you!"

	para "You don't make"
	line "any sense!"
	done
	
OneDayText:
	text "???: …… …… ……"

	para "One day, you will"
	line "understand."
	done
	
StrongOnMyOwnText:
	text "<RIVAL>: I don't"
	line "want to understand"
	cont "you!"

	para "I will never"
	line "become someone"
	cont "like you."

	para "A coward when"
	line "you're alone and"

	para "acting like a"
	line "tyrant when you're"

	para "in front of other"
	line "cowards!"

	para "I will become"
	line "strong!"

	para "I will become a"
	line "stronger man all"
	cont "by myself!"

	para "All by myself!"
	done
	
StaringText:
	text "<RIVAL>: …What are"
	line "you staring at?"
	done

Route22Past_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 28,  4, SPRITE_HAT_GIOVANNI, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, Route22Past_PlayerLooksAroundMovementData, -1
	object_event 31,  4, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22Past_PlayerLooksAroundMovementData, -1
	object_event 32,  6, SPRITE_CELEBI, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route22Past_PlayerLooksAroundMovementData, -1
