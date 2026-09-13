	object_const_def
	const SILVERCAVEROOM2_STEVEN
	const SILVERCAVEROOM2_POKE_BALL1
	const SILVERCAVEROOM2_POKE_BALL2
	const SILVERCAVEROOM2_POKE_BALL3
	const SILVERCAVEROOM2_ROCKER1
	const SILVERCAVEROOM2_ROCKER2
	const SILVERCAVEROOM2_FISHER

SilverCaveRoom2_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_SILVERCAVEROOM2_NOTHING
	scene_script .DummyScene1 ; SCENE_SILVERCAVEROOM2_SCENE

	def_callbacks
	
.DummyScene0:
.DummyScene1:
	end
	
NicholasScene:
	turnobject PLAYER, LEFT
	turnobject SILVERCAVEROOM2_STEVEN, RIGHT
	sjump TrainerNicholas

TrainerNicholas:
	faceplayer
	opentext
	checkevent EVENT_BEAT_NICHOLAS
	iftrue .NicholasBeaten
	playmusic MUSIC_BRENDAN_ENCOUNTER
	writetext NicholasSeenText
	waitbutton
	closetext
	winlosstext NicholasBeatenText, 0
	loadtrainer NICHOLAS, NICHOLAS1
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	startbattle
	reloadmapafterbattle
	setscene SCENE_FINISHED
	setevent EVENT_BEAT_NICHOLAS
	opentext
	writetext NicholasAfterBattleText
	waitbutton
	closetext
	end 
	
.NicholasBeaten
	writetext NicholasAfterBattleText2
	waitbutton
	closetext
	end
	
TrainerHarvey:
	trainer GUITARIST, HARVEY, EVENT_BEAT_HARVEY, HarveySeenText, HarveyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HarveyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerJohn:
	trainer BOARDER, JOHN, EVENT_BEAT_JOHN, JohnSeenText, JohnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JohnAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSeph:
	trainer FIREBREATHER, SEPH, EVENT_BEAT_SEPH, SephSeenText, SephBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SephAfterBattleText
	waitbutton
	closetext
	end

SilverCaveRoom2Calcium:
	itemball FULL_RESTORE

SilverCaveRoom2UltraBall:
	itemball ULTRA_BALL

SilverCaveRoom2PPUp:
	itemball PP_UP

SilverCaveRoom2HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_SILVER_CAVE_ROOM_2_HIDDEN_MAX_POTION
	
SilverCaveRoom2HiddenGBJuice:
	hiddenitem GOLD_B_JUICE, EVENT_SILVER_HIDDENGBJUICE
	
SilverCaveRoom2HiddenMaxE:
	hiddenitem MAX_ELIXER, EVENT_SILVER_HIDDENMAXELIXIR
	
NicholasSeenText:
	text "Oh! I'm quite sur-"
	line "prised to see a"

	para "trainer this deep"
	line "in the mountain."

	para "You must be pretty"
	line "strong, then."
	
	para "I'm visiting KANTO"
	line "to study precious"
	
	para "stones, although I"
	line "certainly am not"
	
	para "one to shy away"
	line "from a battle!"
	
	para "Though I must warn"
	line "you that I am the"
	
	para "strongest trainer"
	line "you'll ever face!"
	
	para "Still up for it?"
	line "Heh…"
	
	para "Then let's rock!"
	done

NicholasBeatenText:
	text "Magnificent! You"
	line "may have what it"
	cont "takes."
	done

NicholasAfterBattleText:
	text "I must confess, I"
	line "was lying earlier"
	
	para "about being the"
	line "strongest."

	para "My friend RED is"
	line "training just up"
	cont "that tunnel and"

	para "he's a true #-"
	line "MON MASTER!"
	
	para "However, I think"
	line "that you have a"
	
	para "chance of giving"
	line "him a run for his"
	
	para "money, so good"
	line "luck, trainer!"
	cont "You'll need it!"
	done
	
NicholasAfterBattleText2:
	text "You know the path"
	line "before you."
	done
	
HarveySeenText:
	text "I like to play"
	line "metal riffs on"
	cont "my guitar."
	
	para "MT. SILVER feels"
	line "like the pinnacle"
	
	para "of everything, so"
	line "I always find in-"
	cont "tense inspiration"
	cont "here!"
	done

HarveyBeatenText:
	text "Twang!"
	done

HarveyAfterBattleText:
	text "There's a fella"
	line "up ahead who's a"
	
	para "fan of metal, as"
	line "well."
	
	para "Or was it stones?"
	line "Well, it doesn't"
	cont "matter."
	
	para "He's seriously"
	line "strong!"
	done
	
JohnSeenText:
	text "How far up until"
	line "I can hit the"
	cont "slopes?"
	done

JohnBeatenText:
	text "Woah!"
	done

JohnAfterBattleText:
	text "I can't wait to"
	line "blast down from"
	
	para "the peak of the"
	line "mountain!"
	done
	
SephSeenText:
	text "There's an intense"
	line "heat coming from"
	cont "up ahead."
	done

SephBeatenText:
	text "Blast it!"
	done

SephAfterBattleText:
	text "Be careful if you"
	line "head farther up."
	
	para "There's an extreme"
	line "heat wave coming"
	cont "from there."
	done

SilverCaveRoom2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 37, SILVER_CAVE_ROOM_1, 2
	warp_event 11, 11, SILVER_CAVE_ITEM_ROOMS, 4
	warp_event 13, 27, SILVER_CAVE_EXTERIOR, 2
	warp_event 23,  9, SILVER_CAVE_ITEM_ROOMS, 1
	warp_event  5,  1, SILVER_CAVE_ITEM_ROOMS, 3
	warp_event 15,  7, SILVER_CAVE_EXTERIOR, 1
	warp_event 17,  7, SILVER_CAVE_ROOM_2, 8
	warp_event 27, 29, SILVER_CAVE_ROOM_2, 7
	warp_event 27, 15, SILVER_CAVE_ITEM_ROOMS, 2
	warp_event  5, 27, SILVER_CAVE_ITEM_ROOMS, 6
	warp_event 15,  3, SILVER_CAVE_ITEM_ROOMS, 8
	warp_event  6, 15, SILVER_CAVE_ITEM_ROOMS, 7
	warp_event 27,  5, SILVER_CAVE_ITEM_ROOMS, 9
	warp_event 23,  3, SILVER_CAVE_EXTERIOR, 4
	warp_event 11,  3, SILVER_CAVE_ROOM_2, 16
	warp_event 25, 23, SILVER_CAVE_ROOM_2, 15

	def_coord_events
	coord_event 23, 10, SCENE_SILVERCAVEROOM2_NOTHING, NicholasScene

	def_bg_events
	bg_event 18,  3, BGEVENT_ITEM, SilverCaveRoom2HiddenMaxPotion
	bg_event  6, 14, BGEVENT_ITEM, SilverCaveRoom2HiddenGBJuice
	bg_event  9,  3, BGEVENT_ITEM, SilverCaveRoom2HiddenMaxE

	def_object_events
	object_event 22, 10, SPRITE_STEVEN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, TrainerNicholas, -1
	object_event 24, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2Calcium, EVENT_SILVER_CAVE_ROOM_2_CALCIUM
	object_event 22, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2UltraBall, EVENT_SILVER_CAVE_ROOM_2_ULTRA_BALL
	object_event  5, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom2PPUp, EVENT_SILVER_CAVE_ROOM_2_PP_UP
	object_event 19, 36, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerHarvey, -1
	object_event 11, 22, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJohn, -1
	object_event  3, 18, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSeph, -1
