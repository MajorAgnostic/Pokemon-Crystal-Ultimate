	object_const_def
	const ROCKTUNNEL1F_SUPER_NERD1
	const ROCKTUNNEL1F_SUPER_NERD2
	const ROCKTUNNEL1F_POKE_BALL1
	const ROCKTUNNEL1F_POKE_BALL2
	const ROCKTUNNEL1F_PICNICKER
	const ROCKTUNNEL1F_CAMPER

RockTunnel1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerSupernerdShawn:
	trainer SUPER_NERD, SHAWN, EVENT_BEAT_SUPER_NERD_SHAWN, SupernerdShawnSeenText, SupernerdShawnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdShawnAfterBattleText
	waitbutton
	closetext
	end
	
TrainerPokemaniacEthan:
	trainer POKEMANIAC, ETHAN, EVENT_BEAT_POKEMANIAC_ETHAN, PokemaniacEthanSeenText, PokemaniacEthanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacEthanAfterBattleText
	waitbutton
	closetext
	end
	
TrainerLeah:
	trainer PICNICKER, LEAH, EVENT_BEAT_LEAH, LeahSeenText, LeahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LeahAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSekher:
	trainer CAMPER, SEKHER, EVENT_BEAT_SEKHER, SekherSeenText, SekherBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SekherAfterBattleText
	waitbutton
	closetext
	end

RockTunnel1FElixer:
	itemball ELIXER

RockTunnel1FTMSteelWing:
	itemball FULL_RESTORE

RockTunnel1FHiddenXAccuracy:
	hiddenitem X_ACCURACY, EVENT_ROCK_TUNNEL_1F_HIDDEN_X_ACCURACY

RockTunnel1FHiddenXDefend:
	hiddenitem X_DEFEND, EVENT_ROCK_TUNNEL_1F_HIDDEN_X_DEFEND
	
SupernerdShawnSeenText:
	text "What kinds of #"
	line "BALLS do you have"
	cont "with you?"
	done

SupernerdShawnBeatenText:
	text "Wait! Stop! Don't!"
	line "Please!"
	done

SupernerdShawnAfterBattleText:
	text "You should use the"
	line "right BALLS to fit"
	cont "the situation."
	done
	
PokemaniacEthanSeenText:
	text "Do you know LILY?"
	line "She's a hot DJ in"
	cont "KANTO."
	done

PokemaniacEthanBeatenText:
	text "Gyaaaah!"
	done

PokemaniacEthanAfterBattleText:
	text "LILY's nice, but"
	line "MARY's the best!"

	para "I want to check"
	line "out JOHTO's radio"
	cont "programs!"
	done
	
LeahSeenText:
	text "Eek!"
	
	para "Don't try anything"
	line "funny in the dark!"
	done

LeahBeatenText:
	text "It was too dark…"
	done

LeahAfterBattleText:
	text "I think I saw a"
	line "MACHAMP in this"
	cont "tunnel."
	done
	
SekherSeenText:
	text "I am no ordinary"
	line "CAMPER."
	
	para "I seek the darkest"
	line "caves to test my"
	cont "mettle."
	done

SekherBeatenText:
	text "Incredible!"
	done

SekherAfterBattleText:
	text "You completely and"
	line "utterly thrashed"
	cont "me!"
	
	para "I feel a little"
	line "sick, honestly."
	done

RockTunnel1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  3, ROUTE_9, 1
	warp_event 11, 25, ROUTE_10_SOUTH, 1
	warp_event  5,  3, ROCK_TUNNEL_B1F, 3
	warp_event 15,  9, ROCK_TUNNEL_B1F, 2
	warp_event 27,  3, ROCK_TUNNEL_B1F, 4
	warp_event 27, 13, ROCK_TUNNEL_B1F, 1

	def_coord_events

	def_bg_events
	bg_event 24,  4, BGEVENT_ITEM, RockTunnel1FHiddenXAccuracy
	bg_event 21, 15, BGEVENT_ITEM, RockTunnel1FHiddenXDefend

	def_object_events
	object_event  9, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSupernerdShawn, -1
	object_event 24,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacEthan, -1
	object_event  4, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnel1FElixer, EVENT_ROCK_TUNNEL_1F_ELIXER
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnel1FTMSteelWing, EVENT_ROCK_TUNNEL_1F_TM_STEEL_WING
	object_event 27, 18, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerLeah, -1
	object_event 11, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSekher, -1
