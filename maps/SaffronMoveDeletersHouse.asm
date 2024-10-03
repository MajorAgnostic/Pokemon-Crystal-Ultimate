	object_const_def
	const SAFFRON_MOVEDELETERSHOUSE_SUPER_NERD
	const SAFFRON_MOVEDELETERSHOUSE_SUPER_NERD2

SaffronMoveDeletersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronMoveDeleter:
	faceplayer
	opentext
	special MoveDeletion
	waitbutton
	closetext
	end
	
SaffronMoveReminder:
	faceplayer
	opentext
	waitbutton
	closetext
	end

SaffronMoveDeletersHouseBookshelf:
	jumpstd DifficultBookshelfScript

SaffronMoveDeletersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 16
	warp_event  3,  7, SAFFRON_CITY, 16

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, SaffronMoveDeletersHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, SaffronMoveDeletersHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMoveDeleter, -1
	object_event  5,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMoveReminder, -1
