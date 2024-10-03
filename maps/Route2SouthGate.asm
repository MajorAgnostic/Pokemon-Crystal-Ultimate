	object_const_def ; object_event constants

Route2SouthGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route2SouthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_2, 8
	warp_event  4,  7, ROUTE_2, 8
	warp_event  0,  3, VIRIDIAN_FOREST, 2
	warp_event  0,  2, VIRIDIAN_FOREST, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
