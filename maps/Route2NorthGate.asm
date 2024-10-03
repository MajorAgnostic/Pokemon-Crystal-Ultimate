	object_const_def ; object_event constants

Route2NorthGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route2NorthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 6
	warp_event  5,  0, ROUTE_2, 7
	warp_event  4,  7, VIRIDIAN_FOREST, 1
	warp_event  5,  7, VIRIDIAN_FOREST, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
