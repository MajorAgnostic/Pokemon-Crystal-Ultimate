	object_const_def
	const ROCKTUNNELB1F_POKE_BALL1
	const ROCKTUNNELB1F_POKE_BALL2
	const ROCKTUNNELB1F_POKE_BALL3
	const ROCKTUNNELB1F_ANDREA
	const ROCKTUNNELB1F_SUPER_NERD1
	const ROCKTUNNELB1F_SUPER_NERD2
	const ROCKTUNNELB1F_PICNICKER1
	const ROCKTUNNELB1F_HIKER

RockTunnelB1F_MapScripts:
	def_scene_scripts

	def_callbacks

RockTunnelB1FIron:
	itemball NUGGET

RockTunnelB1FPPUp:
	itemball PP_UP

RockTunnelB1FRevive:
	itemball REVIVE

RockTunnelB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_ROCK_TUNNEL_B1F_HIDDEN_MAX_POTION
	
Andrea:
	faceplayer
	checkevent EVENT_ENABLE_DIPLOMA_PRINTING
	iffalse .BattleLater
	waitsfx
	playmusic MUSIC_ZINNIA_ENCOUNTER
	opentext
	writetext AndreaSeenText
	waitbutton
	closetext
	winlosstext AndreaBeatenText, AndreaBeatenText
	loadtrainer ANDREA, ANDREA1
	loadvar VAR_BATTLETYPE, BATTLETYPE_SETNOITEMS
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	opentext
	writetext AndreaAfterBattleText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear ROCKTUNNELB1F_ANDREA
	setevent EVENT_BEAT_ANDREA
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	end
	
.BattleLater:
	opentext
	writetext AndreaBattleLaterText
	waitbutton
	closetext
	end
	
TrainerWinston:
	trainer POKEMANIAC, WINSTON, EVENT_BEAT_POKEMANIAC_WINSTON, PokemaniacWinstonSeenText, PokemaniacWinstonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacWinstonAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSteve:
	trainer POKEMANIAC, STEVEN, EVENT_BEAT_POKEMANIAC_STEVE, PokemaniacSteveSeenText, PokemaniacSteveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacSteveAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSofia:
	trainer PICNICKER, SOFIA, EVENT_BEAT_SOFIA, PicnickerSofiaSeenText, PicnickerSofiaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerSofiaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerLenny:
	trainer HIKER, LENNY, EVENT_BEAT_LENNY, LennySeenText, LennyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LennyAfterBattleText
	waitbutton
	closetext
	end
	
PokemaniacWinstonSeenText:
	text "I draw illustra-"
	line "tions of #MON"
	cont "when I'm home."
	done

PokemaniacWinstonBeatenText:
	text "Whew…"
	line "I'm exhausted…"
	done

PokemaniacWinstonAfterBattleText:
	text "I'm an artist, not"
	line "a fighter."

	para "I'll go home to"
	line "draw."
	done
	
PokemaniacSteveSeenText:
	text "Um… Do you know"
	line "about #MON"
	cont "cosplay?"
	done

PokemaniacSteveBeatenText:
	text "Well, that's that."
	done

PokemaniacSteveAfterBattleText:
	text "#MON cosplay is"
	line "dressing up as a"
	cont "#MON for fun."

	para "CLEFAIRY is a fan"
	line "favorite."
	done
	
PicnickerSofiaSeenText:
	text "I don't often come"
	line "here, but I will"
	cont "battle you."
	done

PicnickerSofiaBeatenText:
	text "Oh!"
	line "I lost!"
	done

PicnickerSofiaAfterBattleText:
	text "I like to cuddle"
	line "with my #MON!"
	done
	
LennySeenText:
	text "Hit me with your"
	line "best shot!"
	done

LennyBeatenText:
	text "Fired away!"
	done

LennyAfterBattleText:
	text "I'll raise my #-"
	line "MON to beat yours,"
	cont "kid."
	done
	
AndreaBattleLaterText:
	text "Hey, have you seen"
	line "a man wearing a"

	para "black coat and fe-"
	line "dora? Real broody"
	cont "and gloomy."

	para "He has had it hard"
	line "recently, though…"
	
	para "He may have hurt a"
	line "lot of people and"
	
	para "#MON, but he's"
	line "my brother, after"
	cont "all."
	
	para "I owe it to him to"
	line "lend a hand."
	
	para "In any case, give"
	line "him a warm hello"
	
	para "for me, should you"
	line "happen upon him."
	
	para "Good luck on your"
	line "travels, trainer!"
	done
	
AndreaSeenText:
	text "Hmm… you have that"
	line "certain look about"

	para "you. Ya know, the"
	line "one when a strong"

	para "trainer sees some-"
	line "one worthy of a"
	cont "challenge."
	
	para "Heh, I'll bite. It"
	line "has been a while,"
	cont "after all."
	
	para "Believe it or not,"
	line "I was the #MON"
	
	para "LEAGUE CHAMPION a"
	line "while back."
	
	para "Never lost, but I"
	line "had to resign due"
	
	para "to competing obli-"
	line "gations. You know"
	
	para "how it is with us"
	line "adults."
	
	para "Anyway, I bet that"
	line "you're itching to"
	cont "battle right now."
	
	para "It may have been a"
	line "while since I last"
	cont "battled, but know"
	cont "that my fighting"
	
	para "spirit is still"
	line "blazing with the"
	cont "passion I have for"
	cont "#MON!"
	
	para "Well, lets see how"
	line "you do against the"
	
	para "one who inherits"
	line "eternity!"
	done

AndreaBeatenText:
	text "Astounding! You're"
	line "something else!"
	done

AndreaAfterBattleText:
	text "So that's how it"
	line "is, eh?"
	
	para "No wonder you've"
	line "become CHAMPION."

	para "Seems as though I"
	line "have a bit of rust"
	cont "to rid myself of."
	
	para "Can't just rest on"
	line "my laurels, now"
	cont "can I?"
	
	para "Maybe I'll see you"
	line "around here again"
	cont "sometime."
	
	para "I want to see that"
	line "raging hot fire in"
	cont "action once more!"
	done

RockTunnelB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, ROCK_TUNNEL_1F, 6
	warp_event 17,  9, ROCK_TUNNEL_1F, 4
	warp_event 23,  3, ROCK_TUNNEL_1F, 3
	warp_event 25, 23, ROCK_TUNNEL_1F, 5

	def_coord_events

	def_bg_events
	bg_event  4, 14, BGEVENT_ITEM, RockTunnelB1FHiddenMaxPotion

	def_object_events
	object_event  7, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnelB1FIron, EVENT_ROCK_TUNNEL_B1F_IRON
	object_event  6, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnelB1FPPUp, EVENT_ROCK_TUNNEL_B1F_PP_UP
	object_event 15,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnelB1FRevive, EVENT_ROCK_TUNNEL_B1F_REVIVE
	object_event 11,  8, SPRITE_ANDREA, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Andrea, EVENT_BEAT_ANDREA
	object_event 20, 24, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerWinston, -1
	object_event  4,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSteve, -1
	object_event 18, 15, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSofia, -1
	object_event 26,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerLenny, -1
