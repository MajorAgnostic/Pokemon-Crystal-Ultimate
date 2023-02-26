BattleTowerMons:
; 10 groups (one per floor level) of 21 mons (BATTLETOWER_NUM_UNIQUE_MON).

; BattleTowerMons group 1

	db JOLTEON
	db MIRACLEBERRY
	db THUNDERBOLT, HYPER_BEAM, SHADOW_BALL, ROAR
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 40000
	bigdw 40000
	bigdw 35000
	bigdw 40000
	dn 13, 13, 11, 13 ; DVs
	db 15, 5, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 41 ; HP
	bigdw 41 ; Max HP
	bigdw 25 ; Atk
	bigdw 24 ; Def
	bigdw 37 ; Spd
	bigdw 34 ; SAtk
	bigdw 31 ; SDef
	db "SANDA-SU@@@"

	db ESPEON
	db LEFTOVERS
	db MUD_SLAP, PSYCHIC_M, PSYCH_UP, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 50000
	bigdw 35000
	bigdw 40000
	bigdw 40000
	dn 14, 13, 15, 11 ; DVs
	db 10, 10, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 39 ; HP
	bigdw 39 ; Max HP
	bigdw 26 ; Atk
	bigdw 24 ; Def
	bigdw 35 ; Spd
	bigdw 38 ; SAtk
	bigdw 31 ; SDef
	db "E-HUi@@@@@@"

	db UMBREON
	db GOLD_BERRY
	db SHADOW_BALL, IRON_TAIL, PSYCH_UP, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 40000
	bigdw 45000
	bigdw 50000
	bigdw 40000
	dn 13, 11, 14, 15 ; DVs
	db 15, 15, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 46 ; HP
	bigdw 46 ; Max HP
	bigdw 25 ; Atk
	bigdw 34 ; Def
	bigdw 26 ; Spd
	bigdw 25 ; SAtk
	bigdw 39 ; SDef
	db "BURAtuKI-@@"

	db WOBBUFFET
	db FOCUS_BAND
	db COUNTER, MIRROR_COAT, SAFEGUARD, DESTINY_BOND
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	bigdw 50000
	dn 7, 15, 13, 7 ; DVs
	db 20, 20, 25, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 66 ; HP
	bigdw 66 ; Max HP
	bigdw 18 ; Atk
	bigdw 25 ; Def
	bigdw 19 ; Spd
	bigdw 18 ; SAtk
	bigdw 23 ; SDef
	db "SO-NANSU@@@"

	db KANGASKHAN
	db MIRACLEBERRY
	db REVERSAL, HYPER_BEAM, EARTHQUAKE, ATTRACT
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 30000
	bigdw 40000
	bigdw 30000
	bigdw 30000
	dn 14, 15, 12, 15 ; DVs
	db 15, 5, 10, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 47 ; HP
	bigdw 47 ; Max HP
	bigdw 31 ; Atk
	bigdw 29 ; Def
	bigdw 29 ; Spd
	bigdw 20 ; SAtk
	bigdw 28 ; SDef
	db "GARU-RA@@@@"

	db CORSOLA
	db SCOPE_LENS
	db SURF, PSYCHIC_M, RECOVER, ANCIENTPOWER
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 40000
	bigdw 30000
	bigdw 33300
	bigdw 30000
	bigdw 30000
	dn 15, 14, 15, 13 ; DVs
	db 15, 10, 20, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 38 ; HP
	bigdw 38 ; Max HP
	bigdw 23 ; Atk
	bigdw 29 ; Def
	bigdw 19 ; Spd
	bigdw 24 ; SAtk
	bigdw 28 ; SDef
	db "SANI-GO@@@@"

	db MILTANK
	db GOLD_BERRY
	db BLIZZARD, EARTHQUAKE, HYPER_BEAM, TOXIC
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 35000
	dn 11, 11, 13, 15 ; DVs
	db 5, 10, 5, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 46 ; HP
	bigdw 46 ; Max HP
	bigdw 27 ; Atk
	bigdw 32 ; Def
	bigdw 31 ; Spd
	bigdw 20 ; SAtk
	bigdw 26 ; SDef
	db "MIRUTANKU@@"

	db AERODACTYL
	db LEFTOVERS
	db HYPER_BEAM, SUPERSONIC, EARTHQUAKE, BITE
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 13, 11, 15, 11 ; DVs
	db 5, 20, 10, 25 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 43 ; HP
	bigdw 43 ; Max HP
	bigdw 32 ; Atk
	bigdw 24 ; Def
	bigdw 38 ; Spd
	bigdw 23 ; SAtk
	bigdw 26 ; SDef
	db "PUTERA@@@@@"

	db LAPRAS
	db MIRACLEBERRY
	db BLIZZARD, SURF, THUNDERBOLT, PSYCHIC_M
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 15, 13, 14, 11 ; DVs
	db 5, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 52 ; HP
	bigdw 52 ; Max HP
	bigdw 29 ; Atk
	bigdw 27 ; Def
	bigdw 24 ; Spd
	bigdw 28 ; SAtk
	bigdw 30 ; SDef
	db "RAPURASU@@@"

	db SNEASEL
	db GOLD_BERRY
	db SLASH, FAINT_ATTACK, SURF, BLIZZARD
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 35000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 15, 11, 11, 15 ; DVs
	db 20, 20, 15, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 38 ; HP
	bigdw 38 ; Max HP
	bigdw 31 ; Atk
	bigdw 22 ; Def
	bigdw 34 ; Spd
	bigdw 19 ; SAtk
	bigdw 27 ; SDef
	db "NIyu-RA@@@@"

	db PORYGON2
	db BRIGHTPOWDER
	db PSYCHIC_M, BLIZZARD, HYPER_BEAM, TRI_ATTACK
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 40000
	bigdw 30000
	bigdw 30000
	dn 15, 11, 13, 14 ; DVs
	db 10, 5, 5, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 44 ; HP
	bigdw 44 ; Max HP
	bigdw 28 ; Atk
	bigdw 30 ; Def
	bigdw 23 ; Spd
	bigdw 33 ; SAtk
	bigdw 31 ; SDef
	db "PORIGON2@@@"

	db MISDREAVUS
	db FOCUS_BAND
	db PERISH_SONG, MEAN_LOOK, PAIN_SPLIT, SHADOW_BALL
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 14, 15, 13, 15 ; DVs
	db 5, 5, 20, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 37 ; HP
	bigdw 37 ; Max HP
	bigdw 24 ; Atk
	bigdw 24 ; Def
	bigdw 28 ; Spd
	bigdw 29 ; SAtk
	bigdw 29 ; SDef
	db "MUUMA@@@@@@"

	db HOUNDOUR
	db GOLD_BERRY
	db FAINT_ATTACK, SOLARBEAM, ROAR, SUNNY_DAY
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 33000
	bigdw 30000
	dn 15, 13, 15, 14 ; DVs
	db 20, 10, 20, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 36 ; HP
	bigdw 36 ; Max HP
	bigdw 24 ; Atk
	bigdw 17 ; Def
	bigdw 25 ; Spd
	bigdw 28 ; SAtk
	bigdw 22 ; SDef
	db "DERUBIRU@@@"

	db GIRAFARIG
	db KINGS_ROCK
	db PSYBEAM, MUD_SLAP, SHADOW_BALL, AGILITY
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 14, 13, 15, 13 ; DVs
	db 20, 10, 15, 30 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 39 ; HP
	bigdw 39 ; Max HP
	bigdw 28 ; Atk
	bigdw 24 ; Def
	bigdw 29 ; Spd
	bigdw 29 ; SAtk
	bigdw 24 ; SDef
	db "KIRINRIKI@@"

	db BLISSEY
	db QUICK_CLAW
	db HEADBUTT, SOLARBEAM, ROLLOUT, STRENGTH
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 32000
	bigdw 40000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 13, 15, 12, 14 ; DVs
	db 15, 10, 20, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 77 ; HP
	bigdw 77 ; Max HP
	bigdw 14 ; Atk
	bigdw 14 ; Def
	bigdw 22 ; Spd
	bigdw 27 ; SAtk
	bigdw 39 ; SDef
	db "HAPINASU@@@"

	db SNORLAX
	db MIRACLEBERRY
	db HEADBUTT, PROTECT, SNORE, SURF
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 14, 15, 15, 7 ; DVs
	db 15, 10, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 57 ; HP
	bigdw 57 ; Max HP
	bigdw 34 ; Atk
	bigdw 25 ; Def
	bigdw 18 ; Spd
	bigdw 23 ; SAtk
	bigdw 32 ; SDef
	db "KABIGON@@@@"

	db EXEGGUTOR
	db KINGS_ROCK
	db TOXIC, GIGA_DRAIN, THIEF, CONFUSION
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 15, 14, 15, 14 ; DVs
	db 10, 5, 10, 25 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 45 ; HP
	bigdw 45 ; Max HP
	bigdw 31 ; Atk
	bigdw 29 ; Def
	bigdw 23 ; Spd
	bigdw 37 ; SAtk
	bigdw 25 ; SDef
	db "NAtuSI-@@@@"

	db HERACROSS
	db GOLD_BERRY
	db REVERSAL, ENDURE, COUNTER, ROCK_SMASH
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 15, 7, 15, 7 ; DVs
	db 15, 10, 20, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 43 ; HP
	bigdw 43 ; Max HP
	bigdw 37 ; Atk
	bigdw 25 ; Def
	bigdw 29 ; Spd
	bigdw 18 ; SAtk
	bigdw 29 ; SDef
	db "HERAKUROSU@"

	db UNOWN
	db BERRY
	db HIDDEN_POWER, 0, 0, 0
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 15, 15, 15, 15 ; DVs
	db 15, 0, 0, 0 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 36 ; HP
	bigdw 36 ; Max HP
	bigdw 26 ; Atk
	bigdw 21 ; Def
	bigdw 21 ; Spd
	bigdw 26 ; SAtk
	bigdw 21 ; SDef
	db "ANNO-N@@@@@"

	db TAUROS
	db KINGS_ROCK
	db HEADBUTT, SWAGGER, TAIL_WHIP, ICY_WIND
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 6, 5, 5, 7 ; DVs
	db 15, 15, 30, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 40 ; HP
	bigdw 40 ; Max HP
	bigdw 30 ; Atk
	bigdw 29 ; Def
	bigdw 32 ; Spd
	bigdw 18 ; SAtk
	bigdw 24 ; SDef
	db "KENTAROSU@@"

	db MR__MIME
	db QUICK_CLAW
	db TOXIC, PSYCH_UP, FIRE_PUNCH, HEADBUTT
	dw 0 ; OT ID
	dt 1000 ; Exp
	; Stat exp
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	bigdw 30000
	dn 7, 3, 6, 7 ; DVs
	db 10, 10, 15, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 10 ; Level
	db 0, 0 ; Status
	bigdw 34 ; HP
	bigdw 34 ; Max HP
	bigdw 19 ; Atk
	bigdw 22 ; Def
	bigdw 28 ; Spd
	bigdw 30 ; SAtk
	bigdw 34 ; SDef
	db "BARIYA-DO@@"


