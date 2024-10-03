	object_const_def
	const OLIVINEHOUSEBETA_TEACHER
	const OLIVINEHOUSEBETA_RHYDON

OlivineHouseBeta_MapScripts:
	def_scene_scripts

	def_callbacks

MoveReminderBeta:
	faceplayer
	opentext
	waitbutton
	closetext
	end

OlivineHouseBetaRhydonScript:
	opentext
	writetext OlivineHouseBetaRhydonText
	cry RHYDON
	waitbutton
	closetext
	end

OlivineHouseBetaBookshelf1:
	jumpstd PictureBookshelfScript

OlivineHouseBetaBookshelf2:
	jumpstd MagazineBookshelfScript

OlivineHouseBetaRhydonText:
	text "RHYDON: Gugooh!"
	done

OlivineHouseBeta_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 4
	warp_event  3,  7, OLIVINE_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, OlivineHouseBetaBookshelf1
	bg_event  1,  1, BGEVENT_READ, OlivineHouseBetaBookshelf2

	def_object_events
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveReminderBeta, -1
	object_event  6,  5, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, OlivineHouseBetaRhydonScript, -1
