SeafoamIslandsEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamIslandsEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21,  9, ROUTE_20, 1
	warp_event 23,  7, SEAFOAM_ISLANDS_1F, 1
	warp_event 21,  5, SEAFOAM_GYM, 1
	warp_event  5,  9, ROUTE_20, 2
	warp_event  5,  7, SEAFOAM_ISLANDS_1F, 2

	def_coord_events

	def_bg_events

	def_object_events
