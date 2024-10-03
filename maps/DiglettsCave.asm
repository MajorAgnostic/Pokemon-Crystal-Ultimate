	object_const_def
	const DIGLETTSCAVE_POKEFAN_M

DiglettsCave_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .TunnelLocked
	
.TunnelLocked:
	checkevent EVENT_FOUGHT_SNORLAX
	iftrue .KeepEntranceOpen
	changeblock 3, 33, $2 ; wall
	changeblock 3, 34, $5 ; entrance gone
.KeepEntranceOpen:
	endcallback

DiglettsCavePokefanMScript:
	checkevent EVENT_FOUGHT_SNORLAX
	iffalse .Text2
	jumptextfaceplayer DiglettsCavePokefanMText
.Text2:
	jumptextfaceplayer DiglettsCavePokefanMText2

DiglettsCaveHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_DIGLETTS_CAVE_HIDDEN_MAX_REVIVE

DiglettsCavePokefanMText:
	text "DUGTRIO… so fast!"
	line "I really wish I"

	para "brought a SMOKE"
	line "BALL."
	done
	
DiglettsCavePokefanMText2:
	text "Darn… there's a"
	line "SNORLAX blocking"
	cont "the exit!"
	done

DiglettsCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 33, VERMILION_CITY, 10
	warp_event  5, 31, DIGLETTS_CAVE, 5
	warp_event 15,  5, ROUTE_2, 5
	warp_event 17,  3, DIGLETTS_CAVE, 6
	warp_event 17, 33, DIGLETTS_CAVE, 2
	warp_event  3,  3, DIGLETTS_CAVE, 4

	def_coord_events

	def_bg_events
	bg_event  6, 11, BGEVENT_ITEM, DiglettsCaveHiddenMaxRevive

	def_object_events
	object_event  3, 31, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DiglettsCavePokefanMScript, -1
