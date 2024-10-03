	object_const_def
	const REDSHOUSE2F_POKE_BALL1
	const REDSHOUSE2F_POKE_BALL2

RedsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks

RedsHouse2FN64Script:
	jumptext RedsHouse2FN64Text

RedsHouse2FPCScript:
	jumptext RedsHouse2FPCText
	
RedsHouse2FBrickPiece:
	itemball BRICK_PIECE

RedsHouse2FBigOnixDoll:
	itemball BIG_ONIX_DOLL

RedsHouse2FN64Text:
	text "<PLAYER> played the"
	line "N64."

	para "Better get going--"
	line "no time to lose!"
	done

RedsHouse2FPCText:
	text "It looks like it"
	line "hasn't been used"
	cont "in a long time…"
	done

RedsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, REDS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  3,  5, BGEVENT_READ, RedsHouse2FN64Script
	bg_event  0,  1, BGEVENT_READ, RedsHouse2FPCScript

	def_object_events
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RedsHouse2FBrickPiece, EVENT_HOMEBRICKPIECE
	object_event  5,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RedsHouse2FBigOnixDoll, EVENT_HOMEBIGONIXDOLL
