	object_const_def
	const PEWTERMUSEUM1F_SUPER_NERD
	const PEWTERMUSEUM1F_NIDORAN_M

PewterMuseum1F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMuseumSuperNerdScript:
	jumptextfaceplayer PewterMuseumSuperNerdText

PewterMuseumNidoran:
	opentext
	writetext PewterMuseumNidoranText
	cry NIDORAN_M
	waitbutton
	closetext
	end

PewterMuseumSuperNerdText:
	text "NIDORAN, shake!"
	done

PewterMuseumNidoranText:
	text "NIDORAN: Gau gau!"
	done

PewterMuseum1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterMuseumSuperNerdScript, -1
	object_event 12,  2, SPRITE_NIDORAN_M, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, PewterMuseumNidoran, -1