; BattleTowerMons group 5

	db KINGDRA
	db MIRACLEBERRY
	db SURF, REST, SLEEP_TALK, DRAGONBREATH
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 15, 10, 10, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 158 ; HP
	bigdw 158 ; Max HP
	bigdw 123 ; Atk
	bigdw 123 ; Def
	bigdw 113 ; Spd
	bigdw 123 ; SAtk
	bigdw 123 ; SDef
	db "KINGUDORA@@"

	db HOUNDOOM
	db BLACKGLASSES
	db SUNNY_DAY, CRUNCH, SOLARBEAM, FLAMETHROWER
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 5, 15, 10, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 158 ; HP
	bigdw 158 ; Max HP
	bigdw 118 ; Atk
	bigdw 78 ; Def
	bigdw 123 ; Spd
	bigdw 138 ; SAtk
	bigdw 108 ; SDef
	db "HERUGA-@@@@"

	db SHUCKLE
	db LEFTOVERS
	db SANDSTORM, REST, TOXIC, WRAP
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 10, 10, 10, 20 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 113 ; HP
	bigdw 113 ; Max HP
	bigdw 38 ; Atk
	bigdw 258 ; Def
	bigdw 33 ; Spd
	bigdw 38 ; SAtk
	bigdw 258 ; SDef
	db "TUBOTUBO@@@"
	
	db TAUROS
	db KINGS_ROCK
	db MEGAHORN, EARTHQUAKE, BODY_SLAM, THRASH
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 5, 10, 15, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 158 ; HP
	bigdw 158 ; Max HP
	bigdw 128 ; Atk
	bigdw 123 ; Def
	bigdw 138 ; Spd
	bigdw 68  ; SAtk
	bigdw 98  ; SDef
	db "KENTAROSU@@"

	db LAPRAS
	db LEFTOVERS
	db THUNDERBOLT, SURF, CONFUSE_RAY, ICE_BEAM
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 15, 15, 10, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 213 ; HP
	bigdw 213 ; Max HP
	bigdw 113 ; Atk
	bigdw 108 ; Def
	bigdw 88 ; Spd
	bigdw 113 ; SAtk
	bigdw 123 ; SDef
	db "RAPURASU@@@"

	db JOLTEON
	db MAGNET
	db THUNDERBOLT, THUNDER_WAVE, SHADOW_BALL, HIDDEN_POWER
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 15, 13, 11, 11 ; DVs
	db 15, 20, 15, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 148 ; HP
	bigdw 148 ; Max HP
	bigdw 93 ; Atk
	bigdw 88 ; Def
	bigdw 158 ; Spd
	bigdw 138 ; SAtk
	bigdw 123 ; SDef
	db "SANDA-SU@@@"

	db SCIZOR
	db BERRY_JUICE
	db HYPER_BEAM, CUT, AGILITY, STEEL_WING
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 5, 10, 30, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 153 ; HP
	bigdw 153 ; Max HP
	bigdw 158 ; Atk
	bigdw 128 ; Def
	bigdw 93 ; Spd
	bigdw 83 ; SAtk
	bigdw 108 ; SDef
	db "HAtuSAMU@@@"

	db SLOWKING
	db MINT_BERRY
	db REST, SURF, PSYCHIC_M, AMNESIA
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 10, 15, 10, 20 ; PP
	db 15 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 178 ; HP
	bigdw 178 ; Max HP
	bigdw 103 ; Atk
	bigdw 108 ; Def
	bigdw 58 ; Spd
	bigdw 128 ; SAtk
	bigdw 108 ; SDef
	db "YADOKINGU@@"

	db MACHAMP
	db BLACKBELT_I
	db STRENGTH, EARTHQUAKE, FIRE_BLAST, ROCK_SLIDE
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 15, 10, 5, 15 ; PP
	db 13 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 173 ; HP
	bigdw 173 ; Max HP
	bigdw 158 ; Atk
	bigdw 108 ; Def
	bigdw 83 ; Spd
	bigdw 93 ; SAtk
	bigdw 113 ; SDef
	db "KAIRIKI-@@@"

	db STARMIE
	db SCOPE_LENS
	db PSYCHIC_M, RECOVER, THUNDERBOLT, SURF
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 10, 20, 15, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 143 ; HP
	bigdw 143 ; Max HP
	bigdw 103 ; Atk
	bigdw 113 ; Def
	bigdw 143 ; Spd
	bigdw 128 ; SAtk
	bigdw 113 ; SDef
	db "SUTA-MI-@@@"

	db DUGTRIO
	db SOFT_SAND
	db EARTHQUAKE, SUBSTITUTE, ROCK_SLIDE, SLUDGE_BOMB
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 10, 10, 15, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 138 ; HP
	bigdw 138 ; Max HP
	bigdw 128 ; Atk
	bigdw 98 ; Def
	bigdw 148 ; Spd
	bigdw 98 ; SAtk
	bigdw 118 ; SDef
	db "DAGUTORIO@@"

	db ELECTRODE
	db MAGNET
	db THUNDERBOLT, EXPLOSION, GIGA_DRAIN, MIRROR_COAT
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 15, 1, 10, 20 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 143 ; HP
	bigdw 143 ; Max HP
	bigdw 78 ; Atk
	bigdw 98 ; Def
	bigdw 168 ; Spd
	bigdw 118 ; SAtk
	bigdw 118 ; SDef
	db "MARUMAIN@@@"

	db AERODACTYL
	db KINGS_ROCK
	db HYPER_BEAM, SANDSTORM, ROCK_SLIDE, RAZOR_WIND
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 5, 10, 15, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 163 ; HP
	bigdw 163 ; Max HP
	bigdw 133 ; Atk
	bigdw 93 ; Def
	bigdw 158 ; Spd
	bigdw 88 ; SAtk
	bigdw 103 ; SDef
	db "PUTERA@@@@@"

	db CROBAT
	db LEFTOVERS
	db CONFUSE_RAY, ATTRACT, FLY, SLUDGE_BOMB
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 10, 15, 15, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 168 ; HP
	bigdw 168 ; Max HP
	bigdw 118 ; Atk
	bigdw 108 ; Def
	bigdw 158 ; Spd
	bigdw 98 ; SAtk
	bigdw 108 ; SDef
	db "KUROBAtuTO@"

	db GOLEM
	db FOCUS_BAND
	db EXPLOSION, EARTHQUAKE, ROCK_SLIDE, CURSE
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 1, 10, 15, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 163 ; HP
	bigdw 163 ; Max HP
	bigdw 138 ; Atk
	bigdw 158 ; Def
	bigdw 73 ; Spd
	bigdw 83 ; SAtk
	bigdw 93 ; SDef
	db "GORO-NIya@@"

	db SKARMORY
	db METAL_COAT
	db SANDSTORM, FLY, STEEL_WING, TOXIC
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 10, 15, 15, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 148 ; HP
	bigdw 148 ; Max HP
	bigdw 108 ; Atk
	bigdw 168 ; Def
	bigdw 98 ; Spd
	bigdw 68 ; SAtk
	bigdw 98 ; SDef
	db "EA-MUDO@@@@"

	db BELLOSSOM
	db LEFTOVERS
	db LEECH_SEED, RAZOR_LEAF, FIRE_SPIN, MORNING_SUN
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 10, 25, 15, 5 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 158 ; HP
	bigdw 158 ; Max HP
	bigdw 108 ; Atk
	bigdw 113 ; Def
	bigdw 78 ; Spd
	bigdw 118 ; SAtk
	bigdw 128 ; SDef
	db "BEROSAMU@@@"

	db STEELIX
	db QUICK_CLAW
	db SANDSTORM, IRON_TAIL, ROCK_SLIDE, EARTHQUAKE
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 10, 10, 15, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 158 ; HP
	bigdw 158 ; Max HP
	bigdw 113 ; Atk
	bigdw 228 ; Def
	bigdw 58 ; Spd
	bigdw 83 ; SAtk
	bigdw 93 ; SDef
	db "HAGANE-RU@@"

	db GIRAFARIG
	db TWISTEDSPOON
	db DREAM_EATER, PURSUIT, HYPNOSIS, PSYCHIC_M
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 15, 20, 20, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 163 ; HP
	bigdw 163 ; Max HP
	bigdw 108 ; Atk
	bigdw 108 ; Def
	bigdw 113 ; Spd
	bigdw 118 ; SAtk
	bigdw 108 ; SDef
	db "KIRINRIKI@@"

	db GYARADOS
	db DRAGON_FANG
	db HYPER_BEAM, DRAGON_RAGE, SURF, ZAP_CANNON
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 5, 10, 15, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 178 ; HP
	bigdw 178 ; Max HP
	bigdw 153 ; Atk
	bigdw 107 ; Def
	bigdw 109 ; Spd
	bigdw 128 ; SAtk
	bigdw 128 ; SDef
	db "GIyaRADOSU@"

	db ARIADOS
	db SILVERPOWDER
	db LEECH_LIFE, SLUDGE_BOMB, CONSTRICT, SPIDER_WEB
	dw 0 ; OT ID
	dt 125000 ; Exp
	; Stat exp
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	bigdw 10700
	dn 11, 11, 11, 11 ; DVs
	db 10, 10, 15, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 50 ; Level
	db 0, 0 ; Status
	bigdw 153 ; HP
	bigdw 153 ; Max HP
	bigdw 118 ; Atk
	bigdw 98 ; Def
	bigdw 148 ; Spd
	bigdw 88 ; SAtk
	bigdw 88 ; SDef
	db "ARIADOSU@@@"


