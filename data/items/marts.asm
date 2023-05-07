Marts:
; entries correspond to MART_* constants
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartAzalea
	dw MartCianwood
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F
	dw MartGoldenrod4F
	dw MartGoldenrod5F1
	dw MartOlivine
	dw MartEcruteak
	dw MartMahogany1
	dw MartMahogany2
	dw MartBlackthorn
	dw MartViridian
	dw MartPewter
	dw MartLavender
	dw MartFuchsia
	dw MartSaffron
	dw MartCerulean
	dw MartVermilion
	dw MartCeladon2F1
	dw MartCeladon2F2
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartUnderground
.End

MartCherrygrove:
	db 5 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BLUESKY_MAIL
	db -1 ; end

MartCherrygroveDex:
	db 6 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BLUESKY_MAIL
	db -1 ; end

MartViolet:
MartAzalea:
	db 11 ; # items
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db X_DEFEND
	db X_ATTACK
	db X_SPEED
	db -1 ; end

MartCianwood:
	db 6 ; # items
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db -1 ; end

MartGoldenrod2F1:
	db 9 ; # items
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db FULL_HEAL
	db REVIVE
	db -1 ; end

MartGoldenrod2F2:
	db 11 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ESCAPE_ROPE
	db REPEL
	db POKE_DOLL
	db FLOWER_MAIL
	db PINKBED
	db POLKADOTBED
	db NES
	db BLUECARPET
	db REDCARPET
	db -1 ; end

MartGoldenrod3F:
	db 7 ; # items
	db X_SPEED
	db X_SPECIAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db GUARD_SPEC
	db X_ACCURACY
	db -1 ; end

MartGoldenrod4F:
	db 9 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db HP_UP
	db LEAF_STONE
	db FIRE_STONE
	db WATER_STONE
	db THUNDERSTONE
	db -1 ; end

MartGoldenrod5F1:
	db 3 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db -1 ; end

MartOlivine:
	db 10 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db ICE_HEAL
	db SUPER_REPEL
	db SURF_MAIL
	db -1 ; end

MartEcruteak:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db -1 ; end

MartMahogany1:
	db 4 ; # items
	db TINYMUSHROOM
	db SLOWPOKETAIL
	db POKE_BALL
	db POTION
	db -1 ; end

MartMahogany2:
	db 11 ; # items
	db RAGECANDYBAR
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db ICE_HEAL
	db SUPER_REPEL
	db REVIVE
	db MIRAGE_MAIL
	db MORPH_MAIL
	db -1 ; end

MartBlackthorn:
	db 10 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db X_DEFEND
	db X_ATTACK
	db MUSIC_MAIL
	db -1 ; end

MartViridian:
MartPewter:
MartLavender:
MartFuchsia:
MartSaffron:
	db 11 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db SUPER_REPEL
	db MAX_REPEL
	db X_ATTACK
	db X_ACCURACY
	db DIRE_HIT
	db -1 ; end

MartCerulean:
	db 8 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db SUPER_REPEL
	db FULL_HEAL
	db X_SPECIAL
	db X_SPEED
	db GUARD_SPEC
	db SURF_MAIL
	db -1 ; end

MartVermilion:
	db 8 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db REVIVE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ESCAPE_ROPE
	db LITEBLUEMAIL
	db -1 ; end

MartCeladon2F1:
	db 11 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db FULL_HEAL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartCeladon2F2:
	db 11 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db SUPER_REPEL
	db MAX_REPEL
	db PIKACHUBED
	db GREENCARPET
	db YELLOWCARPET
	db N64
	db VIRTUALBOY
	db -1 ; end

MartCeladon3F:
	db 2 ; # items
	db TM_DOUBLE_TEAM
	db TM_PROTECT
	db -1 ; end

MartCeladon4F:
	db 8 ; # items
	db LEAF_STONE
	db FIRE_STONE
	db WATER_STONE
	db THUNDERSTONE
	db POKE_DOLL
	db LOVELY_MAIL
	db SURF_MAIL
	db FLOWER_MAIL
	db -1 ; end

MartCeladon5F1:
	db 5 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db -1 ; end

MartCeladon5F2:
	db 7 ; # items
	db GUARD_SPEC
	db DIRE_HIT
	db X_ACCURACY
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db -1 ; end

MartMtMoon:
	db 10 ; # items
	db LEMONADE
	db SODA_POP
	db FRESH_WATER
	db REPEL
	db POKE_DOLL
	db PORTRAITMAIL
	db CLEFAIRY_DOLL
	db CLEFAIRY_POSTER
	db JIGGLYPUFF_DOLL
	db JIGGLYPUFF_POSTER
	db -1 ; end

MartIndigoPlateau:
	db 8 ; # items
	db RARE_CANDY
	db ULTRA_BALL
	db MAX_REPEL
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db REVIVE
	db FULL_HEAL
	db -1 ; end

MartUnderground:
	db 7 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db MAGNA_PLANT
	db TROPIC_PLANT
	db JUMBO_PLANT
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
