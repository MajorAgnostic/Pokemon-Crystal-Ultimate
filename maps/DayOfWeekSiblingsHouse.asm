	object_const_def
	const DAYOFWEEKSIBLINGSHOUSE_POKEDEX
	const DAYOFWEEKSIBLINGSHOUSE_POKE_BALL

DayOfWeekSiblingsHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .NoLeftovers
	
.NoLeftovers:
	checkevent NOMOLEFTOVERS
	iffalse .None0
	endcallback
.None0:
	checkevent EVENT_GOT_PINK_BOW_FROM_TUSCANY
	iftrue .None1
	disappear DAYOFWEEKSIBLINGSHOUSE_POKE_BALL
	endcallback
.None1:
	checkevent EVENT_GOT_SHARP_BEAK_FROM_MONICA
	iftrue .None2
	disappear DAYOFWEEKSIBLINGSHOUSE_POKE_BALL
	endcallback
.None2:
	checkevent EVENT_GOT_BLACKBELT_FROM_WESLEY
	iftrue .None3
	disappear DAYOFWEEKSIBLINGSHOUSE_POKE_BALL
	endcallback
.None3:
	checkevent EVENT_GOT_HARD_STONE_FROM_ARTHUR
	iftrue .None4
	disappear DAYOFWEEKSIBLINGSHOUSE_POKE_BALL
	endcallback
.None4:
	checkevent EVENT_GOT_POISON_BARB_FROM_FRIEDA
	iftrue .None5
	disappear DAYOFWEEKSIBLINGSHOUSE_POKE_BALL
	endcallback
.None5:
	checkevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	iftrue .None6
	disappear DAYOFWEEKSIBLINGSHOUSE_POKE_BALL
	endcallback
.None6:
	checkevent EVENT_GOT_MAGNET_FROM_SUNNY
	iftrue .None7
	disappear DAYOFWEEKSIBLINGSHOUSE_POKE_BALL
	endcallback
.None7:
	clearevent EVENT_ROUTE26_LEFTOVERS
	setevent NOMOLEFTOVERS
	endcallback

DayOfWeekSiblingsHousePokedexScript:
	opentext
	writetext DayOfWeekSiblingsHousePokedexText1
	yesorno
	iffalse .End
	writetext DayOfWeekSiblingsHousePokedexText2
	yesorno
	iffalse .End
	writetext DayOfWeekSiblingsHousePokedexText3
	waitbutton
.End:
	closetext
	end
	
DayOfWeekSiblingsHouseLeftovers:
	itemball LEFTOVERS

DayOfWeekSiblingsHousePokedexText1:
	text "There's something"
	line "written here."

	para "Read it?"
	done

DayOfWeekSiblingsHousePokedexText2:
	text "To my brothers and"
	line "sisters:"

	para "We take pride in"
	line "serving #MON"
	cont "trainers."

	para "When trainers talk"
	line "to you, give them"
	cont "something useful."

	para "Love,"
	line "MONICA"

	para "Keep reading?"
	done

DayOfWeekSiblingsHousePokedexText3:
	text "Monday, MONICA"
	line "ROUTE 40"

	para "Tuesday, TUSCANY"
	line "ROUTE 29"

	para "Wednesday, WESLEY"
	line "LAKE OF RAGE"

	para "Thursday, ARTHUR"
	line "ROUTE 36"

	para "Friday, FRIEDA"
	line "ROUTE 32"

	para "Saturday, SANTOS"
	line "BLACKTHORN CITY"

	para "Sunday, SUNNY"
	line "ROUTE 37"
	
	para "Once you've met"
	line "us all, drop by"
	cont "again!"
	done

DayOfWeekSiblingsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_26, 3
	warp_event  3,  7, ROUTE_26, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayOfWeekSiblingsHousePokedexScript, -1
	object_event  4,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DayOfWeekSiblingsHouseLeftovers, EVENT_ROUTE26_LEFTOVERS