; BattleTowerMons group 10

	db SUICUNE
	db LEFTOVERS
	db SURF, ICE_BEAM, SLEEP_TALK, REST
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 15, 15, 15, 15 ; DVs
	db 15, 10, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 248 ; Atk
	bigdw 328 ; Def
	bigdw 288 ; Spd
	bigdw 298 ; SAtk
	bigdw 328 ; SDef
	db "SUICUNE@@@@"

	db MACHAMP
	db SCOPE_LENS
	db CROSS_CHOP, CURSE, HIDDEN_POWER, ROCK_SLIDE
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 13, 14, 11, 11 ; DVs
	db 5, 10, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 375 ; HP
	bigdw 375 ; Max HP
	bigdw 350 ; Atk
	bigdw 250 ; Def
	bigdw 200 ; Spd
	bigdw 220 ; SAtk
	bigdw 260 ; SDef
	db "KAIRIKI-@@@"

	db UMBREON
	db LEFTOVERS
	db MOONLIGHT, TOXIC, CONFUSE_RAY, MEAN_LOOK
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 5, 10, 10, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 385 ; HP
	bigdw 385 ; Max HP
	bigdw 220 ; Atk
	bigdw 310 ; Def
	bigdw 220 ; Spd
	bigdw 210 ; SAtk
	bigdw 350 ; SDef
	db "BLACKY@@@@@"

	db ZAPDOS
	db MAGNET
	db THUNDER, WHIRLWIND, HIDDEN_POWER, DRILL_PECK
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 15, 13, 15, 15 ; DVs
	db 10, 20, 15, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 383 ; HP
	bigdw 383 ; Max HP
	bigdw 278 ; Atk
	bigdw 268 ; Def
	bigdw 398 ; Spd
	bigdw 348 ; SAtk
	bigdw 278 ; SDef
	db "THUNDER@@@@"

	db SNORLAX
	db POLKADOT_BOW
	db MEGA_KICK, SLEEP_TALK, REST, EARTHQUAKE
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 15, 15, 15, 15 ; DVs
	db 1, 10, 10, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 523 ; HP
	bigdw 523 ; Max HP
	bigdw 318 ; Atk
	bigdw 228 ; Def
	bigdw 158 ; Spd
	bigdw 228 ; SAtk
	bigdw 228 ; SDef
	db "KABIGON@@@@"

	db TYRANITAR
	db HARD_STONE
	db ROCK_SLIDE, PURSUIT, EARTHQUAKE, CRUNCH
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 15, 20, 10, 15 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 395 ; HP
	bigdw 395 ; Max HP
	bigdw 358 ; Atk
	bigdw 310 ; Def
	bigdw 212 ; Spd
	bigdw 280 ; SAtk
	bigdw 290 ; SDef
	db "BANGIRAS@@@"

	db HO_OH
	db LEFTOVERS
	db SHADOW_BALL, RECOVER, CURSE, DRILL_PECK
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 15, 15, 15, 15 ; DVs
	db 15, 10, 10, 20 ; PP
	db 255 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 415 ; HP
	bigdw 415 ; Max HP
	bigdw 358 ; Atk
	bigdw 278 ; Def
	bigdw 278 ; Spd
	bigdw 318 ; SAtk
	bigdw 406 ; SDef
	db "HOUOU@@@@@@"

	db TENTACRUEL
	db MYSTIC_WATER
	db SLUDGE_BOMB, HYDRO_PUMP, SUBSTITUTE, SWORDS_DANCE
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 10, 5, 20, 30 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 355 ; HP
	bigdw 355 ; Max HP
	bigdw 230 ; Atk
	bigdw 220 ; Def
	bigdw 290 ; Spd
	bigdw 250 ; SAtk
	bigdw 330 ; SDef
	db "DOKUKURAGE@"

	db RHYDON
	db FOCUS_BAND
	db EARTHQUAKE, ROCK_SLIDE, MEGAHORN, ZAP_CANNON
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 10, 15, 5, 5 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 405 ; HP
	bigdw 405 ; Max HP
	bigdw 350 ; Atk
	bigdw 330 ; Def
	bigdw 170 ; Spd
	bigdw 180 ; SAtk
	bigdw 180 ; SDef
	db "SAIDON@@@@@"

	db FORRETRESS
	db FOCUS_BAND
	db GIGA_DRAIN, PIN_MISSILE, SPIKES, EXPLOSION
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 10, 15, 20, 1 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 345 ; HP
	bigdw 345 ; Max HP
	bigdw 270 ; Atk
	bigdw 370 ; Def
	bigdw 170 ; Spd
	bigdw 210 ; SAtk
	bigdw 210 ; SDef
	db "FORETOS@@@@"

	db DRAGONITE
	db DRAGON_FANG
	db RAZOR_WIND, OUTRAGE, DOUBLE_EDGE, THUNDER
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 20, 25, 5, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 377 ; HP
	bigdw 377 ; Max HP
	bigdw 358 ; Atk
	bigdw 280 ; Def
	bigdw 250 ; Spd
	bigdw 290 ; SAtk
	bigdw 290 ; SDef
	db "KAIRYU@@@@@"

	db GENGAR
	db SPELL_TAG
	db PERISH_SONG, MEAN_LOOK, PAIN_SPLIT, NIGHT_SHADE
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 5, 5, 20, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 315 ; HP
	bigdw 315 ; Max HP
	bigdw 220 ; Atk
	bigdw 210 ; Def
	bigdw 310 ; Spd
	bigdw 350 ; SAtk
	bigdw 240 ; SDef
	db "GANGAR@@@@@"

	db SNEASEL
	db BLACKGLASSES
	db MOONLIGHT, ICE_BEAM, PURSUIT, BEAT_UP
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 5, 10, 20, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 315 ; HP
	bigdw 315 ; Max HP
	bigdw 160 ; Atk
	bigdw 200 ; Def
	bigdw 320 ; Spd
	bigdw 310 ; SAtk
	bigdw 240 ; SDef
	db "NIyu-RA@@@@"

	db TANGELA
	db LEFTOVERS
	db LEECH_SEED, GIGA_DRAIN, SLEEP_POWDER, REFLECT
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 10, 10, 15, 20 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 325 ; HP
	bigdw 325 ; Max HP
	bigdw 200 ; Atk
	bigdw 320 ; Def
	bigdw 210 ; Spd
	bigdw 290 ; SAtk
	bigdw 290 ; SDef
	db "MONJARA@@@@"

	db BLISSEY
	db LEFTOVERS
	db THUNDER_WAVE, EGG_BOMB, COUNTER, SOFTBOILED
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 20, 10, 20, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 705 ; HP
	bigdw 705 ; Max HP
	bigdw 110 ; Atk
	bigdw 110 ; Def
	bigdw 200 ; Spd
	bigdw 240 ; SAtk
	bigdw 360 ; SDef
	db "HAPINASU@@@"

	db MAROWAK
	db THICK_CLUB
	db SWORDS_DANCE, ROCK_SLIDE, BONE_RUSH, BONEMERANG
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 30, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 315 ; HP
	bigdw 315 ; Max HP
	bigdw 250 ; Atk
	bigdw 310 ; Def
	bigdw 180 ; Spd
	bigdw 190 ; SAtk
	bigdw 250 ; SDef
	db "GARAGARA@@@"

	db EXEGGUTOR
	db LEFTOVERS
	db PSYCHIC_M, BARRAGE, STUN_SPORE, LEECH_SEED
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 10, 5, 30, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 385 ; HP
	bigdw 385 ; Max HP
	bigdw 280 ; Atk
	bigdw 260 ; Def
	bigdw 200 ; Spd
	bigdw 340 ; SAtk
	bigdw 220 ; SDef
	db "NAtuSI-@@@@"

	db MEW
	db GOLD_B_JUICE
	db SWORDS_DANCE, SUBMISSION, SHADOW_BALL, SOFTBOILED
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 15, 15, 15, 15 ; DVs
	db 30, 15, 15, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 403 ; HP
	bigdw 403 ; Max HP
	bigdw 298 ; Atk
	bigdw 298 ; Def
	bigdw 298 ; Spd
	bigdw 298 ; SAtk
	bigdw 298 ; SDef
	db "MYU@@@@@@@@"

	db HERACROSS
	db BLACKBELT_I
	db MEGAHORN, REST, SLEEP_TALK, STRENGTH
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 5, 10, 10, 15 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 355 ; HP
	bigdw 355 ; Max HP
	bigdw 340 ; Atk
	bigdw 240 ; Def
	bigdw 260 ; Spd
	bigdw 170 ; SAtk
	bigdw 280 ; SDef
	db "HERAKUROSU@"

	db PORYGON2
	db BRIGHTPOWDER
	db ICE_BEAM, RECOVER, MEGA_KICK, TRI_ATTACK
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 10, 10, 1, 10 ; PP
	db 100 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 365 ; HP
	bigdw 365 ; Max HP
	bigdw 270 ; Atk
	bigdw 270 ; Def
	bigdw 210 ; Spd
	bigdw 300 ; SAtk
	bigdw 280 ; SDef
	db "PORIGON2@@@"

	db LANTURN
	db LEFTOVERS
	db SURF, REST, ZAP_CANNON, CONFUSE_RAY
	dw 0 ; OT ID
	dt 1000000 ; Exp
	; Stat exp
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	bigdw 65535
	dn 11, 11, 11, 11 ; DVs
	db 15, 10, 5, 10 ; PP
	db 0 ; Happiness
	db 0, 0, 0 ; Pokerus, Caught data
	db 100 ; Level
	db 0, 0 ; Status
	bigdw 445 ; HP
	bigdw 445 ; Max HP
	bigdw 206 ; Atk
	bigdw 206 ; Def
	bigdw 224 ; Spd
	bigdw 270 ; SAtk
	bigdw 242 ; SDef
	db "RANTA-N@@@@"
