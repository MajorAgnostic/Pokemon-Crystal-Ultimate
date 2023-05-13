; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constants |ed together
; - 1 to 6 Pokémon:
;    * in all cases:              db level, species
;    * with TRAINERTYPE_DVS:      db atk|def dv, spd|spc dv
;    * with TRAINERTYPE_STAT_EXP: dw hp, atk, def, spd, spc
;    * with TRAINERTYPE_ITEM:     db item
;    * with TRAINERTYPE_MOVES:    db move 1, move 2, move 3, move 4
;    (TRAINERTYPE_ITEM_MOVES is just TRAINERTYPE_ITEM | TRAINERTYPE_MOVES)
; - db -1 ; end

SECTION "Enemy Trainer Parties 1", ROMX

FalknerGroup:
	; FALKNER (1)
	db "FALKNER@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 13, PIDGEY
			db $bb, $bb ; atk|def, spd|spc
			dw $0002, $0002, $0002, $0002, $0002 ; hp, atk, def, spd, spc
			db NO_ITEM
			db MUD_SLAP, QUICK_ATTACK, GUST, SAND_ATTACK
	db 14, PIDGEOTTO
			db $bb, $bb ; atk|def, spd|spc
			dw $0002, $0002, $0002, $0002, $0002 ; hp, atk, def, spd, spc
			db NO_ITEM
			db MUD_SLAP, QUICK_ATTACK, GUST, WHIRLWIND
	db 14, BUTTERFREE
			db $bb, $bb ; atk|def, spd|spc
			dw $0002, $0002, $0002, $0002, $0002 ; hp, atk, def, spd, spc
			db FOCUS_BAND
			db CONFUSION, WHIRLWIND, GUST, STUN_SPORE
	db 15, FARFETCH_D 
			db $cc, $cc ; atk|def, spd|spc
			dw $0002, $0002, $0002, $0002, $0002 ; hp, atk, def, spd, spc
			db GOLD_BERRY
			db MUD_SLAP, PECK, FURY_ATTACK, VINE_WHIP
	db -1 ; end

WhitneyGroup:
	; WHITNEY (1)
	db "WHITNEY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 29, CLEFABLE
			db $bb, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db PINK_BOW
			db DOUBLESLAP, MINIMIZE, ATTRACT, METRONOME
	db 30, NOCTOWL
			db $bb, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db MINT_BERRY
			db WING_ATTACK, HYPNOSIS, TAKE_DOWN, REST
	db 31, MILTANK
			db $bb, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db GOLD_BERRY
			db ROLLOUT, DEFENSE_CURL, STOMP, MILK_DRINK
	db 31, GIRAFARIG
			db $bb, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db TWISTEDSPOON
			db PSYBEAM, STOMP, ATTRACT, FAINT_ATTACK
	db 32, TAUROS
			db $cc, $cc ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db BERSERK_GENE
			db ICY_WIND, STOMP, HORN_DRILL, PURSUIT
	db -1 ; end

BugsyGroup:
	; BUGSY (1)
	db "BUGSY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 21, PINECO  
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db QUICK_CLAW
			db SPIKES, SELFDESTRUCT, PIN_MISSILE, TAKE_DOWN
	db 23, SHUCKLE
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db BERRY_JUICE
			db DEFENSE_CURL, ROLLOUT, SWEET_SCENT, SAFEGUARD
	db 22, ARIADOS
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db NO_ITEM
			db PIN_MISSILE, ACID, CONSTRICT, SCARY_FACE
	db 22, PINSIR
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db NO_ITEM
			db HARDEN, VICEGRIP, SEISMIC_TOSS, FURY_CUTTER
	db 24, SCIZOR
			db $cc, $cc ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db FOCUS_BAND
			db METAL_CLAW, COMET_PUNCH, FOCUS_ENERGY, PURSUIT
	db -1 ; end
	
	; BUGSY (2)
	db "BUGSY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 21, PINECO  
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db QUICK_CLAW
			db SPIKES, SELFDESTRUCT, PIN_MISSILE, TAKE_DOWN
	db 23, SHUCKLE
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db BERRY_JUICE
			db DEFENSE_CURL, ROLLOUT, SWEET_SCENT, SAFEGUARD
	db 22, ARIADOS
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db NO_ITEM
			db PIN_MISSILE, ACID, CONSTRICT, SCARY_FACE
	db 22, PINSIR
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db NO_ITEM
			db HARDEN, VICEGRIP, SEISMIC_TOSS, FURY_CUTTER
	db 24, SCYTHER
			db $cc, $cc ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db FOCUS_BAND
			db FURY_CUTTER, FOCUS_ENERGY, WING_ATTACK, PURSUIT
	db -1 ; end

MortyGroup:
	; MORTY (1)
	db "MORTY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 35, CLOYSTER
			db $bb, $bb ; atk|def, spd|spc
			dw $0020, $0020, $0020, $0020, $0020
			db FOCUS_BAND
			db SURF, SHADOW_BALL, SPIKES, ICY_WIND
	db 34, SMEARGLE
			db $bb, $bb ; atk|def, spd|spc
			dw $0020, $0020, $0020, $0020, $0020
			db QUICK_CLAW
			db SPORE, BATON_PASS, SWORDS_DANCE, RECOVER
	db 36, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $0020, $0020, $0020, $0020, $0020
			db BRIGHTPOWDER
			db HYPNOSIS, DREAM_EATER, DYNAMICPUNCH, SHADOW_BALL
	db 36, MISDREAVUS
			db $bb, $bb ; atk|def, spd|spc
			dw $0020, $0020, $0020, $0020, $0020
			db LEFTOVERS
			db SHADOW_BALL, PAIN_SPLIT, TOXIC, THUNDERBOLT
	db 37, GENGAR
			db $cc, $cc ; atk|def, spd|spc
			dw $0020, $0020, $0020, $0020, $0020
			db SPELL_TAG
			db ICE_PUNCH, SHADOW_BALL, SLUDGE_BOMB, DESTINY_BOND
	db -1 ; end

PryceGroup:
	; PRYCE (1)
	db "PRYCE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 51, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db FOCUS_BAND
			db SURF, BEAT_UP, ICE_BEAM, PURSUIT
	db 51, DELIBIRD
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db NO_ITEM
			db ICY_WIND, DRILL_PECK, SPIKES, THIEF
	db 52, CORSOLA
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db MYSTIC_WATER
			db SURF, ICY_WIND, TOXIC, RECOVER
	db 52, JYNX
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db BERRY_JUICE
			db PSYCHIC_M, ICE_BEAM, SUBSTITUTE, SING
	db 52, STANTLER
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db LEFTOVERS
			db BLIZZARD, HYPNOSIS, EARTHQUAKE, STRENGTH
	db 53, PILOSWINE
			db $cc, $cc ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db NEVERMELTICE
			db ICY_WIND, BLIZZARD, EARTHQUAKE, ROCK_SLIDE
	db -1 ; end

JasmineGroup:
	; JASMINE (1)
	db "JASMINE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 44, AMPHAROS
			db $fd, $cc ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db QUICK_CLAW
			db COTTON_SPORE, THUNDERPUNCH, LIGHT_SCREEN, IRON_TAIL
	db 45, FORRETRESS
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db FOCUS_BAND
			db SPIKE_CANNON, PIN_MISSILE, CURSE, SPIKES
	db 45, BLASTOISE
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db LEFTOVERS
			db SURF, IRON_TAIL, SANDSTORM, RAPID_SPIN
	db 45, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db MAGNET
			db SPARK, THUNDER_WAVE, SUBSTITUTE, CONFUSE_RAY
	db 46, SKARMORY
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db MINT_BERRY
			db WHIRLWIND, DRILL_PECK, TOXIC, REST
	db 47, STEELIX
			db $cc, $cc ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db BERRY_JUICE
			db BIND, FISSURE, EARTHQUAKE, IRON_TAIL
	db -1 ; end

ChuckGroup:
	; CHUCK (1)
	db "CHUCK@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 43, HITMONTOP
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db QUICK_CLAW
			db COMET_PUNCH, TRIPLE_KICK, SUBSTITUTE, HIDDEN_POWER
	db 42, DODRIO
			db $bb, $fb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db POLKADOT_BOW
			db HI_JUMP_KICK, DRILL_PECK, PURSUIT, TRI_ATTACK
	db 43, MACHAMP
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db BLACKBELT_I
			db SUBMISSION, ROCK_SLIDE, FIRE_BLAST, CURSE
	db 44, HERACROSS
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db FOCUS_BAND
			db MEGAHORN, STRENGTH, EARTHQUAKE, REVERSAL
	db 43, KANGASKHAN
			db $bf, $bf ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db SPELL_TAG
			db SHADOW_BALL, MEGA_PUNCH, STRENGTH, NO_MOVE
	db 45, POLIWRATH
			db $ee, $ee ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db LEFTOVERS
			db LOVELY_KISS, DYNAMICPUNCH, HYDRO_PUMP, ROCK_SLIDE
	db -1 ; end

ClairGroup:
	; CLAIR (1)
	db "CLAIR@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 57, DRAGONAIR
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db FOCUS_BAND
			db DRAGON_RAGE, THUNDER_WAVE, REFLECT, THUNDER
	db 58, MAGMAR
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db SCOPE_LENS
			db FIRE_BLAST, CROSS_CHOP, DRAGONBREATH, SUNNY_DAY
	db 59, GYARADOS
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db DRAGON_FANG
			db DRAGONBREATH, EARTHQUAKE, FIRE_BLAST, TOXIC
	db 59, DRAGONITE
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db GOLD_BERRY
			db DRAGONBREATH, HYPER_BEAM, FLY, ICE_BEAM
	db 58, CHARIZARD
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db CHARCOAL
			db FLAMETHROWER, DRAGON_RAGE, SUNNY_DAY, ROCK_SLIDE
	db 60, KINGDRA
			db $dd, $ee ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db LEFTOVERS
			db SURF, OUTRAGE, REST, SLEEP_TALK
	db -1 ; end

Rival0Group:
	; RIVAL1 (1)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM
	db  7, CHIKORITA
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0002, $0002, $0002, $0002, $0002 ; hp, atk, def, spd, spc
			db BERRY
	db -1 ; end

	; RIVAL1 (2)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM
	db  7, CYNDAQUIL
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0002, $0002, $0002, $0002, $0002 ; hp, atk, def, spd, spc
			db BERRY
	db -1 ; end

	; RIVAL1 (3)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM
	db  7, TOTODILE
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0002, $0002, $0002, $0002, $0002 ; hp, atk, def, spd, spc
			db BERRY
	db -1 ; end

	; RIVAL1 (4)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 20, GASTLY
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db FOCUS_BAND
			db CURSE, HYPNOSIS, LICK, MEAN_LOOK
	db 22, GOLBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db NO_ITEM
			db BITE, LEECH_LIFE, CONFUSE_RAY, SWIFT
	db 21, MAGNEMITE
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db NO_ITEM
			db THUNDERSHOCK, THUNDER_WAVE, SONICBOOM, SUPERSONIC
	db 23, BAYLEEF
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db MIRACLE_SEED
			db RAZOR_LEAF, SYNTHESIS, POISONPOWDER, LEECH_SEED
	db -1 ; end

	; RIVAL1 (5)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 20, GASTLY
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db FOCUS_BAND
			db CURSE, HYPNOSIS, LICK, MEAN_LOOK
	db 22, GOLBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db NO_ITEM
			db BITE, LEECH_LIFE, CONFUSE_RAY, SWIFT
	db 21, MAGNEMITE
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db NO_ITEM
			db THUNDERSHOCK, THUNDER_WAVE, SONICBOOM, SUPERSONIC
	db 23, QUILAVA
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db CHARCOAL
			db FLAME_WHEEL, REVERSAL, SMOKESCREEN, FURY_SWIPES
	db -1 ; end

	; RIVAL1 (6)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 20, GASTLY
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db FOCUS_BAND
			db CURSE, HYPNOSIS, LICK, MEAN_LOOK
	db 22, GOLBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db NO_ITEM
			db BITE, LEECH_LIFE, CONFUSE_RAY, SWIFT
	db 21, MAGNEMITE
			db $bb, $bb ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db NO_ITEM
			db THUNDERSHOCK, THUNDER_WAVE, SONICBOOM, SUPERSONIC
	db 23, CROCONAW
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0008, $0008, $0008, $0008, $0008
			db MYSTIC_WATER
			db WATER_GUN, BITE, SCARY_FACE, RAZOR_WIND
	db -1 ; end

Rival1Group:
	; RIVAL1 (7)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 31, HAUNTER
			db $bb, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db FOCUS_BAND
			db DREAM_EATER, HYPNOSIS, DESTINY_BOND, CONFUSE_RAY
	db 32, GOLBAT
			db $ce, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db NO_ITEM
			db HIDDEN_POWER, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	db 33, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db MAGNET
			db SPARK, THUNDER_WAVE, SONICBOOM, HIDDEN_POWER
	db 32, KADABRA
			db $bb, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db NO_ITEM
			db PSYBEAM, FIRE_PUNCH, KINESIS, RECOVER
	db 34, BAYLEEF
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db MIRACLE_SEED
			db RAZOR_LEAF, LIGHT_SCREEN, SYNTHESIS, LEECH_SEED
	db -1 ; end

	; RIVAL1 (8)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 31, HAUNTER
			db $bb, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db FOCUS_BAND
			db DREAM_EATER, HYPNOSIS, DESTINY_BOND, CONFUSE_RAY
	db 32, GOLBAT
			db $ce, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db NO_ITEM
			db HIDDEN_POWER, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	db 33, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db MAGNET
			db SPARK, THUNDER_WAVE, SONICBOOM, HIDDEN_POWER
	db 32, KADABRA
			db $bb, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db NO_ITEM
			db PSYBEAM, FIRE_PUNCH, KINESIS, RECOVER
	db 34, TYPHLOSION
			db $ee, PERFECT_DV ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db CHARCOAL
			db FLAME_WHEEL, SUBMISSION, SUNNY_DAY, HIDDEN_POWER
	db -1 ; end

	; RIVAL1 (9)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 31, HAUNTER
			db $bb, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db FOCUS_BAND
			db DREAM_EATER, HYPNOSIS, DESTINY_BOND, CONFUSE_RAY
	db 32, GOLBAT
			db $ce, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db NO_ITEM
			db HIDDEN_POWER, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	db 33, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db MAGNET
			db SPARK, THUNDER_WAVE, SONICBOOM, HIDDEN_POWER
	db 32, KADABRA
			db $bb, $bb ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db NO_ITEM
			db PSYBEAM, FIRE_PUNCH, KINESIS, RECOVER
	db 34, FERALIGATR
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $000C, $000C, $000C, $000C, $000C
			db MYSTIC_WATER
			db SURF, BITE, ICY_WIND, MUD_SLAP
	db -1 ; end

	; RIVAL1 (10)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 52, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db TWISTEDSPOON
			db PSYBEAM, FIRE_PUNCH, REFLECT, RECOVER
	db 53, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db FOCUS_BAND
			db THUNDERPUNCH, ICE_PUNCH, DYNAMICPUNCH, EXPLOSION
	db 51, GOLBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db SILVERPOWDER
			db SLUDGE_BOMB, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	db 53, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 54, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db NO_ITEM
			db THIEF, ICE_BEAM, PURSUIT, REFLECT
	db 55, MEGANIUM
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db MIRACLE_SEED
			db SOLARBEAM, SUNNY_DAY, LEECH_SEED, SYNTHESIS
	db -1 ; end

	; RIVAL1 (11)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 52, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db TWISTEDSPOON
			db PSYBEAM, FIRE_PUNCH, REFLECT, RECOVER
	db 53, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db FOCUS_BAND
			db THUNDERPUNCH, ICE_PUNCH, DYNAMICPUNCH, EXPLOSION
	db 51, GOLBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db SILVERPOWDER
			db SLUDGE_BOMB, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	db 53, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 54, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db NO_ITEM
			db THIEF, ICE_BEAM, PURSUIT, REFLECT
	db 55, TYPHLOSION
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db CHARCOAL
			db FIRE_BLAST, THUNDERPUNCH, DYNAMICPUNCH, SUNNY_DAY
	db -1 ; end

	; RIVAL1 (12)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 52, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db TWISTEDSPOON
			db PSYBEAM, FIRE_PUNCH, REFLECT, RECOVER
	db 53, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db FOCUS_BAND
			db THUNDERPUNCH, ICE_PUNCH, DYNAMICPUNCH, EXPLOSION
	db 51, GOLBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db SILVERPOWDER
			db SLUDGE_BOMB, LEECH_LIFE, CONFUSE_RAY, WING_ATTACK
	db 53, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 54, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db NO_ITEM
			db THIEF, ICE_BEAM, PURSUIT, REFLECT
	db 55, FERALIGATR
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db MYSTIC_WATER
			db HYDRO_PUMP, CRUNCH, WATERFALL, EARTHQUAKE
	db -1 ; end

PokemonProfGroup:

WillGroup:
	; WILL (1)
	db "WILL@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 64, JYNX
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db BERRY_JUICE
			db PSYCHIC_M, BLIZZARD, SUBSTITUTE, PERISH_SONG
	db 65, WOBBUFFET
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db LEFTOVERS
			db SAFEGUARD, COUNTER, MIRROR_COAT, DESTINY_BOND
	db 65, EXEGGUTOR
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db CHARCOAL
			db PSYCHIC_M, SUNNY_DAY, SOLARBEAM, EGG_BOMB
	db 64, SLOWBRO
			db $ed, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db LEFTOVERS
			db PSYCHIC_M, THUNDER_WAVE, SURF, AMNESIA
	db 65, ESPEON
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db TWISTEDSPOON
			db PSYCHIC_M, SOLARBEAM, SUNNY_DAY, MORNING_SUN
	db 66, XATU
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db MIRACLEBERRY
			db DRILL_PECK, PSYCHIC_M, REST, SLEEP_TALK
	db -1 ; end
	
	; WILL (2)
	db "WILL@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 90, LUGIA
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db AEROBLAST, RECOVER, FUTURE_SIGHT, EARTHQUAKE
	db 89, SLOWBRO
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db KINGS_ROCK
			db PSYCHIC_M, THUNDER_WAVE, WATERFALL, AMNESIA
	db 90, JYNX
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db NEVERMELTICE
			db PSYCHIC_M, BLIZZARD, PSYCH_UP, LOVELY_KISS
	db 89, ESPEON
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db TWISTEDSPOON
			db PSYCHIC_M, SOLARBEAM, SUNNY_DAY, MORNING_SUN
	db 90, HYPNO
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db TWISTEDSPOON
			db PSYCHIC_M, REST, POISON_GAS, SLEEP_TALK
	db 91, XATU
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db MIRACLEBERRY
			db DRILL_PECK, PSYCHIC_M, REST, SLEEP_TALK
	db -1 ; end

PKMNTrainerGroup:
	; CAL (3)
	db "GOLD@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 84, TOGETIC
			db $bb, $bb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db NO_ITEM
			db FLAMETHROWER, NO_MOVE, NO_MOVE, NO_MOVE
	db 85, AIPOM
			db $bb, $bb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db PINK_BOW
			db STRENGTH, MEGA_KICK, AGILITY, BATON_PASS
	db 83, SUDOWOODO
			db $bb, $bb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db LEFTOVERS
			db ROCK_SLIDE, CURSE, LEECH_SEED, EARTHQUAKE
	db 81, SUNFLORA
			db $bb, $bb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db QUICK_CLAW
			db SUNNY_DAY, SOLARBEAM, FLAMETHROWER, SYNTHESIS
	db 86, TYPHLOSION
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db CHARCOAL
			db SUNNY_DAY, FIRE_BLAST, DYNAMICPUNCH, THUNDERPUNCH
	db 83, POLITOED
			db $bb, $bb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db BRIGHTPOWDER
			db SURF, BELLY_DRUM, LOVELY_KISS, BODY_SLAM
			db -1 ; end

BrunoGroup:
	; BRUNO (1)
	db "BRUNO@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 67, STEELIX
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db HARD_STONE
			db BIND, EARTHQUAKE, IRON_TAIL, FISSURE
	db 66, PRIMEAPE
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db KINGS_ROCK
			db MEGA_PUNCH, CROSS_CHOP, FORESIGHT, ROCK_SLIDE
	db 66, DODRIO
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db POLKADOT_BOW
			db HI_JUMP_KICK, DRILL_PECK, PURSUIT, DOUBLE_EDGE
	db 66, HITMONLEE
			db $ed, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db BLACKBELT_I
			db HI_JUMP_KICK, MEGA_KICK, EARTHQUAKE, REVERSAL
	db 67, HERACROSS
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db FOCUS_BAND
			db ROCK_SLIDE, STRENGTH, EARTHQUAKE, MEGAHORN
	db 68, MACHAMP
			db $de, PERFECT_DV ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db SCOPE_LENS
			db ROCK_SLIDE, CROSS_CHOP, EARTHQUAKE, HIDDEN_POWER
	db -1 ; end
	
	; BRUNO (2)
	db "BRUNO@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 91, ELECTABUZZ
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db MAGNET
			db THUNDERBOLT, CROSS_CHOP, PSYCHIC_M, ICE_PUNCH
	db 90, DODRIO
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db POLKADOT_BOW
			db HI_JUMP_KICK, DRILL_PECK, DOUBLE_TEAM, DOUBLE_EDGE
	db 91, HERACROSS
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FOCUS_BAND
			db ROCK_SLIDE, SUBMISSION, EARTHQUAKE, MEGAHORN
	db 92, ENTEI
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db BLACKBELT_I
			db STRENGTH, FIRE_BLAST, EARTHQUAKE, CUT
	db 90, STEELIX
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db BIND, EARTHQUAKE, IRON_TAIL, CURSE
	db 92, MACHAMP
			db $de, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SCOPE_LENS
			db ROCK_SLIDE, CROSS_CHOP, EARTHQUAKE, HIDDEN_POWER
	db -1 ; end

KarenGroup:
	; KAREN (1)
	db "KAREN@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 67, MURKROW
			db $bb, $cc ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db BERRY_JUICE
			db DRILL_PECK, BEAT_UP, PURSUIT, MINIMIZE
	db 67, PERSIAN
			db $bb, $cc ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db BLACKGLASSES
			db CRUNCH, SWAGGER, HYPNOSIS, ZAP_CANNON
	db 68, HOUNDOOM
			db $bb, $cc ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db CHARCOAL
			db FIRE_BLAST, CRUNCH, REST, SLEEP_TALK
	db 67, GIRAFARIG
			db $bb, $cc ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db TWISTEDSPOON
			db CRUNCH, THUNDER, HYPNOSIS, DREAM_EATER
	db 68, UMBREON
			db $bb, $cc ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db LEFTOVERS
			db MOONLIGHT, TOXIC, THIEF, MEAN_LOOK
	db 69, TYRANITAR
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db FOCUS_BAND
			db ROCK_SLIDE, CRUNCH, EARTHQUAKE, SANDSTORM
	db -1 ; end

	; KAREN (2)
	db "KAREN@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 91, HOUNDOOM
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db CHARCOAL
			db FIRE_BLAST, CRUNCH, REST, SLEEP_TALK
	db 91, OCTILLERY
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db BLACKGLASSES
			db OCTAZOOKA, FLAMETHROWER, SURF, BEAT_UP
	db 91, SNEASEL
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db NEVERMELTICE
			db BEAT_UP, ICE_BEAM, SURF, MOONLIGHT
	db 92, GYARADOS
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db DRAGON_FANG
			db DRAGON_RAGE, CRUNCH, FLY, HYPER_BEAM
	db 91, UMBREON
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db MOONLIGHT, TOXIC, PURSUIT, MEAN_LOOK
	db 92, TYRANITAR
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FOCUS_BAND
			db ROCK_SLIDE, PURSUIT, EARTHQUAKE, FIRE_BLAST
	db -1 ; end

KogaGroup:
	; KOGA (1)
	db "KOGA@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 65, FORRETRESS
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db FOCUS_BAND
			db SPIKE_CANNON, PIN_MISSILE, SPIKES, TOXIC
	db 66, VENOMOTH
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db LEFTOVERS
			db REFLECT, SLEEP_POWDER, SLUDGE_BOMB, LEECH_LIFE
	db 65, HYPNO
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db MIRACLEBERRY
			db REST, SLEEP_TALK, PSYCHIC_M, SEISMIC_TOSS
	db 65, QWILFISH
			db $eb, $ed ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db MYSTIC_WATER
			db RAPID_SPIN, SLUDGE_BOMB, HYDRO_PUMP, HAZE
	db 66, MUK
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db POISON_BARB
			db SLUDGE_BOMB, GIGA_DRAIN, EXPLOSION, CURSE
	db 67, CROBAT
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db SHARP_BEAK
			db FLY, TOXIC, MEAN_LOOK, SLUDGE_BOMB
	db -1 ; end
	
	; KOGA (2)
	db "KOGA@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 90, FORRETRESS
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FOCUS_BAND
			db SPIKE_CANNON, PIN_MISSILE, SPIKES, EXPLOSION
	db 90, MUK
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db POISON_BARB
			db SLUDGE_BOMB, GIGA_DRAIN, EXPLOSION, FIRE_BLAST
	db 91, ARTICUNO
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db BRIGHTPOWDER
			db RAZOR_WIND, ICE_BEAM, REST, SLEEP_TALK
	db 90, VENOMOTH
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db REFLECT, SLEEP_POWDER, SLUDGE_BOMB, LEECH_LIFE
	db 90, TENTACRUEL
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db MYSTIC_WATER
			db SWORDS_DANCE, SLUDGE_BOMB, HYDRO_PUMP, SUBSTITUTE
	db 91, CROBAT
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db FLY, TOXIC, MEAN_LOOK, SLUDGE_BOMB
	db -1 ; end

ChampionGroup:
	; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 69, DRAGONITE
			db $eb, $dd ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db FOCUS_BAND
			db DYNAMICPUNCH, THUNDER, DRAGON_RAGE, ICE_BEAM
	db 69, CHARIZARD
			db $ed, $db ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db LEFTOVERS
			db FIRE_BLAST, OUTRAGE, EARTHQUAKE, FIRE_SPIN
	db 70, GYARADOS
			db $fb, $df ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db DRAGON_FANG
			db DRAGON_RAGE, EARTHQUAKE, HYDRO_PUMP, HYPER_BEAM
	db 69, AERODACTYL
			db $dc, $be ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db HARD_STONE
			db ROCK_SLIDE, RAZOR_WIND, WHIRLWIND, EARTHQUAKE
	db 69, KINGDRA
			db $bb, $bb ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db MYSTIC_WATER
			db OCTAZOOKA, DRAGONBREATH, WATERFALL, HAZE
	db 70, DRAGONITE
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0159, $0159, $0159, $0159, $0159
			db KINGS_ROCK
			db ROCK_SLIDE, RAZOR_WIND, OUTRAGE, MEGA_KICK
	db -1 ; end

BrockGroup:
	; BROCK (1)
	db "BROCK@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 85, CROBAT
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db FLY, SLUDGE_BOMB, TOXIC, CONFUSE_RAY
	db 86, MAGCARGO
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db CHARCOAL
			db SACRED_FIRE, SPIKES, ZAP_CANNON, FLAMETHROWER
	db 86, SUDOWOODO
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db LEECH_SEED, SYNTHESIS, ROCK_SLIDE, SANDSTORM
	db 85, GHOST_P
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db THICK_CLUB
			db BONEMERANG, ROCK_SLIDE, SWORDS_DANCE, SHADOW_BALL
	db 86, KABUTOPS
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db KINGS_ROCK
			db WATERFALL, CUT, ROCK_SLIDE, SANDSTORM
	db 87, GOLEM
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FOCUS_BAND
			db EARTHQUAKE, FIRE_BLAST, EXPLOSION, ROCK_SLIDE
	db -1 ; end

MistyGroup:
	; MISTY (1)
	db "MISTY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 77, FERALIGATR
			db $bf, $fd ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db SOFT_SAND
			db EARTHQUAKE, RAIN_DANCE, SURF, CRUNCH
	db 78, LANTURN
			db PERFECT_DV, $fa ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db LEFTOVERS
			db THUNDER, THUNDER_WAVE, CONFUSE_RAY, HYDRO_PUMP
	db 77, KINGLER
			db $bf, $fd ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db BERRY_JUICE
			db SWORDS_DANCE, CRABHAMMER, VICEGRIP, BODY_SLAM
	db 78, SUICUNE
			db $bf, $fd ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db LEFTOVERS
			db SURF, RAIN_DANCE, ICE_BEAM, TOXIC
	db 78, LAPRAS
			db $bf, $fd ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db NEVERMELTICE
			db BLIZZARD, WHIRLPOOL, PERISH_SONG, REST
	db 79, STARMIE
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db TWISTEDSPOON
			db THUNDERBOLT, HYDRO_PUMP, ICE_BEAM, PSYCHIC_M
	db -1 ; end

LtSurgeGroup:
	; LT_SURGE (1)
	db "LT.SURGE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 71, ELECTRODE
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $0169, $0169, $0169, $0169, $0169
			db FOCUS_BAND
			db THUNDER, RAIN_DANCE, GIGA_DRAIN, EXPLOSION
	db 71, LANTURN
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $0169, $0169, $0169, $0169, $0169
			db MIRACLEBERRY
			db REST, CONFUSE_RAY, HYDRO_PUMP, THUNDER
	db 71, JOLTEON
			db $ad, PERFECT_DV ; atk|def, spd|spc
			dw $0169, $0169, $0169, $0169, $0169
			db BERRY_JUICE
			db THUNDER, HIDDEN_POWER, GROWTH, BATON_PASS
	db 72, ELECTABUZZ
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $0169, $0169, $0169, $0169, $0169
			db SCOPE_LENS
			db THUNDER, ICE_PUNCH, PSYCHIC_M, CROSS_CHOP
	db 72, RAIKOU
			db $ed, $bf ; atk|def, spd|spc
			dw $0169, $0169, $0169, $0169, $0169
			db MAGNET
			db THUNDERBOLT, SLEEP_TALK, HIDDEN_POWER, REST
	db 73, RAICHU
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0169, $0169, $0169, $0169, $0169
			db LEFTOVERS
			db THUNDER, RAIN_DANCE, SURF, SUBSTITUTE
	db -1 ; end

ScientistGroup:
	; SCIENTIST (1)
	db "ROSS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 48, KOFFING	
			dw $006B, $006B, $006B, $006B, $006B
			db EXPLOSION, SLUDGE, DESTINY_BOND, SMOKESCREEN
	db 48, ELECTRODE
			dw $006B, $006B, $006B, $006B, $006B
			db EXPLOSION, MIRROR_COAT, THUNDER_WAVE, THUNDERBOLT
	db 49, WEEZING
			dw $006B, $006B, $006B, $006B, $006B
			db EXPLOSION, SLUDGE_BOMB, FIRE_SPIN, SCREECH
	db -1 ; end

	; SCIENTIST (2)
	db "MITCH@", TRAINERTYPE_STAT_EXP
	db 49, DITTO
			dw $006B, $006B, $006B, $006B, $006B
	db 49, DITTO
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; SCIENTIST (3)
	db "JED@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 48, MAGNEMITE
			dw $006B, $006B, $006B, $006B, $006B
			db THUNDER, CONFUSE_RAY, THUNDER_WAVE, THUNDERBOLT
	db 48, PORYGON
			dw $006B, $006B, $006B, $006B, $006B
			db THUNDER, LOCK_ON, PSYBEAM, TRI_ATTACK
	db 49, MAGNETON
			dw $006B, $006B, $006B, $006B, $006B
			db THUNDERBOLT, SUBSTITUTE, ZAP_CANNON, LOCK_ON
	db -1 ; end

	; SCIENTIST (4)
	db "MARC@", TRAINERTYPE_STAT_EXP
	db 51, QWILFISH
			dw $006B, $006B, $006B, $006B, $006B
	db 51, MAGNETON
			dw $006B, $006B, $006B, $006B, $006B
	db 53, MAGNETON
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; SCIENTIST (5)
	db "RICH@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 53, ELECTRODE
			dw $006B, $006B, $006B, $006B, $006B
			db MIRROR_COAT, EXPLOSION, THUNDER_WAVE, THUNDERBOLT
	db 53, PORYGON
			dw $006B, $006B, $006B, $006B, $006B
			db THUNDER_WAVE, ICE_BEAM, RECOVER, MEGA_KICK
	db -1 ; end
	
	; SCIENTIST (6) - Added to Seafoam Gym
	db "LOWELL@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 87, ARCANINE
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FIRE_BLAST, STRENGTH, EARTHQUAKE, EXTREMESPEED
	db -1 ; end
	
	; SCIENTIST (2) - Added to Seafoam Gym
	db "DANIEL@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 86, PORYGON2
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db RECOVER, PSYCHIC_M, THUNDERBOLT, MEGA_KICK
	db 86, NINETALES
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db HYPNOSIS, FIRE_BLAST, CONFUSE_RAY, DREAM_EATER
	db -1 ; end
	
	; SCIENTIST (3) - Added to Seafoam Gym
	db "LINDEN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, MAGNETON
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db THUNDERBOLT, CONFUSE_RAY, THUNDER_WAVE, SUBSTITUTE
	db 85, FLAREON
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db GROWTH, FLAMETHROWER, BATON_PASS, ZAP_CANNON
	db 85, DITTO
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db TRANSFORM, NO_MOVE, NO_MOVE, NO_MOVE
	db 85, RAPIDASH
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db EARTHQUAKE, FIRE_BLAST, FIRE_SPIN, TAKE_DOWN
	db -1 ; end
	
	; SCIENTIST (4) - Added to Seafoam Gym
	db "OSCAR@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 86, ALAKAZAM
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db PSYCHIC_M, FIRE_PUNCH, RECOVER, KINESIS
	db 87, MAGMAR
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db PSYCHIC_M, FIRE_BLAST, CROSS_CHOP, THUNDERPUNCH
	db -1 ; end
	
	; SCIENTIST (5) - Added to Seafoam Gym
	db "WALDO@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 87, HOUNDOOM
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SUNNY_DAY, FIRE_BLAST, FLAMETHROWER, CRUNCH
	db 87, CHARIZARD
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FIRE_BLAST, SOLARBEAM, DRAGON_RAGE, SUBMISSION
	db -1 ; end
	
	; SCIENTIST (6) - Added to Seafoam Gym
	db "MERLE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 86, WEEZING
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SLUDGE_BOMB, FIRE_BLAST, EXPLOSION, POISON_GAS
	db 86, STEELIX
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db BIND, EARTHQUAKE, IRON_TAIL, CURSE
	db 86, MAGCARGO
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SACRED_FIRE, SOLARBEAM, FIRE_BLAST, AMNESIA
	db -1 ; end
	
	; SCIENTIST (7) - Added to Seafoam Gym
	db "EINSTEIN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, ELECTRODE
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db EXPLOSION, GIGA_DRAIN, THUNDER_WAVE, THUNDER
	db 86, MAGMAR
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db PSYCHIC_M, FIRE_BLAST, CROSS_CHOP, THUNDERPUNCH
	db 86, MAGNETON
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db THUNDERBOLT, CONFUSE_RAY, THUNDER_WAVE, SUBSTITUTE
	db 87, TYPHLOSION
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FIRE_BLAST, THUNDERPUNCH, DYNAMICPUNCH, EARTHQUAKE
	db -1 ; end

ErikaGroup:
	; ERIKA (1)
	db "ERIKA@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 74, JUMPLUFF
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db LEFTOVERS
			db SLEEP_POWDER, SYNTHESIS, LEECH_SEED, FLY
	db 73, FLAREON
			db $af, $bf ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db CHARCOAL
			db FLAMETHROWER, SOLARBEAM, HIDDEN_POWER, SUNNY_DAY
	db 73, SUDOWOODO
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db HARD_STONE
			db ROCK_SLIDE, LEECH_SEED, REST, SLEEP_TALK
	db 74, TANGELA
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db LEFTOVERS
			db LEECH_SEED, GIGA_DRAIN, SLEEP_POWDER, REFLECT
	db 74, CLEFABLE
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db FOCUS_BAND
			db EARTHQUAKE, DOUBLE_EDGE, ICE_BEAM, BELLY_DRUM
	db 75, BELLOSSOM
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db SCOPE_LENS
			db LEECH_SEED, RAZOR_LEAF, FIRE_SPIN, PAIN_SPLIT
	db -1 ; end

YoungsterGroup:
	; YOUNGSTER (1) - Rematch Trainer
	db "JOEY@", TRAINERTYPE_DVS
	db  7, RATTATA
			db PERFECT_DV, PERFECT_DV
	db -1 ; end

	; YOUNGSTER (2)
	db "MIKEY@", TRAINERTYPE_NORMAL
	db  5, HOPPIP
	db  5, RATTATA
	db  6, PIDGEY
	db -1 ; end

	; YOUNGSTER (3)
	db "ALBERT@", TRAINERTYPE_STAT_EXP
	db 13, SENTRET
			dw $0002, $0002, $0002, $0002, $0002
	db 14, ZUBAT
			dw $0002, $0002, $0002, $0002, $0002
	db 15, TEDDIURSA
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; YOUNGSTER (4)
	db "GORDON@", TRAINERTYPE_STAT_EXP
	db 15, WOOPER
			dw $0002, $0002, $0002, $0002, $0002
	db 16, GROWLITHE
			dw $0002, $0002, $0002, $0002, $0002
	db 17, SANDSHREW
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; YOUNGSTER (5)
	db "SAMUEL@", TRAINERTYPE_STAT_EXP
	db 23, SANDSHREW
			dw $0008, $0008, $0008, $0008, $0008
	db 23, MAREEP
			dw $0008, $0008, $0008, $0008, $0008
	db 23, FEAROW
			dw $0008, $0008, $0008, $0008, $0008
	db 24, RATICATE
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; YOUNGSTER (6)
	db "IAN@", TRAINERTYPE_STAT_EXP
	db 24, MANKEY
			dw $0008, $0008, $0008, $0008, $0008
	db 24, PIDGEOTTO
			dw $0008, $0008, $0008, $0008, $0008
	db 25, DIGLETT
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; YOUNGSTER (7) - Rematch Trainer
	db "JOEY@", TRAINERTYPE_DVS
	db 11, RATTATA
			db $bb, $bb
	db 13, RATTATA
			db PERFECT_DV, PERFECT_DV
	db -1 ; end

	; YOUNGSTER (8) - Rematch Trainer
	db "JOEY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 19, RATTATA
			db $bb, $bb
			dw $0002, $0002, $0002, $0002, $0002
	db 20, RATICATE
			db PERFECT_DV, PERFECT_DV
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; YOUNGSTER (9)
	db "WARREN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, FEAROW
			dw $018D, $018D, $018D, $018D, $018D
			db DRILL_PECK, SUBSTITUTE, DOUBLE_EDGE, MIRROR_MOVE
	db 85, PRIMEAPE
			dw $018D, $018D, $018D, $018D, $018D
			db EARTHQUAKE, CROSS_CHOP, ROCK_SLIDE, SEISMIC_TOSS
	db -1 ; end

	; YOUNGSTER (10)
	db "JIMMY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 84, RATICATE
			dw $018D, $018D, $018D, $018D, $018D
			db BODY_SLAM, STRENGTH, SCREECH, SUPER_FANG
	db 85, RATICATE
			dw $018D, $018D, $018D, $018D, $018D
			db BODY_SLAM, STRENGTH, SHADOW_BALL, SUPER_FANG
	db 85, ARBOK
			dw $018D, $018D, $018D, $018D, $018D
			db EARTHQUAKE, SLUDGE_BOMB, SUBSTITUTE, GLARE
	db -1 ; end

	; YOUNGSTER (11)
	db "OWEN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, RATICATE
			dw $0173, $0173, $0173, $0173, $0173
			db BODY_SLAM, SUPER_FANG, SUBSTITUTE, SHADOW_BALL
	db 81, ARCANINE
			dw $0173, $0173, $0173, $0173, $0173
			db FIRE_BLAST, STRENGTH, EARTHQUAKE, EXTREMESPEED
	db -1 ; end

	; YOUNGSTER (12)
	db "TAYLOR@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, BEEDRILL
			dw $0173, $0173, $0173, $0173, $0173
			db TWINEEDLE, HYPER_BEAM, SLUDGE_BOMB, SUBSTITUTE
	db 81, SANDSLASH
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, IRON_TAIL, CUT, SWORDS_DANCE
	db 81, CROBAT
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, TOXIC, CONFUSE_RAY, FLY
	db -1 ; end

	; YOUNGSTER (13) - Rematch Trainer
	db "JOEY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 27, RATICATE
			db $bb, $bb
			dw $0008, $0008, $0008, $0008, $0008
	db 28, RATICATE
			db PERFECT_DV, PERFECT_DV
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; YOUNGSTER (14) - Rematch Trainer
	db "JOEY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 39, RATICATE
			db $bb, $bb
			dw $0020, $0020, $0020, $0020, $0020
			db HYPER_FANG, SUPER_FANG, MIMIC, PURSUIT
	db 41, RATICATE
			db PERFECT_DV, PERFECT_DV
			dw $0020, $0020, $0020, $0020, $0020
			db BODY_SLAM, SUPER_FANG, SUBSTITUTE, SHADOW_BALL
	db -1 ; end
	
	; YOUNGSTER (15) - Added to Route 9
	db "CONNER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 75, BUTTERFREE
			dw $0173, $0173, $0173, $0173, $0173
			db GIGA_DRAIN, PSYCHIC_M, SLEEP_POWDER, NIGHTMARE
	db 75, GIRAFARIG
			dw $0173, $0173, $0173, $0173, $0173
			db AGILITY, BATON_PASS, CRUNCH, PSYCHIC_M
	db 76, PORYGON2
			dw $0173, $0173, $0173, $0173, $0173
			db RECOVER, PSYCHIC_M, THUNDERBOLT, TRI_ATTACK
	db -1 ; end
	
	; YOUNGSTER (16) - Added to Route 1
	db "FRENCH@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, MURKROW
			dw $018D, $018D, $018D, $018D, $018D
			db MEAN_LOOK, BEAT_UP, TOXIC, FLY
	db 85, ALAKAZAM
			dw $018D, $018D, $018D, $018D, $018D
			db PSYCHIC_M, FIRE_PUNCH, RECOVER, KINESIS
	db -1 ; end
	
	; YOUNGSTER (17) - Added to Mt. Silver & final rematch
	db "JOEY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 92, RATICATE
			db $bb, $bb
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db NO_ITEM
			db HYPER_FANG, SUPER_FANG, MIMIC, PURSUIT
	db 93, RATICATE
			db $bb, $bb
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db NO_ITEM
			db HYPER_FANG, SUPER_FANG, MIMIC, PURSUIT
	db 99, RATICATE
			db PERFECT_DV, PERFECT_DV
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db POLKADOT_BOW
			db BODY_SLAM, SUPER_FANG, SUBSTITUTE, SHADOW_BALL
	db -1 ; end

SchoolboyGroup:
	; SCHOOLBOY (1) - Rematch Trainer
	db "JACK@", TRAINERTYPE_STAT_EXP
	db 29, VOLTORB
			dw $0008, $0008, $0008, $0008, $0008
	db 28, MANTINE
			dw $0008, $0008, $0008, $0008, $0008
	db 29, GLOOM
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; SCHOOLBOY (2)
	db "KIPP@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, ELECTRODE
			dw $0173, $0173, $0173, $0173, $0173
			db GIGA_DRAIN, THUNDER_WAVE, EXPLOSION, THUNDERBOLT
	db 81, VAPOREON
			dw $0173, $0173, $0173, $0173, $0173
			db HYDRO_PUMP, GROWTH, ACID_ARMOR, BATON_PASS
	db 82, MAGNETON
			dw $0173, $0173, $0173, $0173, $0173
			db THUNDERBOLT, CONFUSE_RAY, THUNDER_WAVE, SUBSTITUTE
	db -1 ; end

	; SCHOOLBOY (3) - Rematch Trainer
	db "ALAN@", TRAINERTYPE_STAT_EXP
	db 30, QUAGSIRE
			dw $0008, $0008, $0008, $0008, $0008
	db 31, TANGELA
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; SCHOOLBOY (4)
	db "JOHNNY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, TANGELA
			dw $0173, $0173, $0173, $0173, $0173
			db SLEEP_POWDER, LEECH_SEED, GIGA_DRAIN, CONFUSION
	db 82, VICTREEBEL
			dw $0173, $0173, $0173, $0173, $0173
			db SLEEP_POWDER, GROWTH, GIGA_DRAIN, SLUDGE_BOMB
	db -1 ; end

	; SCHOOLBOY (5)
	db "DANNY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 84, JYNX
			dw $018D, $018D, $018D, $018D, $018D
			db DREAM_EATER, BLIZZARD, PSYCHIC_M, LOVELY_KISS
	db 84, ELECTABUZZ
			dw $018D, $018D, $018D, $018D, $018D
			db PSYCHIC_M, THUNDER, CROSS_CHOP, FLASH
	db 84, MAGMAR
			dw $018D, $018D, $018D, $018D, $018D
			db PSYCHIC_M, FIRE_BLAST, CROSS_CHOP, THUNDERPUNCH
	db -1 ; end

	; SCHOOLBOY (6)
	db "TOMMY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, XATU
			dw $0173, $0173, $0173, $0173, $0173
			db PSYCHIC_M, FUTURE_SIGHT, CONFUSE_RAY, DRILL_PECK
	db 81, MURKROW
			dw $0173, $0173, $0173, $0173, $0173
			db MEAN_LOOK, BEAT_UP, TOXIC, FLY
	db 82, ALAKAZAM
			dw $0173, $0173, $0173, $0173, $0173
			db PSYCHIC_M, ICE_PUNCH, RECOVER, KINESIS
	db -1 ; end


	; SCHOOLBOY (7)
	db "DUDLEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 76, HERACROSS
			dw $0173, $0173, $0173, $0173, $0173
			db CUT, SUBMISSION, SWAGGER, SEISMIC_TOSS
	db 76, VILEPLUME
			dw $0173, $0173, $0173, $0173, $0173
			db PETAL_DANCE, SWORDS_DANCE, SLUDGE_BOMB, DOUBLE_EDGE
	db -1 ; end

	; SCHOOLBOY (8)
	db "JOE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 76, TANGELA
			dw $0173, $0173, $0173, $0173, $0173
			db STUN_SPORE, SYNTHESIS, GIGA_DRAIN, LEECH_SEED
	db 77, VAPOREON
			dw $0173, $0173, $0173, $0173, $0173
			db HYDRO_PUMP, GROWTH, ACID_ARMOR, ICE_BEAM
	db -1 ; end

	; SCHOOLBOY (9)
	db "BILLY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 81, PARASECT
			dw $0173, $0173, $0173, $0173, $0173
			db NO_ITEM
			db REFLECT, CUT, GIGA_DRAIN, STUN_SPORE
	db 81, POLIWRATH
			dw $0173, $0173, $0173, $0173, $0173
			db BERRY_JUICE
			db BELLY_DRUM, SUBMISSION, EARTHQUAKE, HYDRO_PUMP
	db 82, DITTO
			dw $0173, $0173, $0173, $0173, $0173
			db NO_ITEM
			db TRANSFORM, NO_MOVE, NO_MOVE, NO_MOVE
	db -1 ; end

	; SCHOOLBOY (10) - Rematch
	db "CHAD@", TRAINERTYPE_STAT_EXP
	db 37, MAGNETON
			dw $0020, $0020, $0020, $0020, $0020
	db 38, MR__MIME
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SCHOOLBOY (11)
	db "NATE@", TRAINERTYPE_STAT_EXP
	db 70, LEDIAN
			dw $0152, $0152, $0152, $0152, $0152
	db 70, EXEGGUTOR
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; SCHOOLBOY (12) ; Moved from subsequent to 1st trip on Fast Ship
	db "RICKY@", TRAINERTYPE_STAT_EXP
	db 70, AIPOM
			dw $0152, $0152, $0152, $0152, $0152
	db 70, MAGCARGO
			dw $0152, $0152, $0152, $0152, $0152
	db 69, DITTO
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; SCHOOLBOY (13) - Rematch
	db "JACK@", TRAINERTYPE_STAT_EXP
	db 34, ELECTRODE
			dw $000C, $000C, $000C, $000C, $000C
	db 33, MANTINE
			dw $000C, $000C, $000C, $000C, $000C
	db 33, GLOOM
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; SCHOOLBOY (14) - Rematch
	db "JACK@", TRAINERTYPE_STAT_EXP
	db 41, ELECTRODE
			dw $0020, $0020, $0020, $0020, $0020
	db 42, MANTINE
			dw $0020, $0020, $0020, $0020, $0020
	db 44, VILEPLUME
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SCHOOLBOY (15)
	db "ALAN@", TRAINERTYPE_STAT_EXP
	db 33, YANMA
			dw $000C, $000C, $000C, $000C, $000C
	db 33, QUAGSIRE
			dw $000C, $000C, $000C, $000C, $000C
	db 34, TANGELA
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; SCHOOLBOY (16)
	db "ALAN@", TRAINERTYPE_STAT_EXP
	db 41, NATU
			dw $0020, $0020, $0020, $0020, $0020
	db 43, YANMA
			dw $0020, $0020, $0020, $0020, $0020
	db 42, QUAGSIRE
			dw $0020, $0020, $0020, $0020, $0020
	db 43, TANGELA
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SCHOOLBOY (17) - Rematch
	db "CHAD@", TRAINERTYPE_STAT_EXP
	db 43, MR__MIME
			dw $0020, $0020, $0020, $0020, $0020
	db 44, MAGNETON
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SCHOOLBOY (18) - Rematch
	db "CHAD@", TRAINERTYPE_STAT_EXP
	db 48, MR__MIME
			dw $006B, $006B, $006B, $006B, $006B
	db 49, MAGNETON
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; SCHOOLBOY (19) - Rematch
	db "JACK@", TRAINERTYPE_STAT_EXP
	db 47, ARCANINE
			dw $006B, $006B, $006B, $006B, $006B
	db 48, ELECTRODE
			dw $006B, $006B, $006B, $006B, $006B
	db 47, MANTINE
			dw $006B, $006B, $006B, $006B, $006B
	db 48, VILEPLUME
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; SCHOOLBOY (20) - Rematch
	db "JACK@", TRAINERTYPE_STAT_EXP
	db 54, ELECTRODE
			dw $006B, $006B, $006B, $006B, $006B
	db 53, MANTINE
			dw $006B, $006B, $006B, $006B, $006B
	db 54, VILEPLUME
			dw $006B, $006B, $006B, $006B, $006B
	db 55, ARCANINE
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; SCHOOLBOY (21)
	db "ALAN@", TRAINERTYPE_STAT_EXP
	db 46, XATU
			dw $006B, $006B, $006B, $006B, $006B
	db 47, TANGELA
			dw $006B, $006B, $006B, $006B, $006B
	db 48, QUAGSIRE
			dw $006B, $006B, $006B, $006B, $006B
	db 49, YANMA
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; SCHOOLBOY (22)
	db "ALAN@", TRAINERTYPE_STAT_EXP
	db 53, TANGELA
			dw $006B, $006B, $006B, $006B, $006B
	db 54, YANMA
			dw $006B, $006B, $006B, $006B, $006B
	db 55, QUAGSIRE
			dw $006B, $006B, $006B, $006B, $006B
	db 55, XATU
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; SCHOOLBOY (23) - Rematch
	db "CHAD@", TRAINERTYPE_STAT_EXP
	db 56, MR__MIME
			dw $006B, $006B, $006B, $006B, $006B
	db 56, MAGNETON
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; SCHOOLBOY (24) - Rematch
	db "CHAD@", TRAINERTYPE_STAT_EXP
	db 68, MR__MIME
			dw $0159, $0159, $0159, $0159, $0159
	db 70, MAGNETON
			dw $0159, $0159, $0159, $0159, $0159
	db -1 ; end
	
	; SCHOOLBOY (25) - Added to Route 15
	db "CONNOR@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, FURRET
			dw $0173, $0173, $0173, $0173, $0173
			db SHADOW_BALL, DOUBLE_EDGE, REST, CURSE
	db 81, AIPOM
			dw $0173, $0173, $0173, $0173, $0173
			db HYPNOSIS, COUNTER, MEGA_KICK, DOUBLESLAP
	db 82, LICKITUNG
			dw $0173, $0173, $0173, $0173, $0173
			db SLAM, SWORDS_DANCE, SLUDGE_BOMB, ICE_BEAM
	db -1 ; end
	
	; SCHOOLBOY (26) - Added to Route 1
	db "SHERMAN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 83, RATICATE
			dw $018D, $018D, $018D, $018D, $018D
			db SUPER_FANG, DOUBLE_EDGE, REST, SLEEP_TALK
	db 84, FURRET
			dw $018D, $018D, $018D, $018D, $018D
			db SHADOW_BALL, DOUBLE_EDGE, REST, CURSE
	db 85, SCYTHER
			dw $018D, $018D, $018D, $018D, $018D
			db RAZOR_WIND, CUT, DOUBLE_TEAM, SWORDS_DANCE
	db -1 ; end

BirdKeeperGroup:
	; BIRD_KEEPER (1)
	db "ROD@", TRAINERTYPE_MOVES
	db 11, ZUBAT
			db BITE, SUPERSONIC, LEECH_LIFE, NO_MOVE
	db 12, PIDGEY
			db MUD_SLAP, TACKLE, GUST, SAND_ATTACK
	db 13, DODUO
			db PECK, FURY_ATTACK, GROWL, PURSUIT
	db -1 ; end

	; BIRD_KEEPER (2)
	db "ABE@", TRAINERTYPE_NORMAL
	db 12, PIDGEY
	db 13, SPEAROW
	db -1 ; end

	; BIRD_KEEPER (3)
	db "BRYAN@", TRAINERTYPE_STAT_EXP
	db 27, HOOTHOOT
			dw $0008, $0008, $0008, $0008, $0008
	db 27, DODUO
			dw $0008, $0008, $0008, $0008, $0008
	db 28, PIDGEOTTO
			dw $0008, $0008, $0008, $0008, $0008
	db 28, GLIGAR
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; BIRD_KEEPER (4) - replaces BIRD KEEPER THEO
	db "KIRT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 38, LEDIAN
			dw $0020, $0020, $0020, $0020, $0020
			db COMET_PUNCH, ICE_PUNCH, AGILITY, BATON_PASS
	db 39, GLIGAR
			dw $0020, $0020, $0020, $0020, $0020
			db DIG, TOXIC, IRON_TAIL, FLY
	db 39, CHARIZARD
			dw $0020, $0020, $0020, $0020, $0020
			db FLY, FLAMETHROWER, DRAGON_RAGE, FIRE_SPIN
	db 41, PIDGEOT
			dw $0020, $0020, $0020, $0020, $0020
			db RAZOR_WIND, WHIRLWIND, TAKE_DOWN, STEEL_WING
	db -1 ; end

	; BIRD_KEEPER (5)
	db "TOBY@", TRAINERTYPE_STAT_EXP
	db 35, DODUO
			dw $0020, $0020, $0020, $0020, $0020
	db 36, MANTINE
			dw $0020, $0020, $0020, $0020, $0020
	db 36, DELIBIRD
			dw $0020, $0020, $0020, $0020, $0020
	db 37, DODRIO
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; BIRD_KEEPER (6)
	db "DENIS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 39, BUTTERFREE
			dw $0020, $0020, $0020, $0020, $0020
			db MEGA_DRAIN, WHIRLWIND, PSYBEAM, SLEEP_POWDER
	db 40, SKARMORY
			dw $0020, $0020, $0020, $0020, $0020
			db DRILL_PECK, WHIRLWIND, SPIKES, STEEL_WING
	db 40, DUNSPARCE
			dw $0020, $0020, $0020, $0020, $0020
			db PURSUIT, GLARE, TAKE_DOWN, ROCK_SLIDE
	db -1 ; end

	; BIRD_KEEPER (7) - Rematch Trainer
	db "VANCE@", TRAINERTYPE_STAT_EXP
	db 51, PIDGEOTTO
			dw $006B, $006B, $006B, $006B, $006B
	db 51, XATU
			dw $006B, $006B, $006B, $006B, $006B
	db 52, PIDGEOT
			dw $006B, $006B, $006B, $006B, $006B
	db 52, SKARMORY
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; BIRD_KEEPER (8)
	db "HANK@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 84, DODRIO
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db HI_JUMP_KICK, DRILL_PECK, SUBSTITUTE, TRI_ATTACK
	db 85, MANTINE
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db HYDRO_PUMP, TOXIC, HAZE, CONFUSE_RAY
	db 86, PIDGEOT
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db HYPER_BEAM, RAZOR_WIND, MIRROR_MOVE, MUD_SLAP
	db -1 ; end

	; BIRD_KEEPER (9)
	db "ROY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, FEAROW
			dw $0173, $0173, $0173, $0173, $0173
			db DRILL_PECK, SUBSTITUTE, DOUBLE_EDGE, MIRROR_MOVE
	db 81, GLIGAR
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, TOXIC, FLY, SCREECH
	db 82, FARFETCH_D
			dw $0173, $0173, $0173, $0173, $0173
			db SWORDS_DANCE, RAZOR_LEAF, RAZOR_WIND, BODY_SLAM
	db -1 ; end

	; BIRD_KEEPER (10)
	db "BORIS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, DODRIO
			dw $0173, $0173, $0173, $0173, $0173
			db DRILL_PECK, TRI_ATTACK, DOUBLE_TEAM, HI_JUMP_KICK
	db 81, VENOMOTH
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, GIGA_DRAIN, LEECH_LIFE, SLEEP_POWDER
	db 82, DODRIO
			dw $0173, $0173, $0173, $0173, $0173
			db DRILL_PECK, DOUBLE_EDGE, SUBSTITUTE, HI_JUMP_KICK
	db -1 ; end

	; BIRD_KEEPER (11)
	db "BOB@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, SKARMORY
			dw $0173, $0173, $0173, $0173, $0173
			db STEEL_WING, CURSE, WHIRLWIND, DRILL_PECK
	db 81, PIDGEOT
			dw $0173, $0173, $0173, $0173, $0173
			db HYPER_BEAM, RAZOR_WIND, MIRROR_MOVE, MUD_SLAP
	db 81, NOCTOWL
			dw $0173, $0173, $0173, $0173, $0173
			db HYPNOSIS, DREAM_EATER, TAKE_DOWN, REFLECT
	db 81, SCYTHER
			dw $0173, $0173, $0173, $0173, $0173
			db RAZOR_WIND, CUT, DOUBLE_TEAM, PURSUIT
	db -1 ; end

	; BIRD_KEEPER (12) - First rematch
	db "JOSE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 69, FARFETCH_D
			dw $0159, $0159, $0159, $0159, $0159
			db SWORDS_DANCE, RAZOR_WIND, RAZOR_LEAF, BATON_PASS
	db 70, SKARMORY
			dw $0159, $0159, $0159, $0159, $0159
			db STEEL_WING, CURSE, WHIRLWIND, DRILL_PECK
	db 69, PIDGEOT
			dw $0159, $0159, $0159, $0159, $0159
			db HYPER_BEAM, RAZOR_WIND, MIRROR_MOVE, MUD_SLAP
	db -1 ; end

	; BIRD_KEEPER (13)
	db "PETER@", TRAINERTYPE_STAT_EXP
	db 15, SPEAROW
			dw $0002, $0002, $0002, $0002, $0002
	db 15, LEDYBA
			dw $0002, $0002, $0002, $0002, $0002
	db 16, NATU
			dw $0002, $0002, $0002, $0002, $0002
	db 16, HOOTHOOT
			dw $0002, $0002, $0002, $0002, $0002
	db 17, SKIPLOOM
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; BIRD_KEEPER (14) - First encounter
	db "JOSE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 59, FARFETCH_D
			dw $0082, $0082, $0082, $0082, $0082
			db SWORDS_DANCE, RAZOR_WIND, RAZOR_LEAF, BATON_PASS
	db 60, SKARMORY
			dw $0082, $0082, $0082, $0082, $0082
			db STEEL_WING, CURSE, WHIRLWIND, DRILL_PECK
	db 59, PIDGEOT
			dw $0082, $0082, $0082, $0082, $0082
			db HYPER_BEAM, RAZOR_WIND, MIRROR_MOVE, MUD_SLAP
	db -1 ; end

	; BIRD_KEEPER (15)
	db "PERRY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, DRAGONITE
			dw $0173, $0173, $0173, $0173, $0173
			db OUTRAGE, FIRE_BLAST, RAZOR_WIND, SURF
	db -1 ; end

	; BIRD_KEEPER (16)
	db "BRET@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, JUMPLUFF
			dw $0173, $0173, $0173, $0173, $0173
			db STUN_SPORE, LEECH_SEED, COTTON_SPORE, FLY
	db 82, FEAROW
			dw $0173, $0173, $0173, $0173, $0173
			db DRILL_PECK, SUBSTITUTE, DOUBLE_EDGE, MIRROR_MOVE
	db -1 ; end

	; BIRD_KEEPER (17) - Rematch
	db "JOSE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 79, FARFETCH_D
			dw $0173, $0173, $0173, $0173, $0173
			db SWORDS_DANCE, RAZOR_WIND, RAZOR_LEAF, BATON_PASS
	db 80, SKARMORY
			dw $0173, $0173, $0173, $0173, $0173
			db STEEL_WING, CURSE, WHIRLWIND, DRILL_PECK
	db 79, PIDGEOT
			dw $0173, $0173, $0173, $0173, $0173
			db HYPER_BEAM, RAZOR_WIND, MIRROR_MOVE, MUD_SLAP
	db -1 ; end

	; BIRD_KEEPER (18) - Rematch
	db "VANCE@", TRAINERTYPE_STAT_EXP
	db 66, PIDGEOT
			dw $0159, $0159, $0159, $0159, $0159
	db 66, XATU
			dw $0159, $0159, $0159, $0159, $0159
	db 67, PIDGEOT
			dw $0159, $0159, $0159, $0159, $0159
	db 68, SKARMORY
			dw $0159, $0159, $0159, $0159, $0159
	db -1 ; end

	; BIRD_KEEPER (19) - Rematch
	db "VANCE@", TRAINERTYPE_STAT_EXP
	db 75, PIDGEOT
			dw $0173, $0173, $0173, $0173, $0173
	db 76, XATU
			dw $0173, $0173, $0173, $0173, $0173
	db 76, PIDGEOT
			dw $0173, $0173, $0173, $0173, $0173
	db 78, SKARMORY
			dw $0173, $0173, $0173, $0173, $0173
	db -1 ; end
	
	; BIRD_KEEPER (20) - Added to Route 3
	db "ANDER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, TOGETIC
			dw $018D, $018D, $018D, $018D, $018D
			db AEROBLAST, MUD_SLAP, DOUBLE_EDGE, GIGA_DRAIN
	db 86, CROBAT
			dw $018D, $018D, $018D, $018D, $018D
			db FLY, MEAN_LOOK, SLUDGE_BOMB, TOXIC
	db -1 ; end
	
	; BIRD_KEEPER (21) - Added to Route 21
	db "KINLEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 84, FARFETCH_D
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SWORDS_DANCE, RAZOR_LEAF, RAZOR_WIND, BODY_SLAM
	db 84, MANTINE
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db HYDRO_PUMP, TOXIC, HAZE, CONFUSE_RAY
	db 85, GLIGAR
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db EARTHQUAKE, TOXIC, FLY, PROTECT
	db -1 ; end
	
	; BIRD_KEEPER (22) - Added to Route 28
	db "TANNER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 91, GLIGAR
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db EARTHQUAKE, TOXIC, FLY, SCREECH
	db 91, DELIBIRD
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db ICE_BEAM, DRILL_PECK, PRESENT, ATTRACT
	db 92, TOGETIC
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db AEROBLAST, DOUBLE_EDGE, FIRE_BLAST, SAFEGUARD
	db 92, DRAGONITE
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db OUTRAGE, THUNDER, RAZOR_WIND, ICE_BEAM
	db -1 ; end

LassGroup:
	; LASS (1)
	db "CARRIE@", TRAINERTYPE_STAT_EXP
	db 25, EEVEE
			dw $0008, $0008, $0008, $0008, $0008
	db 26, NIDORINA
			dw $0008, $0008, $0008, $0008, $0008
	db 26, AIPOM
			dw $0008, $0008, $0008, $0008, $0008
	db 27, GRANBULL
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; LASS (2)
	db "BRIDGET@", TRAINERTYPE_STAT_EXP
	db 27, FLAAFFY
			dw $0008, $0008, $0008, $0008, $0008
	db 27, JIGGLYPUFF
			dw $0008, $0008, $0008, $0008, $0008
	db 28, NIDORINO
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; LASS (4)
	db "KRISE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 28, CUBONE
			dw $0008, $0008, $0008, $0008, $0008
			db BONEMERANG, HEADBUTT, LEER, MUD_SLAP
	db 29, VILEPLUME
			dw $0008, $0008, $0008, $0008, $0008
			db MEGA_DRAIN, ACID, SLEEP_POWDER, MOONLIGHT
	db -1 ; end

	; LASS (5)
	db "CONNIE@", TRAINERTYPE_STAT_EXP
	db 40, GIRAFARIG
			dw $0020, $0020, $0020, $0020, $0020
	db 40, AZUMARILL
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; LASS (6)
	db "LAURA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, VICTREEBEL
			dw $0173, $0173, $0173, $0173, $0173
			db STUN_SPORE, SYNTHESIS, RAZOR_LEAF, SLUDGE_BOMB
	db 81, PIDGEOT
			dw $0173, $0173, $0173, $0173, $0173
			db RAZOR_WIND, MIRROR_MOVE, DOUBLE_EDGE, SKY_ATTACK
	db 82, VENUSAUR
			dw $0173, $0173, $0173, $0173, $0173
			db REFLECT, LEECH_SEED, GIGA_DRAIN, BODY_SLAM
	db 82, VENUSAUR
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, SLEEP_POWDER, SLUDGE_BOMB, SWORDS_DANCE
	db -1 ; end

	; LASS (7)
	db "LAURA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 76, VICTREEBEL
			dw $0173, $0173, $0173, $0173, $0173
			db STUN_SPORE, SYNTHESIS, RAZOR_LEAF, SLUDGE_BOMB
	db 76, PIDGEOT
			dw $0173, $0173, $0173, $0173, $0173
			db RAZOR_WIND, MIRROR_MOVE, DOUBLE_EDGE, SKY_ATTACK
	db 76, BELLOSSOM
			dw $0173, $0173, $0173, $0173, $0173
			db MORNING_SUN, PETAL_DANCE, LEECH_SEED, SLEEP_POWDER
	db -1 ; end

	; LASS (8)
	db "SHANNON@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 76, PARASECT
			dw $0173, $0173, $0173, $0173, $0173
			db REFLECT, CUT, GIGA_DRAIN, STUN_SPORE
	db 76, PIDGEOT
			dw $0173, $0173, $0173, $0173, $0173
			db RAZOR_WIND, MIRROR_MOVE, DOUBLE_EDGE, SKY_ATTACK
	db 76, PARASECT
			dw $0173, $0173, $0173, $0173, $0173
			db SPORE, LEECH_LIFE, GIGA_DRAIN, SLUDGE_BOMB
	db -1 ; end

	; LASS (9)
	db "MICHELLE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 72, JUMPLUFF
			dw $0169, $0169, $0169, $0169, $0169
			db STUN_SPORE, LEECH_SEED, ENCORE, FLY
	db 72, PARASECT
			dw $0169, $0169, $0169, $0169, $0169
			db SPORE, SWORDS_DANCE, SLUDGE_BOMB, BATON_PASS
	db 73, MEGANIUM
			dw $0169, $0169, $0169, $0169, $0169
			db BODY_SLAM, SWORDS_DANCE, SYNTHESIS, EARTHQUAKE
	db -1 ; end

	; LASS (10) - Rematch
	db "DANA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 37, AMPHAROS
			dw $0020, $0020, $0020, $0020, $0020
			db THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE, REFLECT
	db 38, GOLDUCK
			dw $0020, $0020, $0020, $0020, $0020
			db WATERFALL, PSYBEAM, CROSS_CHOP, DISABLE
	db -1 ; end

	; LASS (11)
	db "ELLEN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 76, WIGGLYTUFF
			dw $0173, $0173, $0173, $0173, $0173
			db THUNDER, BODY_SLAM, REST, SLEEP_TALK
	db 76, GRANBULL
			dw $0173, $0173, $0173, $0173, $0173
			db THUNDER, EARTHQUAKE, LOVELY_KISS, MEGA_PUNCH
	db -1 ; end

	; LASS (14) - Rematch
	db "DANA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 42, AMPHAROS
			dw $0020, $0020, $0020, $0020, $0020
			db THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE, REFLECT
	db 42, GOLDUCK
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, PSYCHIC_M, CROSS_CHOP, DISABLE
	db -1 ; end

	; LASS (15) - Rematch
	db "DANA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 49, AMPHAROS
			dw $006B, $006B, $006B, $006B, $006B
			db THUNDERBOLT, THUNDER_WAVE, COTTON_SPORE, LIGHT_SCREEN
	db 50, GOLDUCK
			dw $006B, $006B, $006B, $006B, $006B
			db SURF, PSYCHIC_M, CROSS_CHOP, RECOVER
	db -1 ; end

	; LASS (16) - Rematch
	db "DANA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 55, AMPHAROS
			dw $006B, $006B, $006B, $006B, $006B
			db THUNDERBOLT, THUNDER_WAVE, COTTON_SPORE, LIGHT_SCREEN
	db 56, GOLDUCK
			dw $006B, $006B, $006B, $006B, $006B
			db HYDRO_PUMP, PSYCHIC_M, CROSS_CHOP, RECOVER
	db -1 ; end

	; LASS (17) - Rematch
	db "DANA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 68, AMPHAROS
			dw $0159, $0159, $0159, $0159, $0159
			db THUNDER, THUNDER_WAVE, COTTON_SPORE, REFLECT
	db 70, GOLDUCK
			dw $0159, $0159, $0159, $0159, $0159
			db HYDRO_PUMP, PSYCHIC_M, CROSS_CHOP, RECOVER
	db -1 ; end
	
	; LASS (18) - Ultimate
	db "JANET@", TRAINERTYPE_MOVES
	db 7, METAPOD,  TACKLE, HARDEN, STRING_SHOT, NO_MOVE
	db 7, PHANPY,   TACKLE, GROWL, MUD_SLAP, NO_MOVE
	db -1 ; end

JanineGroup:
	; JANINE (1)
	db "JANINE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 83, WEEZING
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db SCOPE_LENS
			db SLUDGE_BOMB, EXPLOSION, FIRE_BLAST, POISON_GAS
	db 82, QUAGSIRE
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db LEFTOVERS
			db TOXIC, EARTHQUAKE, WHIRLPOOL, AMNESIA
	db 83, CROBAT
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db LEFTOVERS
			db FLY, MEAN_LOOK, SLUDGE_BOMB, TOXIC
	db 82, GENGAR
			db $bf, $bf ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db SPELL_TAG
			db NIGHT_SHADE, HYPNOSIS, ICE_PUNCH, DESTINY_BOND
	db 83, NIDOQUEEN
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db SOFT_SAND
			db EARTHQUAKE, SLUDGE_BOMB, THUNDER, MOONLIGHT
	db 84, VENOMOTH
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db SILVERPOWDER
			db CURSE, LEECH_LIFE, SLUDGE_BOMB, SLEEP_POWDER
	db -1 ; end

CooltrainerMGroup:
	; COOLTRAINERM (1) - Return to Union Cave with Surf
	db "NICK@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 38, VENUSAUR
			db $bb, $bb
			dw $0020, $0020, $0020, $0020, $0020
			db GROWTH, REFLECT, SLEEP_POWDER, RAZOR_LEAF
	db 38, CHARIZARD
			db $bb, $bb
			dw $0020, $0020, $0020, $0020, $0020
			db EMBER, WING_ATTACK, SMOKESCREEN, DRAGON_RAGE
	db 38, BLASTOISE
			db $bb, $bb
			dw $0020, $0020, $0020, $0020, $0020
			db REST, WATERFALL, SLEEP_TALK, SPIKE_CANNON
	db 39, HERACROSS
			db PERFECT_DV, PERFECT_DV
			dw $0020, $0020, $0020, $0020, $0020
			db VITAL_THROW, TAKE_DOWN, CUT, COUNTER
	db -1 ; end

	; COOLTRAINERM (2)
	db "AARON@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 48, KABUTOPS
			dw $006B, $006B, $006B, $006B, $006B
			db SWORDS_DANCE, ANCIENTPOWER, CUT, SUBMISSION
	db 49, ELECTABUZZ
			dw $006B, $006B, $006B, $006B, $006B
			db PSYCHIC_M, THUNDERBOLT, CROSS_CHOP, LIGHT_SCREEN
	db 51, VENUSAUR
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, SLEEP_POWDER, GIGA_DRAIN, SYNTHESIS
	db -1 ; end

	; COOLTRAINERM (3)
	db "PAUL@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 55, DRATINI
			dw $006B, $006B, $006B, $006B, $006B
			db DRAGON_RAGE, SLAM, THUNDER_WAVE, FLAMETHROWER
	db 56, DRAGONAIR
			dw $006B, $006B, $006B, $006B, $006B
			db DRAGON_RAGE, EXTREMESPEED, THUNDER_WAVE, ICE_BEAM
	db 56, GYARADOS
			dw $006B, $006B, $006B, $006B, $006B
			db DRAGON_RAGE, CRUNCH, THUNDERBOLT, HYPER_BEAM
	db -1 ; end

	; COOLTRAINERM (4)
	db "CODY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 57, CHARMELEON
			dw $006B, $006B, $006B, $006B, $006B
			db DRAGON_RAGE, FIRE_BLAST, SMOKESCREEN, FIRE_SPIN
	db 57, SEADRA
			dw $006B, $006B, $006B, $006B, $006B
			db TWISTER, HYDRO_PUMP, BLIZZARD, DOUBLE_EDGE
	db -1 ; end

	; COOLTRAINERM (5)
	db "MIKE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 58, DRAGONITE
			dw $006B, $006B, $006B, $006B, $006B
			db OUTRAGE, THUNDER_WAVE, DRAGON_RAGE, ICE_BEAM
	db -1 ; end

	; COOLTRAINERM (6) - First rematch
	db "GAVEN@", TRAINERTYPE_STAT_EXP
	db 67, VICTREEBEL
			dw $0159, $0159, $0159, $0159, $0159
	db 68, KINGLER
			dw $0159, $0159, $0159, $0159, $0159
	db 69, MAGCARGO
			dw $0159, $0159, $0159, $0159, $0159
	db -1 ; end

	; COOLTRAINERM (7) - Rematch
	db "GAVEN@", TRAINERTYPE_STAT_EXP
	db 76, VICTREEBEL
			dw $0173, $0173, $0173, $0173, $0173
	db 77, KINGLER
			dw $0173, $0173, $0173, $0173, $0173
	db 79, MAGCARGO
			dw $0173, $0173, $0173, $0173, $0173
	db -1 ; end

	; COOLTRAINERM (8)
	db "RYAN@", TRAINERTYPE_STAT_EXP
	db 55, PIDGEOT
			dw $006B, $006B, $006B, $006B, $006B
	db 55, ELECTABUZZ
			dw $006B, $006B, $006B, $006B, $006B
	db 55, DODRIO
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; COOLTRAINERM (9)
	db "JAKE@", TRAINERTYPE_STAT_EXP
	db 60, FLAREON
			dw $0082, $0082, $0082, $0082, $0082
	db 60, PARASECT
			dw $0082, $0082, $0082, $0082, $0082
	db 61, GOLDUCK
			dw $0082, $0082, $0082, $0082, $0082
	db -1 ; end

	; COOLTRAINERM (10) - First encounter
	db "GAVEN@", TRAINERTYPE_STAT_EXP
	db 60, VICTREEBEL
			dw $0082, $0082, $0082, $0082, $0082
	db 60, KINGLER
			dw $0082, $0082, $0082, $0082, $0082
	db 61, MAGCARGO
			dw $0082, $0082, $0082, $0082, $0082
	db -1 ; end

	; COOLTRAINERM (11)
	db "BLAKE@", TRAINERTYPE_STAT_EXP
	db 58, MAGNETON
			dw $0082, $0082, $0082, $0082, $0082
	db 58, QUAGSIRE
			dw $0082, $0082, $0082, $0082, $0082
	db 59, EXEGGUTOR
			dw $0082, $0082, $0082, $0082, $0082
	db -1 ; end

	; COOLTRAINERM (12)
	db "BRIAN@", TRAINERTYPE_STAT_EXP
	db 59, SANDSLASH
			dw $0082, $0082, $0082, $0082, $0082
	db 60, HOUNDOOM
			dw $0082, $0082, $0082, $0082, $0082
	db -1 ; end

	; COOLTRAINERM (16) ; Moved from subsequent to 1st trip on Fast Ship
	db "SEAN@", TRAINERTYPE_STAT_EXP
	db 68, VAPOREON
			dw $0152, $0152, $0152, $0152, $0152
	db 68, TANGELA
			dw $0152, $0152, $0152, $0152, $0152
	db 69, TAUROS
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; COOLTRAINERM (17)
	db "KEVIN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 76, TYPHLOSION
			dw $0173, $0173, $0173, $0173, $0173
			db FIRE_BLAST, THUNDERPUNCH, DYNAMICPUNCH, EARTHQUAKE
	db 76, BLASTOISE
			dw $0173, $0173, $0173, $0173, $0173
			db SURF, IRON_TAIL, SANDSTORM, ROCK_SLIDE
	db 77, RHYDON
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, ROCK_SLIDE, SURF, CURSE
	db -1 ; end

	; COOLTRAINERM (19)
	db "ALLEN@", TRAINERTYPE_STAT_EXP
	db 52, CHARMELEON
			dw $006B, $006B, $006B, $006B, $006B
	db 53, CHARIZARD
			dw $006B, $006B, $006B, $006B, $006B
	db 53, TYPHLOSION
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; COOLTRAINERM (20)
	db "DARIN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 58, DRAGONAIR
			dw $0082, $0082, $0082, $0082, $0082
			db DRAGON_RAGE, SLAM, THUNDER_WAVE, BLIZZARD
	db 59, DRAGONITE
			dw $0082, $0082, $0082, $0082, $0082
			db DRAGON_RAGE, SLAM, FLAMETHROWER, THUNDERBOLT
	db -1 ; end
	
	; COOLTRAINERM (21) - New Victory Road trainer
	db "CHRIST@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 61, LANTURN
			dw $0082, $0082, $0082, $0082, $0082
			db THUNDERBOLT, HYDRO_PUMP, THUNDER_WAVE, CONFUSE_RAY
	db 61, SKARMORY
			dw $0082, $0082, $0082, $0082, $0082
			db CURSE, WHIRLWIND, STEEL_WING, DRILL_PECK
	db 62, BLISSEY
			dw $0082, $0082, $0082, $0082, $0082
			db SOFTBOILED, ICE_BEAM, LIGHT_SCREEN, TOXIC
	db 63, TANGELA
			dw $0082, $0082, $0082, $0082, $0082
			db SLEEP_POWDER, CONSTRICT, LEECH_SEED, GROWTH
	db -1 ; end
	
	; COOLTRAINERM (22) - Added to Mt. Silver
	db "CALLUM@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 92, TOGETIC
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db SHADOW_BALL, AEROBLAST, CHARM, SWEET_KISS
	db 92, STEELIX
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db EARTHQUAKE, SCREECH, SKULL_BASH, ROCK_SLIDE
	db 93, AMPHAROS
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db THUNDERBOLT, THUNDER_WAVE, LIGHT_SCREEN, FIRE_PUNCH
	db 93, ALAKAZAM
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db PSYCHIC_M, REFLECT, RECOVER, ICE_PUNCH
	db 94, MEGANIUM
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db PETAL_DANCE, BODY_SLAM, SYNTHESIS, LEECH_SEED
	db 94, KABUTOPS
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db ROCK_SLIDE, CUT, BLIZZARD, WATERFALL
	db -1 ; end

CooltrainerFGroup:
	; COOLTRAINERF (1) - Return to Union Cave with Surf
	db "GWEN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 38, FLAREON
			dw $0020, $0020, $0020, $0020, $0020
			db GROWTH, BATON_PASS, FLAME_WHEEL, AGILITY
	db 38, VAPOREON
			dw $0020, $0020, $0020, $0020, $0020
			db AURORA_BEAM, ACID_ARMOR, SURF, BATON_PASS
	db 38, JOLTEON
			dw $0020, $0020, $0020, $0020, $0020
			db GROWTH, BATON_PASS, SPARK, THUNDER_WAVE
	db -1 ; end

	; COOLTRAINERF (2)
	db "LOIS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 49, JUMPLUFF
			dw $006B, $006B, $006B, $006B, $006B
			db SYNTHESIS, SLEEP_POWDER, COTTON_SPORE, LEECH_SEED
	db 49, NINETALES
			dw $006B, $006B, $006B, $006B, $006B
			db HYPNOSIS, IRON_TAIL, FLAMETHROWER, SHADOW_BALL
	db 50, NINETALES
			dw $006B, $006B, $006B, $006B, $006B
			db HYPNOSIS, FIRE_BLAST, CONFUSE_RAY, DREAM_EATER
	db -1 ; end

	; COOLTRAINERF (3)
	db "FRAN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 58, KINGDRA
			dw $006B, $006B, $006B, $006B, $006B
			db DRAGONBREATH, WATERFALL, OCTAZOOKA, DOUBLE_EDGE
	db -1 ; end

	; COOLTRAINERF (4)
	db "LOLA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 55, DRATINI
			dw $006B, $006B, $006B, $006B, $006B
			db DRAGON_RAGE, SLAM, THUNDER_WAVE, FLAMETHROWER
	db 56, DRAGONAIR
			dw $006B, $006B, $006B, $006B, $006B
			db DRAGON_RAGE, EXTREMESPEED, THUNDER_WAVE, ICE_BEAM
	db 57, AERODACTYL
			dw $006B, $006B, $006B, $006B, $006B
			db DRAGONBREATH, CRUNCH, ROCK_SLIDE, RAZOR_WIND
	db -1 ; end

	; COOLTRAINERF (5) - Return to Route 34 with Surf
	db "KATE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 38, CLOYSTER
			dw $0020, $0020, $0020, $0020, $0020
			db SPIKES, CLAMP, AURORA_BEAM, SHADOW_BALL
	db 39, ARCANINE
			dw $0020, $0020, $0020, $0020, $0020
			db FLAME_WHEEL, TAKE_DOWN, MUD_SLAP, DRAGON_RAGE
	db -1 ; end

	; COOLTRAINERF (6) - Return to Route 34 with Surf
	db "IRENE@", TRAINERTYPE_STAT_EXP
	db 37, GOLDEEN
			dw $0020, $0020, $0020, $0020, $0020
	db 38, SEAKING
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; COOLTRAINERF (7)
	db "KELLY@", TRAINERTYPE_STAT_EXP
	db 55, AZUMARILL
			dw $006B, $006B, $006B, $006B, $006B
	db 55, BLASTOISE
			dw $006B, $006B, $006B, $006B, $006B
	db 55, QUAGSIRE
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; COOLTRAINERF (8)
	db "JOYCE@", TRAINERTYPE_STAT_EXP
	db 60, BLASTOISE
			dw $0082, $0082, $0082, $0082, $0082
	db 61, RAICHU
			dw $0082, $0082, $0082, $0082, $0082
	db -1 ; end

	; COOLTRAINERF (9) - Rematch Trainer
	db "BETH@", TRAINERTYPE_STAT_EXP
	db 61, TYPHLOSION
			dw $0082, $0082, $0082, $0082, $0082
	db 62, RAPIDASH
			dw $0082, $0082, $0082, $0082, $0082
	db -1 ; end

	; COOLTRAINERF (10) - Rematch
	db "REENA@", TRAINERTYPE_STAT_EXP
	db 58, SCIZOR
			dw $0082, $0082, $0082, $0082, $0082
	db 58, NIDOQUEEN
			dw $0082, $0082, $0082, $0082, $0082
	db 59, STARMIE
			dw $0082, $0082, $0082, $0082, $0082
	db -1 ; end

	; COOLTRAINERF (11)
	db "MEGAN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 57, IVYSAUR
			dw $0082, $0082, $0082, $0082, $0082
			db SLUDGE_BOMB, SOLARBEAM, SLEEP_POWDER, SUNNY_DAY
	db 58, MEGANIUM
			dw $0082, $0082, $0082, $0082, $0082
			db BODY_SLAM, SOLARBEAM, LIGHT_SCREEN, SUNNY_DAY
	db 59, VENUSAUR
			dw $0082, $0082, $0082, $0082, $0082
			db SLUDGE_BOMB, GROWTH, SYNTHESIS, PETAL_DANCE
	db -1 ; end

	; COOLTRAINERF (12) - Rematch
	db "BETH@", TRAINERTYPE_STAT_EXP
	db 69, TYPHLOSION
			dw $0159, $0159, $0159, $0159, $0159
	db 70, RAPIDASH
			dw $0159, $0159, $0159, $0159, $0159
	db -1 ; end

	; COOLTRAINERF (13)
	db "CAROL@", TRAINERTYPE_STAT_EXP
	db 69, ELECTRODE
			dw $0152, $0152, $0152, $0152, $0152
	db 69, STARMIE
			dw $0152, $0152, $0152, $0152, $0152
	db 70, NINETALES
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; COOLTRAINERF (14)
	db "QUINN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 84, ELECTRODE
			dw $018D, $018D, $018D, $018D, $018D
			db PSYCHIC_M, THUNDER, GIGA_DRAIN, FLASH
	db 85, VENUSAUR
			dw $018D, $018D, $018D, $018D, $018D
			db RAZOR_LEAF, SLUDGE_BOMB, LEECH_SEED, SLEEP_POWDER
	db 86, STARMIE
			dw $018D, $018D, $018D, $018D, $018D
			db PSYCHIC_M, HYDRO_PUMP, RECOVER, THUNDERBOLT
	db -1 ; end

	; COOLTRAINERF (15) - Return to Union Cave with Surf
	db "EMMA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 38, POLIWHIRL
			dw $0020, $0020, $0020, $0020, $0020
			db BODY_SLAM, DREAM_EATER, SURF, LOVELY_KISS
	db 39, POLIWRATH
			dw $0020, $0020, $0020, $0020, $0020
			db ICE_PUNCH, SUBMISSION, BODY_SLAM, LOVELY_KISS
	db -1 ; end

	; COOLTRAINERF (16)
	db "CYBIL@", TRAINERTYPE_STAT_EXP
	db 52, BUTTERFREE
			dw $006B, $006B, $006B, $006B, $006B
	db 52, TANGELA
			dw $006B, $006B, $006B, $006B, $006B
	db 53, BELLOSSOM
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; COOLTRAINERF (17) - Return to Route 34 with Surf
	db "JENN@", TRAINERTYPE_STAT_EXP
	db 37, STARYU
			dw $0020, $0020, $0020, $0020, $0020
	db 38, STARMIE
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; COOLTRAINERF (18) - Rematch
	db "BETH@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM
	db 78, TYPHLOSION
			dw $0173, $0173, $0173, $0173, $0173
			db NO_ITEM
	db 80, RAPIDASH
			dw $0173, $0173, $0173, $0173, $0173
			db FOCUS_BAND
	db -1 ; end

	; COOLTRAINERF (19) - Rematch
	db "REENA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 67, SCIZOR
			dw $0159, $0159, $0159, $0159, $0159
			db CUT, STEEL_WING, SWORDS_DANCE, SUBSTITUTE
	db 68, NIDOQUEEN
			dw $0159, $0159, $0159, $0159, $0159
			db EARTHQUAKE, DOUBLE_KICK, TOXIC, BODY_SLAM
	db 69, STARMIE
			dw $0159, $0159, $0159, $0159, $0159
			db BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	db -1 ; end

	; COOLTRAINERF (20) - Rematch
	db "REENA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 77, SCIZOR
			dw $0173, $0173, $0173, $0173, $0173
			db CUT, STEEL_WING, SWORDS_DANCE, SUBSTITUTE
	db 77, NIDOQUEEN
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, DOUBLE_KICK, TOXIC, BODY_SLAM
	db 78, STARMIE
			dw $0173, $0173, $0173, $0173, $0173
			db BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	db -1 ; end

	; COOLTRAINERF (21)
	db "CARA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 56, SEADRA
			dw $0082, $0082, $0082, $0082, $0082
			db TWISTER, DOUBLE_EDGE, OCTAZOOKA, HYDRO_PUMP
	db 57, SEADRA
			dw $0082, $0082, $0082, $0082, $0082
			db DRAGONBREATH, SURF, SMOKESCREEN, HAZE
	db 58, KINGDRA
			dw $0082, $0082, $0082, $0082, $0082
			db DRAGONBREATH, WATERFALL, DOUBLE_EDGE, AGILITY
	db -1 ; end
	
	; COOLTRAINERF (22) - Added to Route 3
	db "ANTONA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, PARASECT
			dw $018D, $018D, $018D, $018D, $018D
			db STUN_SPORE, CUT, GIGA_DRAIN, REFLECT
	db 85, NINETALES
			dw $018D, $018D, $018D, $018D, $018D
			db CONFUSE_RAY, FLAMETHROWER, SHADOW_BALL, TOXIC
	db 86, POLIWRATH
			dw $018D, $018D, $018D, $018D, $018D
			db LOVELY_KISS, SUBMISSION, NIGHTMARE, HYDRO_PUMP
	db -1 ; end

BeautyGroup:
	; BEAUTY (1)
	db "VICTORIA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 26, SENTRET
			dw $0008, $0008, $0008, $0008, $0008
			db SLAM, DEFENSE_CURL, QUICK_ATTACK, FURY_SWIPES
	db 27, WEEPINBELL
			dw $0008, $0008, $0008, $0008, $0008
			db WRAP, ACID, SLEEP_POWDER, VINE_WHIP
	db 28, FURRET
			dw $0008, $0008, $0008, $0008, $0008
			db ROLLOUT, SLAM, DEFENSE_CURL, REVERSAL
	db -1 ; end

	; BEAUTY (2)
	db "SAMANTHA@", TRAINERTYPE_STAT_EXP
	db 26, CLEFFA
			dw $0008, $0008, $0008, $0008, $0008
	db 26, IGGLYBUFF
			dw $0008, $0008, $0008, $0008, $0008
	db 27, BAYLEEF
			dw $0008, $0008, $0008, $0008, $0008
	db 28, PERSIAN
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; BEAUTY (6) ; Moved from subsequent to 1st trip on Fast Ship
	db "CASSIE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 69, BUTTERFREE
			dw $0152, $0152, $0152, $0152, $0152
			db SLEEP_POWDER, GIGA_DRAIN, WHIRLWIND, REFLECT
	db 70, VILEPLUME
			dw $0152, $0152, $0152, $0152, $0152
			db PETAL_DANCE, SLUDGE_BOMB, LEECH_SEED, MOONLIGHT
	db -1 ; end

	; BEAUTY (14)
	db "JULIA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 71, FARFETCH_D
			dw $0169, $0169, $0169, $0169, $0169
			db AGILITY, RAZOR_LEAF, BATON_PASS, RAZOR_WIND
	db 72, CLEFABLE
			dw $0169, $0169, $0169, $0169, $0169
			db MOONLIGHT, RAIN_DANCE, THUNDER, DOUBLE_EDGE
	db 73, VILEPLUME
			dw $0169, $0169, $0169, $0169, $0169
			db MOONLIGHT, SLUDGE_BOMB, STUN_SPORE, RAIN_DANCE
	db 73, POLITOED
			dw $0169, $0169, $0169, $0169, $0169
			db WATERFALL, SWAGGER, COTTON_SPORE, HYPNOSIS
	db -1 ; end

	; BEAUTY (16)
	db "VALERIE@", TRAINERTYPE_STAT_EXP
	db 37, JUMPLUFF
			dw $0020, $0020, $0020, $0020, $0020
	db 37, AZUMARILL
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; BEAUTY (17)
	db "OLIVIA@", TRAINERTYPE_STAT_EXP
	db 36, STARYU
			dw $0020, $0020, $0020, $0020, $0020
	db 37, TANGELA
			dw $0020, $0020, $0020, $0020, $0020
	db 38, CORSOLA
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end
	
	; BEAUTY (18) - Ultimate
	db "MONICA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 37, FARFETCH_D
			dw $0020, $0020, $0020, $0020, $0020
			db SLASH, VINE_WHIP, SWORDS_DANCE, FLY
	db 37, SEAKING
			dw $0020, $0020, $0020, $0020, $0020
			db DRILL_PECK, WATERFALL, HORN_ATTACK, SUPERSONIC
	db 39, SCYTHER
			dw $0020, $0020, $0020, $0020, $0020
			db RAZOR_WIND, FURY_CUTTER, DOUBLE_TEAM, PURSUIT
	db -1 ; end
	
	; BEAUTY (3) - Moved from LASS
	db "ALICE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, BELLOSSOM
			dw $0173, $0173, $0173, $0173, $0173
			db GIGA_DRAIN, PAIN_SPLIT, FIRE_SPIN, SUBSTITUTE
	db 82, ARBOK
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, SLUDGE_BOMB, SUBSTITUTE, GLARE
	db 82, VILEPLUME
			dw $0173, $0173, $0173, $0173, $0173
			db PETAL_DANCE, SLUDGE_BOMB, SLEEP_POWDER, MOONLIGHT
	db -1 ; end

PokemaniacGroup:
	; POKEMANIAC (1)
	db "LARRY@", TRAINERTYPE_STAT_EXP
	db 17, SLOWPOKE
			dw $0002, $0002, $0002, $0002, $0002
	db 18, SUDOWOODO
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; POKEMANIAC (2) - Return to Union Cave with Surf
	db "ANDREW@", TRAINERTYPE_STAT_EXP
	db 36, TENTACOOL
			dw $0020, $0020, $0020, $0020, $0020
	db 37, MAROWAK
			dw $0020, $0020, $0020, $0020, $0020
	db 37, HOUNDOOM
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; POKEMANIAC (3) - Return to Union Cave with Surf
	db "CALVIN@", TRAINERTYPE_STAT_EXP
	db 37, AMPHAROS
			dw $0020, $0020, $0020, $0020, $0020
	db 38, KANGASKHAN
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; POKEMANIAC (4)
	db "SHANE@", TRAINERTYPE_STAT_EXP
	db 45, PHANPY
			dw $006B, $006B, $006B, $006B, $006B
	db 46, MISDREAVUS
			dw $006B, $006B, $006B, $006B, $006B
	db 47, SCIZOR
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; POKEMANIAC (5)
	db "BEN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 48, CHANSEY
			dw $006B, $006B, $006B, $006B, $006B
			db EGG_BOMB, SING, SOFTBOILED, LIGHT_SCREEN
	db 49, SLOWBRO
			dw $006B, $006B, $006B, $006B, $006B
			db PSYCHIC_M, SPIKES, WHIRLPOOL, AMNESIA
	db -1 ; end

	; POKEMANIAC (6) - Rematch
	db "BRENT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 48, LICKITUNG
			dw $006B, $006B, $006B, $006B, $006B
			db SLAM, SWORDS_DANCE, SLUDGE_BOMB, WRAP
	db 48, YANMA
			dw $006B, $006B, $006B, $006B, $006B
			db DRAGONBREATH, LEECH_LIFE, RAZOR_WIND, WHIRLWIND
	db -1 ; end

	; POKEMANIAC (7) - Rematch Trainer
	db "RON@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 48, ELECTABUZZ
			dw $006B, $006B, $006B, $006B, $006B
			db PSYCHIC_M, THUNDERPUNCH, SUBSTITUTE, LIGHT_SCREEN
	db 48, NIDOKING
			dw $006B, $006B, $006B, $006B, $006B
			db EARTHQUAKE, THUNDERBOLT, LOVELY_KISS, SURF
	db -1 ; end

	; POKEMANIAC (8) ; Moved from Fast Ship to Rock Tunnel
	db "ETHAN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 77, SLOWBRO
			dw $0173, $0173, $0173, $0173, $0173
			db WATERFALL, THUNDER_WAVE, AMNESIA, PSYCHIC_M
	db 78, RHYDON
			dw $0173, $0173, $0173, $0173, $0173
			db MEGAHORN, EARTHQUAKE, ROCK_SLIDE, THUNDER
	db -1 ; end

	; POKEMANIAC (9)
	db "BRENT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 55, LICKITUNG
			dw $006B, $006B, $006B, $006B, $006B
			db SLAM, SWORDS_DANCE, SLUDGE_BOMB, WRAP
	db 56, PORYGON2
			dw $006B, $006B, $006B, $006B, $006B
			db RECOVER, PSYCHIC_M, CONVERSION2, TRI_ATTACK
	db -1 ; end

	; POKEMANIAC (10)
	db "BRENT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 67, LICKITUNG
			dw $0159, $0159, $0159, $0159, $0159
			db SLAM, SWORDS_DANCE, SLUDGE_BOMB, EARTHQUAKE
	db 68, BLISSEY
			dw $0159, $0159, $0159, $0159, $0159
			db HEAL_BELL, SUBSTITUTE, EGG_BOMB, SOFTBOILED
	db -1 ; end

	; POKEMANIAC (11)
	db "ISSAC@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 25, SHELLDER
			dw $0008, $0008, $0008, $0008, $0008
			db CLAMP, AURORA_BEAM, SUPERSONIC, PROTECT
	db 25, PIDGEOTTO
			dw $0008, $0008, $0008, $0008, $0008
			db QUICK_ATTACK, SAND_ATTACK, WHIRLWIND, WING_ATTACK
	db 26, LICKITUNG
			dw $0008, $0008, $0008, $0008, $0008
			db CUT, DEFENSE_CURL, ROLLOUT, STOMP
	db -1 ; end

	; POKEMANIAC (12)
	db "DONALD@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 25, SLOWPOKE
			dw $0008, $0008, $0008, $0008, $0008
			db WATER_GUN, CONFUSION, DISABLE, HEADBUTT
	db 25, QUAGSIRE
			dw $0008, $0008, $0008, $0008, $0008
			db MUD_SLAP, HAZE, WATER_GUN, SLAM
	db -1 ; end

	; POKEMANIAC (13)
	db "ZACH@", TRAINERTYPE_STAT_EXP
	db 53, RHYDON
			dw $006B, $006B, $006B, $006B, $006B
	db 52, URSARING
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; POKEMANIAC (14)
	db "BRENT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 78, LICKITUNG
			dw $0173, $0173, $0173, $0173, $0173
			db SLAM, SWORDS_DANCE, SLUDGE_BOMB, EARTHQUAKE
	db 78, BLISSEY
			dw $0173, $0173, $0173, $0173, $0173
			db HEAL_BELL, TOXIC, EGG_BOMB, SOFTBOILED
	db -1 ; end

	; POKEMANIAC (15)
	db "MILLER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 46, NIDOKING
			dw $006B, $006B, $006B, $006B, $006B
			db BODY_SLAM, ICE_BEAM, HORN_DRILL, EARTHQUAKE
	db 46, NIDOQUEEN
			dw $006B, $006B, $006B, $006B, $006B
			db BODY_SLAM, MOONLIGHT, LOVELY_KISS, NIGHTMARE
	db -1 ; end
	
	; POKEMANIAC (16) - Ultimate
	db "SANTOS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 52, SMEARGLE
			dw $006B, $006B, $006B, $006B, $006B
			db SOFTBOILED, NIGHT_SHADE, TAKE_DOWN, SWORDS_DANCE
	db 52, UMBREON
			dw $006B, $006B, $006B, $006B, $006B
			db CHARM, PURSUIT, REST, SLEEP_TALK
	db 53, MISDREAVUS
			dw $006B, $006B, $006B, $006B, $006B
			db PAIN_SPLIT, TOXIC, PROTECT, THUNDER
	db 54, GENGAR
			dw $006B, $006B, $006B, $006B, $006B
			db NIGHT_SHADE, HYPNOSIS, DREAM_EATER, GIGA_DRAIN
	db -1 ; end
	
	; POKEMANIAC (17) ; Added to Rock Tunnel
	db "WINSTON@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 77, MAROWAK
			dw $0173, $0173, $0173, $0173, $0173
			db BONE_RUSH, BONEMERANG, ROCK_SLIDE, SWORDS_DANCE
	db 78, SLOWKING
			dw $0173, $0173, $0173, $0173, $0173
			db SURF, PSYCHIC_M, REST, SLEEP_TALK
	db -1 ; end
	
	; POKEMANIAC (18) ; Added to Rock Tunnel
	db "STEVE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 78, CHARIZARD
			dw $0173, $0173, $0173, $0173, $0173
			db DRAGON_RAGE, FLAMETHROWER, ROCK_SLIDE, FLY
	db 78, KANGASKHAN
			dw $0173, $0173, $0173, $0173, $0173
			db MEGA_PUNCH, EARTHQUAKE, STRENGTH, HYPER_BEAM
	db 79, GENGAR
			dw $0173, $0173, $0173, $0173, $0173
			db ICE_BEAM, PSYCHIC_M, NIGHT_SHADE, HYPNOSIS
	db -1 ; end

GruntMGroup:
	; GRUNTM (1) - Slowpoke Well
	db "GRUNT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 20, MURKROW
			dw $0002, $0002, $0002, $0002, $0002 ; hp, atk, def, spd, spc
			db PECK, FAINT_ATTACK, HAZE, MEAN_LOOK
	db 21, KOFFING
			dw $0002, $0002, $0002, $0002, $0002 ; hp, atk, def, spd, spc
			db SLUDGE, SMOKESCREEN, POISON_GAS, SELFDESTRUCT
	db 21, ARBOK
			dw $0002, $0002, $0002, $0002, $0002 ; hp, atk, def, spd, spc
			db ACID, BITE, GLARE, WRAP
	db -1 ; end

	; GRUNTM (2) - Slowpoke Well
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 18, VENONAT
			dw $0002, $0002, $0002, $0002, $0002
	db 19, RATTATA
			dw $0002, $0002, $0002, $0002, $0002
	db 20, SLOWPOKE
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; GRUNTM (3) - Radio Tower
	db "GRUNT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 50, RATICATE
			dw $006B, $006B, $006B, $006B, $006B
			db BODY_SLAM, SCARY_FACE, SUBSTITUTE, SUPER_FANG
	db 50, RATICATE
			dw $006B, $006B, $006B, $006B, $006B
			db BODY_SLAM, STRENGTH, SCREECH, SUPER_FANG
	db 51, GLIGAR
			dw $006B, $006B, $006B, $006B, $006B
			db EARTHQUAKE, SLASH, WING_ATTACK, SCREECH
	db -1 ; end

	; GRUNTM (4) - Radio Tower
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 50, TENTACOOL
			dw $006B, $006B, $006B, $006B, $006B
	db 51, GRIMER
			dw $006B, $006B, $006B, $006B, $006B
	db 52, MUK
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (5) - Radio Tower
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 50, MEOWTH
			dw $006B, $006B, $006B, $006B, $006B
	db 50, RATTATA
			dw $006B, $006B, $006B, $006B, $006B
	db 51, PERSIAN
			dw $006B, $006B, $006B, $006B, $006B
	db 51, GENGAR
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (6) - Radio Tower
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 50, ZUBAT
			dw $006B, $006B, $006B, $006B, $006B
	db 51, SUDOWOODO
			dw $006B, $006B, $006B, $006B, $006B
	db 51, GOLBAT
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (7) - Radio Tower
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 51, GRANBULL
			dw $006B, $006B, $006B, $006B, $006B
	db 51, NOCTOWL
			dw $006B, $006B, $006B, $006B, $006B
	db 52, ESPEON
			dw $006B, $006B, $006B, $006B, $006B
	db 51, URSARING
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (8) - Radio Tower
	db "GRUNT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 52, PUPITAR
			dw $006B, $006B, $006B, $006B, $006B
			db EARTHQUAKE, ROCK_SLIDE, PURSUIT, SCARY_FACE
	db 53, WEEZING
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, SCREECH, POISON_GAS, FIRE_SPIN
	db -1 ; end

	; GRUNTM (9) - Radio Tower 2
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 54, RATICATE
			dw $006B, $006B, $006B, $006B, $006B
	db 54, ARBOK
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (10) - Radio Tower
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 51, ZUBAT
			dw $006B, $006B, $006B, $006B, $006B
	db 52, FEAROW
			dw $006B, $006B, $006B, $006B, $006B
	db 53, MAROWAK
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (11) - Underground
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 53, MUK
			dw $006B, $006B, $006B, $006B, $006B
	db 53, HOUNDOUR
			dw $006B, $006B, $006B, $006B, $006B
	db 53, SANDSHREW
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (13) - Underground
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 52, RATTATA
			dw $006B, $006B, $006B, $006B, $006B
	db 52, BEEDRILL
			dw $006B, $006B, $006B, $006B, $006B
	db 53, RATICATE
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (14) - Warehouse
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 54, RATICATE
			dw $006B, $006B, $006B, $006B, $006B
	db 54, GOLBAT
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (15) - Warehouse
	db "GRUNT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 53, GRIMER
			dw $006B, $006B, $006B, $006B, $006B
			db EXPLOSION, ACID_ARMOR, SLUDGE_BOMB, SCREECH
	db 54, WEEZING
			dw $006B, $006B, $006B, $006B, $006B
			db SMOKESCREEN, FIRE_SPIN, SLUDGE_BOMB, THUNDER
	db -1 ; end

	; GRUNTM (16) - Hideout
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 47, RATTATA
			dw $006B, $006B, $006B, $006B, $006B
	db 47, GRIMER
			dw $006B, $006B, $006B, $006B, $006B
	db 47, HOUNDOUR
			dw $006B, $006B, $006B, $006B, $006B
	db 48, RATICATE
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (17) - Hideout level 2
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 49, MAROWAK
			dw $006B, $006B, $006B, $006B, $006B
	db 49, GOLBAT
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (18) - Hideout level 2
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 47, NIDORINA
			dw $006B, $006B, $006B, $006B, $006B
	db 47, NIDORINO
			dw $006B, $006B, $006B, $006B, $006B
	db 48, RATICATE
			dw $006B, $006B, $006B, $006B, $006B
	db 48, BEEDRILL
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (19) - Hideout level 2
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 48, VENONAT
			dw $006B, $006B, $006B, $006B, $006B
	db 49, VENOMOTH
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (20) - Hideout Double Rocket (Statues)
	db "GRUNT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 48, DROWZEE
			dw $006B, $006B, $006B, $006B, $006B
			db POISON_GAS, FUTURE_SIGHT, LIGHT_SCREEN, DISABLE
	db 48, GOLBAT
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, WING_ATTACK, LEECH_LIFE, CONFUSE_RAY
	db -1 ; end

	; GRUNTM (21) - Hideout Double Rocket (Statues)
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 46, ZUBAT
			dw $006B, $006B, $006B, $006B, $006B
	db 48, RATICATE
			dw $006B, $006B, $006B, $006B, $006B
	db 47, MUK
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (24) - Warehouse
	db "GRUNT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 53, KOFFING
			dw $006B, $006B, $006B, $006B, $006B
			db EXPLOSION, ACID_ARMOR, SLUDGE_BOMB, SCREECH
	db 53, SHUCKLE
			dw $006B, $006B, $006B, $006B, $006B
			db WITHDRAW, BATON_PASS, ENCORE, SAFEGUARD
	db 53, SANDSLASH
			dw $006B, $006B, $006B, $006B, $006B
			db EARTHQUAKE, IRON_TAIL, ROCK_SLIDE, MUD_SLAP
	db -1 ; end

	; GRUNTM (25) - Underground
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 53, KOFFING
			dw $006B, $006B, $006B, $006B, $006B
	db 54, MUK
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTM (28) - Hideout level 3 (Password guy)
	db "GRUNT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 48, RATICATE
			dw $006B, $006B, $006B, $006B, $006B
			db STRENGTH, SUBSTITUTE, SUPER_FANG, PURSUIT
	db 49, RHYHORN
			dw $006B, $006B, $006B, $006B, $006B
			db EARTHQUAKE, ROCK_SLIDE, MEGAHORN, SUBSTITUTE	
	db -1 ; end

	; GRUNTM (29) - Slowpoke Well
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 19, RATTATA
			dw $0002, $0002, $0002, $0002, $0002
	db 20, RATICATE
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; GRUNTM (31) - Nugget Bridge Rocket
	db "GRUNT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 75, GOLBAT
			dw $0173, $0173, $0173, $0173, $0173
			db TOXIC, REST, SWAGGER, WHIRLWIND
	db 75, RHYDON
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, ROCK_SLIDE, MEGAHORN, SUBSTITUTE
	db 74, RATICATE
			dw $0173, $0173, $0173, $0173, $0173
			db STRENGTH, SUBSTITUTE, SUPER_FANG, PURSUIT
	db 75, MURKROW
			dw $0173, $0173, $0173, $0173, $0173
			db MEAN_LOOK, BEAT_UP, TOXIC, FLY
	db 76, CROBAT
			dw $0173, $0173, $0173, $0173, $0173
			db TOXIC, FLY, SLUDGE_BOMB, HAZE
	db -1 ; end

GentlemanGroup:
	; GENTLEMAN (1)
	db "PRESTON@", TRAINERTYPE_STAT_EXP
	db 40, TOGETIC
			dw $0020, $0020, $0020, $0020, $0020
	db 40, ARCANINE
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; GENTLEMAN (2)
	db "EDWARD@", TRAINERTYPE_STAT_EXP
	db 71, PERSIAN
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; GENTLEMAN (3)
	db "GREGORY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 71, RAICHU
			dw $0152, $0152, $0152, $0152, $0152
			db THUNDER, RAIN_DANCE, SURF, REFLECT
	db 71, AMPHAROS
			dw $0152, $0152, $0152, $0152, $0152
			db THUNDER, COTTON_SPORE, REST, SLEEP_TALK
	db -1 ; end

	; GENTLEMAN (5)
	db "ALFRED@", TRAINERTYPE_STAT_EXP
	db 39, AIPOM
			dw $0020, $0020, $0020, $0020, $0020
	db 39, NOCTOWL
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

SkierGroup:
	; SKIER (1)
	db "ROXANNE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 51, CORSOLA
			dw $006B, $006B, $006B, $006B, $006B
			db WHIRLPOOL, ICE_BEAM, MIRROR_COAT, RECOVER
	db 51, JYNX
			dw $006B, $006B, $006B, $006B, $006B
			db PSYCHIC_M, ICE_BEAM, PERISH_SONG, LOVELY_KISS
	db -1 ; end

	; SKIER (2) - Moved to Ice Path
	db "CLARISSA@", TRAINERTYPE_STAT_EXP
	db 53, CORSOLA
			dw $006B, $006B, $006B, $006B, $006B
	db 53, DEWGONG
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

TeacherGroup:
	; TEACHER (1)
	db "COLETTE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, NINETALES
			dw $0173, $0173, $0173, $0173, $0173
			db HYPNOSIS, FIRE_BLAST, CONFUSE_RAY, DREAM_EATER
	db 82, CLEFABLE
			dw $0173, $0173, $0173, $0173, $0173
			db MOONLIGHT, CHARM, DOUBLE_EDGE, THUNDER
	db -1 ; end

	; TEACHER (2)
	db "HILLARY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, RAPIDASH
			dw $0173, $0173, $0173, $0173, $0173
			db FIRE_BLAST, HI_JUMP_KICK, FIRE_SPIN, TAKE_DOWN
	db 81, AIPOM
			dw $0173, $0173, $0173, $0173, $0173
			db STRENGTH, MEGA_KICK, AGILITY, BATON_PASS
	db 82, MAROWAK
			dw $0173, $0173, $0173, $0173, $0173
			db BONEMERANG, ROCK_SLIDE, SWORDS_DANCE, BONE_RUSH
	db -1 ; end

	; TEACHER (3)
	db "SHIRLEY@", TRAINERTYPE_STAT_EXP
	db 71, WIGGLYTUFF
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end
	
	; TEACHER (4) - Ultimate
	db "TUSCANY@", TRAINERTYPE_NORMAL
	db 5, SENTRET
	db 6, CLEFAIRY
	db -1 ; end
	
	; TEACHER (5) - Added to Route 8
	db "LULU@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 73, POLITOED
			dw $0169, $0169, $0169, $0169, $0169
			db ICE_BEAM, HYDRO_PUMP, GIGA_DRAIN, PERISH_SONG
	db 72, PERSIAN
			dw $0169, $0169, $0169, $0169, $0169
			db CRUNCH, HYPER_BEAM, HYPNOSIS, DREAM_EATER
	db 72, DODRIO
			dw $0169, $0169, $0169, $0169, $0169
			db DRILL_PECK, TRI_ATTACK, DOUBLE_TEAM, HI_JUMP_KICK
	db -1 ; end
	
	; TEACHER (6) - Added to Route 13
	db "PIPER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, HYPNO
			dw $0173, $0173, $0173, $0173, $0173
			db PSYCHIC_M, POISON_GAS, LIGHT_SCREEN, SEISMIC_TOSS
	db 81, MEGANIUM
			dw $0173, $0173, $0173, $0173, $0173
			db RAZOR_LEAF, REFLECT, LEECH_SEED, SLEEP_POWDER
	db -1 ; end
	
	; TEACHER (7) - Added to Route 13
	db "GINGER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, GIRAFARIG
			dw $0173, $0173, $0173, $0173, $0173
			db PSYCHIC_M, CRUNCH, AGILITY, BATON_PASS
	db 82, BLISSEY
			dw $0173, $0173, $0173, $0173, $0173
			db THUNDER, SING, FLAMETHROWER, SOFTBOILED
	db -1 ; end
	
	; TEACHER (8) - Added to Route 15
	db "CLARICE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, SUNFLORA
			dw $0173, $0173, $0173, $0173, $0173
			db SUNNY_DAY, SOLARBEAM, FLAMETHROWER, SYNTHESIS
	db 82, WIGGLYTUFF
			dw $0173, $0173, $0173, $0173, $0173
			db BODY_SLAM, REST, FLAMETHROWER, SOLARBEAM
	db -1 ; end
	
	; TEACHER (9) - Route 6, moved from PICNICKER
	db "SELINA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 72, CLEFABLE
			dw $0169, $0169, $0169, $0169, $0169
			db MOONLIGHT, CHARM, BELLY_DRUM, DOUBLE_EDGE
	db 72, JUMPLUFF
			dw $0169, $0169, $0169, $0169, $0169
			db SLEEP_POWDER, GIGA_DRAIN, LEECH_SEED, FLY
	db -1 ; end

SabrinaGroup:
	; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 83, MR__MIME
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db QUICK_CLAW
			db HYPNOSIS, THUNDER, BARRIER, BATON_PASS
	db 84, HYPNO
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db LEFTOVERS
			db SEISMIC_TOSS, PSYCH_UP, PSYCHIC_M, POISON_GAS
	db 83, EXEGGUTOR
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db MIRACLE_SEED
			db STUN_SPORE, LEECH_SEED, GIGA_DRAIN, PSYCHIC_M
	db 83, MAGMAR
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db SCOPE_LENS
			db FIRE_BLAST, CROSS_CHOP, PSYCHIC_M, BARRIER
	db 84, SLOWBRO
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db MYSTIC_WATER
			db PSYCH_UP, PSYCHIC_M, SURF, THUNDER_WAVE
	db 85, ALAKAZAM
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db TWISTEDSPOON
			db PSYCHIC_M, PSYCH_UP, RECOVER, FIRE_PUNCH
	db -1 ; end

BugCatcherGroup:
	; BUG_CATCHER (1)
	db "DON@", TRAINERTYPE_NORMAL
	db  6, CATERPIE
	db  6, SENTRET
	db  7, SPINARAK
	db -1 ; end

	; BUG_CATCHER (2)
	db "ROB@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 83, BUTTERFREE
			dw $018D, $018D, $018D, $018D, $018D
			db STUN_SPORE, PSYCHIC_M, GIGA_DRAIN, REFLECT
	db 83, BEEDRILL
			dw $018D, $018D, $018D, $018D, $018D
			db SLUDGE_BOMB, TWINEEDLE, SWORDS_DANCE, HYPER_BEAM
	db -1 ; end

	; BUG_CATCHER (3)
	db "ED@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 84, BEEDRILL
			dw $018D, $018D, $018D, $018D, $018D
			db SLUDGE_BOMB, TWINEEDLE, SWORDS_DANCE, HYPER_BEAM
	db 85, PINSIR
			dw $018D, $018D, $018D, $018D, $018D
			db CUT, ROCK_SLIDE, SWORDS_DANCE, SUBMISSION
	db 84, BEEDRILL
			dw $018D, $018D, $018D, $018D, $018D
			db SLUDGE_BOMB, TWINEEDLE, SWORDS_DANCE, HYPER_BEAM
	db -1 ; end

	; BUG_CATCHER (4) - Rematch Trainer
	db "WADE@", TRAINERTYPE_NORMAL
	db  5, CATERPIE
	db  5, CATERPIE
	db  6, WEEDLE
	db  8, METAPOD
	db -1 ; end

	; BUG_CATCHER (5)
	db "BENNY@", TRAINERTYPE_STAT_EXP
	db 20, YANMA
			dw $0002, $0002, $0002, $0002, $0002
	db 20, PARAS
			dw $0002, $0002, $0002, $0002, $0002
	db 22, LEDIAN
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; BUG_CATCHER (6)
	db "AL@", TRAINERTYPE_STAT_EXP
	db 19, KAKUNA
			dw $0002, $0002, $0002, $0002, $0002
	db 20, BUTTERFREE
			dw $0002, $0002, $0002, $0002, $0002
	db 21, SKIPLOOM
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; BUG_CATCHER (7)
	db "JOSH@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 21, PARAS
			dw $0002, $0002, $0002, $0002, $0002
			db CUT, SPORE, STUN_SPORE, ABSORB
	db 22, HERACROSS
			dw $0002, $0002, $0002, $0002, $0002
			db LEER, VITAL_THROW, ENDURE, HORN_ATTACK
	db -1 ; end

	; BUG_CATCHER (8) - Rematch Trainer
	db "ARNIE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 28, VENONAT
			dw $0008, $0008, $0008, $0008, $0008
			db STUN_SPORE, PSYBEAM, SUPERSONIC, SLUDGE
	db 28, PINECO
			dw $0008, $0008, $0008, $0008, $0008
			db SELFDESTRUCT, BIDE, PIN_MISSILE, TAKE_DOWN
	db 29, VENOMOTH
			dw $0008, $0008, $0008, $0008, $0008
			db PSYBEAM, LEECH_LIFE, RAZOR_WIND, SLUDGE
	db -1 ; end

	; BUG_CATCHER (9)
	db "KEN@", TRAINERTYPE_STAT_EXP
	db 70, ARIADOS
			dw $0152, $0152, $0152, $0152, $0152
	db 70, PINSIR
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; BUG_CATCHER (10) - Rematch
	db "WADE@", TRAINERTYPE_NORMAL
	db  9, METAPOD
	db 10, METAPOD
	db 10, KAKUNA
	db 11, BUTTERFREE
	db -1 ; end

	; BUG_CATCHER (11) - Rematch
	db "WADE@", TRAINERTYPE_STAT_EXP
	db 17, METAPOD
			dw $0002, $0002, $0002, $0002, $0002
	db 17, BUTTERFREE
			dw $0002, $0002, $0002, $0002, $0002
	db 18, BUTTERFREE
			dw $0002, $0002, $0002, $0002, $0002
	db 19, BEEDRILL
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; BUG_CATCHER (12)
	db "DOUG@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 83, YANMA
			dw $018D, $018D, $018D, $018D, $018D
			db DRAGONBREATH, LEECH_LIFE, RAZOR_WIND, WHIRLWIND
	db 84, ARIADOS
			dw $018D, $018D, $018D, $018D, $018D
			db SLUDGE_BOMB, LEECH_LIFE, SPIDER_WEB, HYPER_BEAM
	db -1 ; end

	; BUG_CATCHER (13)
	db "ARNIE@", TRAINERTYPE_STAT_EXP
	db 34, FORRETRESS
			dw $000C, $000C, $000C, $000C, $000C
	db 35, VENOMOTH
			dw $000C, $000C, $000C, $000C, $000C
	db 36, VENOMOTH
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; BUG_CATCHER (14)
	db "ARNIE@", TRAINERTYPE_STAT_EXP
	db 41, VENOMOTH
			dw $0020, $0020, $0020, $0020, $0020
	db 41, FORRETRESS
			dw $0020, $0020, $0020, $0020, $0020
	db 42, VENOMOTH
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; BUG_CATCHER (15) - Rematch
	db "WADE@", TRAINERTYPE_STAT_EXP
	db 26, BUTTERFREE
			dw $0008, $0008, $0008, $0008, $0008
	db 27, BUTTERFREE
			dw $0008, $0008, $0008, $0008, $0008
	db 27, BEEDRILL
			dw $0008, $0008, $0008, $0008, $0008
	db 28, BUTTERFREE
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; BUG_CATCHER (16) - Rematch
	db "WADE@", TRAINERTYPE_STAT_EXP
	db 38, BUTTERFREE
			dw $0020, $0020, $0020, $0020, $0020
	db 39, BUTTERFREE
			dw $0020, $0020, $0020, $0020, $0020
	db 39, BEEDRILL
			dw $0020, $0020, $0020, $0020, $0020
	db 40, BEEDRILL
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; BUG_CATCHER (17)
	db "ARNIE@", TRAINERTYPE_STAT_EXP
	db 48, VENOMOTH
			dw $006B, $006B, $006B, $006B, $006B
	db 49, FORRETRESS
			dw $006B, $006B, $006B, $006B, $006B
	db 50, VENOMOTH
			dw $006B, $006B, $006B, $006B, $006B
			
	db -1 ; end

	; BUG_CATCHER (18)
	db "ARNIE@", TRAINERTYPE_STAT_EXP
	db 55, FORRETRESS
			dw $006B, $006B, $006B, $006B, $006B
	db 55, VENOMOTH
			dw $006B, $006B, $006B, $006B, $006B
	db 56, VENOMOTH
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; BUG_CATCHER (19) - Ilex
	db "WAYNE@", TRAINERTYPE_STAT_EXP
	db 22, LEDIAN
			dw $0008, $0008, $0008, $0008, $0008
	db 22, PARAS
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end
	
	; BUG_CATCHER (20)
	db "TOBIAS@", TRAINERTYPE_STAT_EXP
	db 21, KAKUNA
			dw $0008, $0008, $0008, $0008, $0008
	db 22, PINECO
			dw $0008, $0008, $0008, $0008, $0008
	db 23, BUTTERFREE
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end
	
	; BUG_CATCHER (21) - Ultimate
	db "ADAM@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 23, SPINARAK
			dw $0008, $0008, $0008, $0008, $0008
			db ACID, NIGHT_SHADE, SPIDER_WEB, LEECH_LIFE
	db 23, SUDOWOODO
			dw $0008, $0008, $0008, $0008, $0008
			db ROCK_THROW, FLAIL, LOW_KICK, LEECH_SEED
	db 24, PARASECT
			dw $0008, $0008, $0008, $0008, $0008
			db SPORE, MEGA_DRAIN, LEECH_LIFE, SLASH
	db -1 ; end
	
	; BUG_CATCHER (22) - Ultimate
	db "SUNNY@", TRAINERTYPE_STAT_EXP
	db 33, PIKACHU
			dw $000C, $000C, $000C, $000C, $000C
	db 32, YANMA
			dw $000C, $000C, $000C, $000C, $000C
	db 33, AMPHAROS
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end
	
	; BUG_CATCHER (23) - Route 6
	db "DAY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 70, PIKACHU
			dw $0169, $0169, $0169, $0169, $0169
			db THUNDER, LIGHT_SCREEN, SING, SURF
	db 71, PARASECT
			dw $0169, $0169, $0169, $0169, $0169
			db STUN_SPORE, GIGA_DRAIN, CUT, SPORE
	db 72, VENOMOTH
			dw $0169, $0169, $0169, $0169, $0169
			db SLEEP_POWDER, SLUDGE_BOMB, LEECH_LIFE, PSYCHIC_M
	db -1 ; end
	
	; BUG_CATCHER (24) - Added to Viridian Forest
	db "DANE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 83, PARASECT
			dw $018D, $018D, $018D, $018D, $018D
			db STUN_SPORE, GIGA_DRAIN, CUT, SPORE
	db 83, LEDIAN
			dw $018D, $018D, $018D, $018D, $018D
			db COMET_PUNCH, ICE_PUNCH, RAZOR_WIND, FURY_CUTTER
	db 83, VENOMOTH
			dw $018D, $018D, $018D, $018D, $018D
			db SLEEP_POWDER, SLUDGE_BOMB, LEECH_LIFE, PSYCHIC_M
	db -1 ; end
	
	; BUG_CATCHER (25) - Added to Viridian Forest
	db "DION@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 84, SHUCKLE
			dw $018D, $018D, $018D, $018D, $018D
			db WITHDRAW, BATON_PASS, ENCORE, TOXIC
	db 84, SCYTHER
			dw $018D, $018D, $018D, $018D, $018D
			db CUT, LIGHT_SCREEN, SWORDS_DANCE, RAZOR_WIND
	db -1 ; end
	
	; BUG_CATCHER (26) - Added to Viridian Forest
	db "ELLIS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 83, FORRETRESS
			dw $018D, $018D, $018D, $018D, $018D
			db SPIKE_CANNON, EXPLOSION, SPIKES, PIN_MISSILE
	db 83, YANMA
			dw $018D, $018D, $018D, $018D, $018D
			db DRAGONBREATH, LEECH_LIFE, RAZOR_WIND, WHIRLWIND
	db 83, BUTTERFREE
			dw $018D, $018D, $018D, $018D, $018D
			db GIGA_DRAIN, PSYCHIC_M, SLEEP_POWDER, NIGHTMARE
	db 84, ARIADOS
			dw $018D, $018D, $018D, $018D, $018D
			db SLUDGE_BOMB, LEECH_LIFE, SPIDER_WEB, FURY_CUTTER
	db -1 ; end
	
	; BUG_CATCHER (27) - Added to Viridian Forest
	db "ABNER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 84, RAICHU
			dw $018D, $018D, $018D, $018D, $018D
			db THUNDERBOLT, SURF, THUNDER_WAVE, SING
	db 84, SCIZOR
			dw $018D, $018D, $018D, $018D, $018D
			db CUT, STEEL_WING, SWORDS_DANCE, SUBSTITUTE
	db 84, HERACROSS
			dw $018D, $018D, $018D, $018D, $018D
			db MEGAHORN, SUBMISSION, ROCK_SLIDE, SEISMIC_TOSS
	db -1 ; end
	
	; BUG_CATCHER (28) - Added to Route 28
	db "DARIMI@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 91, HERACROSS
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db EARTHQUAKE, SUBMISSION, MEGAHORN, COUNTER
	db 91, YANMA
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db DRAGONBREATH, LEECH_LIFE, RAZOR_WIND, WHIRLWIND
	db 92, PINSIR
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db ROCK_SLIDE, MEGAHORN, SUBMISSION, SWORDS_DANCE
	db 92, SHUCKLE
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db DEFENSE_CURL, TOXIC, ROLLOUT, REST
	db -1 ; end
	
SuperNerdGroup:
	; SUPER_NERD (1) Previously unused, now in Slowpoke Well
	db "STAN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 37, POLITOED
			dw $0020, $0020, $0020, $0020, $0020
			db SWAGGER, SURF, COTTON_SPORE, RAIN_DANCE
	db 38, LAPRAS
			dw $0020, $0020, $0020, $0020, $0020
			db ICE_BEAM, SURF, CONFUSE_RAY, RAIN_DANCE
	db 37, VILEPLUME
			dw $0020, $0020, $0020, $0020, $0020
			db MOONLIGHT, ACID, SLEEP_POWDER, MEGA_DRAIN
	db -1 ; end

	; SUPER_NERD (2)
	db "ERIC@", TRAINERTYPE_STAT_EXP
	db 24, GRIMER
			dw $0008, $0008, $0008, $0008, $0008
	db 25, KOFFING
			dw $0008, $0008, $0008, $0008, $0008
	db 25, GOLBAT
			dw $0008, $0008, $0008, $0008, $0008
	db 25, GRIMER
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; SUPER_NERD (6)
	db "SAM@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 71, QWILFISH
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, WHIRLPOOL, EXPLOSION, SPIKES
	db 72, VENOMOTH
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, PSYCHIC_M, LEECH_LIFE, REFLECT
	db 73, WEEZING
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, FIRE_BLAST, DESTINY_BOND, FIRE_SPIN
	db -1 ; end

	; SUPER_NERD (7)
	db "TOM@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 72, MAGNETON
			dw $0169, $0169, $0169, $0169, $0169
			db THUNDERBOLT, CONFUSE_RAY, THUNDER_WAVE, TRI_ATTACK
	db 72, ELECTRODE
			dw $0169, $0169, $0169, $0169, $0169
			db GIGA_DRAIN, REFLECT, THUNDER, EXPLOSION
	db 73, FORRETRESS
			dw $0169, $0169, $0169, $0169, $0169
			db SPIKE_CANNON, EXPLOSION, CURSE, TOXIC
	db 73, MAGNETON
			dw $0169, $0169, $0169, $0169, $0169
			db THUNDERBOLT, CONFUSE_RAY, THUNDER_WAVE, SUBSTITUTE
	db -1 ; end

	; SUPER_NERD (8)
	db "PAT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 76, DEWGONG
			dw $0173, $0173, $0173, $0173, $0173
			db SURF, ICE_BEAM, REST, SLEEP_TALK
	db 77, PORYGON2
			dw $0173, $0173, $0173, $0173, $0173
			db RECOVER, PSYCHIC_M, THUNDER, TRI_ATTACK
	db -1 ; end

	; SUPER_NERD (9) ; Moved from Fast Ship to Rock Tunnel
	db "SHAWN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 78, MUK
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, GIGA_DRAIN, EXPLOSION, POISON_GAS
	db 78, MAGNETON
			dw $0173, $0173, $0173, $0173, $0173
			db THUNDERBOLT, SUBSTITUTE, CONFUSE_RAY, THUNDER_WAVE
	db 78, SLOWBRO
			dw $0173, $0173, $0173, $0173, $0173
			db SURF, PSYCHIC_M, REST, SLEEP_TALK
	db -1 ; end

	; SUPER_NERD (10)
	db "TERU@", TRAINERTYPE_STAT_EXP
	db 23, MAGNEMITE
			dw $0008, $0008, $0008, $0008, $0008
	db 23, SLUGMA
			dw $0008, $0008, $0008, $0008, $0008
	db 23, VOLTORB
			dw $0008, $0008, $0008, $0008, $0008
	db 24, MAGNEMITE
			dw $0008, $0008, $0008, $0008, $0008
	db 24, AZUMARILL
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; SUPER_NERD (13)
	db "HUGH@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 58, SEADRA
			dw $0082, $0082, $0082, $0082, $0082
			db WATERFALL, SMOKESCREEN, DRAGONBREATH, ICE_BEAM
	db 58, URSARING
			dw $0082, $0082, $0082, $0082, $0082
			db EARTHQUAKE, STRENGTH, REST, SNORE
	db 59, GIRAFARIG
			dw $0082, $0082, $0082, $0082, $0082
			db PSYCHIC_M, THUNDER, AGILITY, CRUNCH
	db -1 ; end

	; SUPER_NERD (14)
	db "MARKUS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 45, MURKROW
			dw $006B, $006B, $006B, $006B, $006B
			db MEAN_LOOK, FAINT_ATTACK, NIGHT_SHADE, FLY
	db 46, SLOWKING
			dw $006B, $006B, $006B, $006B, $006B
			db PSYCHIC_M, SPIKES, WHIRLPOOL, DISABLE
	db -1 ; end
	
	; SUPER_NERD (15) - New Victory Road trainer
	db "BRADY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 61, STEELIX
			dw $0082, $0082, $0082, $0082, $0082
			db EARTHQUAKE, IRON_TAIL, ROCK_SLIDE, EXPLOSION
	db 62, MACHAMP
			dw $0082, $0082, $0082, $0082, $0082
			db CROSS_CHOP, EARTHQUAKE, CURSE, ROCK_SLIDE
	db 61, MILTANK
			dw $0082, $0082, $0082, $0082, $0082
			db STRENGTH, MILK_DRINK, ROLLOUT, DEFENSE_CURL
	db 63, HOUNDOOM
			dw $0082, $0082, $0082, $0082, $0082
			db CRUNCH, FIRE_BLAST, PURSUIT, COUNTER
	db -1 ; end
	
	; SUPER_NERD (16) - Ultimate
	db "WESLEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 46, MISDREAVUS
			dw $006B, $006B, $006B, $006B, $006B
			db MEAN_LOOK, PAIN_SPLIT, CONFUSE_RAY, NIGHT_SHADE
	db 46, AZUMARILL
			dw $006B, $006B, $006B, $006B, $006B
			db HYDRO_PUMP, STRENGTH, WHIRLPOOL, DOUBLE_EDGE
	db 47, MR__MIME
			dw $006B, $006B, $006B, $006B, $006B
			db PSYCHIC_M, ICE_PUNCH, REFLECT, ENCORE
	db 48, PRIMEAPE
			dw $006B, $006B, $006B, $006B, $006B
			db SUBMISSION, SEISMIC_TOSS, MEDITATE, MUD_SLAP
	db -1 ; end
	
	; SUPER_NERD (17) - Added to Seafoam Gym
	db "CARY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, KINGDRA
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SURF, OUTRAGE, REST, SLEEP_TALK
	db 85, MUK
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SLUDGE_BOMB, GIGA_DRAIN, EXPLOSION, POISON_GAS
	db 86, SLOWBRO
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db AMNESIA, PSYCHIC_M, WATERFALL, ICE_BEAM
	db -1 ; end
	
	; SUPER_NERD (18) - Added to Viridian Gym
	db "DYLAN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 86, KANGASKHAN
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db MEGA_PUNCH, EARTHQUAKE, STRENGTH, HYPER_BEAM
	db 86, GOLEM
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db EARTHQUAKE, FIRE_BLAST, EXPLOSION, ROCK_SLIDE
	db 88, VILEPLUME
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db RAIN_DANCE, MOONLIGHT, GIGA_DRAIN, SLUDGE_BOMB
	db 87, DRAGONITE
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db OUTRAGE, THUNDER, FLY, SURF
	db 88, GENGAR
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db DREAM_EATER, THUNDER, HYPNOSIS, NIGHT_SHADE
	db -1 ; end
	
SECTION "Enemy Trainer Parties 2", ROMX

FisherGroup:
	; FISHER (1)
	db "JUSTIN@", TRAINERTYPE_STAT_EXP
	db 13, MAGIKARP
			dw $0002, $0002, $0002, $0002, $0002
	db 14, REMORAID
			dw $0002, $0002, $0002, $0002, $0002
	db 14, CHINCHOU
			dw $0002, $0002, $0002, $0002, $0002
	db 16, PSYDUCK
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; FISHER (2) - Rematch Trainer
	db "RALPH@", TRAINERTYPE_STAT_EXP
	db 15, GOLDEEN
			dw $0002, $0002, $0002, $0002, $0002
	db 15, TOTODILE
			dw $0002, $0002, $0002, $0002, $0002
	db 17, WARTORTLE
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; FISHER (3)
	db "ARNOLD@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, KABUTOPS
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db WATERFALL, EARTHQUAKE, ROCK_SLIDE, CUT
	db 86, TENTACRUEL
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db BARRIER, SLUDGE_BOMB, SUBSTITUTE, HYDRO_PUMP
	db -1 ; end

	; FISHER (4)
	db "KYLE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, CORSOLA
			dw $0173, $0173, $0173, $0173, $0173
			db BLIZZARD, SPIKES, MIRROR_COAT, RECOVER
	db 80, SEAKING
			dw $0173, $0173, $0173, $0173, $0173
			db MEGAHORN, DRILL_PECK, SURF, DOUBLE_EDGE
	db 81, POLIWRATH
			dw $0173, $0173, $0173, $0173, $0173
			db LOVELY_KISS, SUBMISSION, DREAM_EATER, HYDRO_PUMP
	db -1 ; end

	; FISHER (5)
	db "HENRY@", TRAINERTYPE_STAT_EXP
	db 14, POLIWAG
			dw $0002, $0002, $0002, $0002, $0002
	db 15, MARILL
			dw $0002, $0002, $0002, $0002, $0002
	db 17, QWILFISH
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; FISHER (6)
	db "MARVIN@", TRAINERTYPE_STAT_EXP
	db 46, MAGIKARP
			dw $006B, $006B, $006B, $006B, $006B
	db 47, GOLDEEN
			dw $006B, $006B, $006B, $006B, $006B
	db 48, GYARADOS
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; FISHER (7) - Rematch
	db "TULLY@", TRAINERTYPE_STAT_EXP
	db 45, SEAKING
			dw $006B, $006B, $006B, $006B, $006B
	db 45, LANTURN
			dw $006B, $006B, $006B, $006B, $006B
	db 47, QWILFISH
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; FISHER (8)
	db "ANDRE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 50, POLIWHIRL
			dw $006B, $006B, $006B, $006B, $006B
			db HYDRO_PUMP, LOVELY_KISS, BODY_SLAM, WATERFALL
	db 51, GYARADOS
			dw $006B, $006B, $006B, $006B, $006B
			db DRAGONBREATH, WATERFALL, THUNDER, BODY_SLAM
	db -1 ; end

	; FISHER (9)
	db "RAYMOND@", TRAINERTYPE_STAT_EXP
	db 49, DRATINI
			dw $006B, $006B, $006B, $006B, $006B
	db 50, MAGIKARP
			dw $006B, $006B, $006B, $006B, $006B
	db 51, MAGIKARP
			dw $006B, $006B, $006B, $006B, $006B
	db 50, GYARADOS
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; FISHER (10) - Rematch Trainer
	db "WILTON@", TRAINERTYPE_STAT_EXP
	db 51, GOLDEEN
			dw $006B, $006B, $006B, $006B, $006B
	db 52, OCTILLERY
			dw $006B, $006B, $006B, $006B, $006B
	db 53, SEAKING
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; FISHER (11)
	db "EDGAR@", TRAINERTYPE_STAT_EXP
	db 52, POLIWRATH
			dw $006B, $006B, $006B, $006B, $006B
	db 52, OCTILLERY
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; FISHER (12)
	db "JONAH@", TRAINERTYPE_STAT_EXP
	db 68, SHELLDER
			dw $0152, $0152, $0152, $0152, $0152
	db 70, OCTILLERY
			dw $0152, $0152, $0152, $0152, $0152
	db 68, REMORAID
			dw $0152, $0152, $0152, $0152, $0152
	db 70, CLOYSTER
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; FISHER (13)
	db "MARTIN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, OCTILLERY
			dw $0173, $0173, $0173, $0173, $0173
			db OCTAZOOKA, SURF, REST, SLEEP_TALK
	db 81, OCTILLERY
			dw $0173, $0173, $0173, $0173, $0173
			db SURF, FLAMETHROWER, REST, SLEEP_TALK
	db -1 ; end

	; FISHER (14)
	db "STEPHEN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 79, MAGIKARP
			dw $0173, $0173, $0173, $0173, $0173
			db SPLASH, TACKLE, FLAIL, NO_MOVE
	db 80, QWILFISH
			dw $0173, $0173, $0173, $0173, $0173
			db HYDRO_PUMP, SLUDGE_BOMB, HAZE, SWAGGER
	db 80, TENTACRUEL
			dw $0173, $0173, $0173, $0173, $0173
			db SWORDS_DANCE, SLUDGE_BOMB, SUBSTITUTE, HYDRO_PUMP
	db -1 ; end

	; FISHER (15)
	db "BARNEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, KINGDRA
			dw $0173, $0173, $0173, $0173, $0173
			db SURF, DRAGONBREATH, REST, SLEEP_TALK
	db 80, GYARADOS
			dw $0173, $0173, $0173, $0173, $0173
			db OUTRAGE, REST, HYDRO_PUMP, SLEEP_TALK
	db -1 ; end

	; FISHER (16) - Rematch
	db "RALPH@", TRAINERTYPE_STAT_EXP
	db 25, GOLDEEN
			dw $0008, $0008, $0008, $0008, $0008
	db 26, CROCONAW
			dw $0008, $0008, $0008, $0008, $0008
	db 27, WARTORTLE
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; FISHER (17) - Rematch
	db "RALPH@", TRAINERTYPE_STAT_EXP
	db 33, SEAKING
			dw $000C, $000C, $000C, $000C, $000C
	db 33, WARTORTLE
			dw $000C, $000C, $000C, $000C, $000C
	db 34, FERALIGATR
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; FISHER (18)
	db "TULLY@", TRAINERTYPE_STAT_EXP
	db 54, LANTURN
			dw $006B, $006B, $006B, $006B, $006B
	db 54, QWILFISH
			dw $006B, $006B, $006B, $006B, $006B
	db 56, SEAKING
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; FISHER (19)
	db "TULLY@", TRAINERTYPE_STAT_EXP
	db 66, LANTURN
			dw $0159, $0159, $0159, $0159, $0159
	db 68, QWILFISH
			dw $0159, $0159, $0159, $0159, $0159
	db 67, SEAKING
			dw $0159, $0159, $0159, $0159, $0159
	db -1 ; end

	; FISHER (20) - Rematch
	db "WILTON@", TRAINERTYPE_STAT_EXP
	db 66, SEAKING
			dw $0159, $0159, $0159, $0159, $0159
	db 66, OCTILLERY
			dw $0159, $0159, $0159, $0159, $0159
	db 67, SEAKING
			dw $0159, $0159, $0159, $0159, $0159
	db 69, STARMIE
			dw $0159, $0159, $0159, $0159, $0159
	db -1 ; end

	; FISHER (21)
	db "SCOTT@", TRAINERTYPE_STAT_EXP
	db 58, QWILFISH
			dw $0082, $0082, $0082, $0082, $0082
	db 59, MANTINE
			dw $0082, $0082, $0082, $0082, $0082
	db 60, SEAKING
			dw $0082, $0082, $0082, $0082, $0082
	db -1 ; end

	; FISHER (22) - Rematch
	db "WILTON@", TRAINERTYPE_STAT_EXP
	db 75, SEAKING
			dw $0173, $0173, $0173, $0173, $0173
	db 76, OCTILLERY
			dw $0173, $0173, $0173, $0173, $0173
	db 76, SEAKING
			dw $0173, $0173, $0173, $0173, $0173
	db 78, STARMIE
			dw $0173, $0173, $0173, $0173, $0173
	db -1 ; end

	; FISHER (23)
	db "RALPH@", TRAINERTYPE_STAT_EXP
	db 40, BLASTOISE
			dw $0020, $0020, $0020, $0020, $0020
	db 40, SEAKING
			dw $0020, $0020, $0020, $0020, $0020
	db 41, FERALIGATR
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; FISHER (24)
	db "RALPH@", TRAINERTYPE_STAT_EXP
	db 47, SEAKING
			dw $006B, $006B, $006B, $006B, $006B
	db 48, FERALIGATR
			dw $006B, $006B, $006B, $006B, $006B
	db 49, BLASTOISE
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; FISHER (25) - Rematch
	db "TULLY@", TRAINERTYPE_STAT_EXP
	db 76, LANTURN
			dw $0173, $0173, $0173, $0173, $0173
	db 77, QWILFISH
			dw $0173, $0173, $0173, $0173, $0173
	db 77, SEAKING
			dw $0173, $0173, $0173, $0173, $0173
	db -1 ; end
	
	; FISHER (26) - Added to Route 12
	db "KYLER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, KINGDRA
			dw $0173, $0173, $0173, $0173, $0173
			db SURF, DRAGONBREATH, REST, SLEEP_TALK
	db 80, KINGLER
			dw $0173, $0173, $0173, $0173, $0173
			db CRABHAMMER, VICEGRIP, ROCK_SLIDE, BODY_SLAM
	db 81, VAPOREON
			dw $0173, $0173, $0173, $0173, $0173
			db BLIZZARD, SURF, SLEEP_TALK, REST
	db -1 ; end
	
	; FISHER (27) - Added to Route 20
	db "MURPHY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, QWILFISH
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SLUDGE_BOMB, HYDRO_PUMP, EXPLOSION, SPIKES
	db 85, FERALIGATR
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db WATERFALL, CRUNCH, HYDRO_PUMP, BLIZZARD
	db 86, GYARADOS
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db HYDRO_PUMP, DRAGON_RAGE, THUNDER, FLY
	db -1 ; end
	
	; FISHER (28) - Added to Route 28
	db "WILKINSON@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 91, SEADRA
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db HYDRO_PUMP, SMOKESCREEN, BLIZZARD, DRAGONBREATH
	db 91, OCTILLERY
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db SURF, ICE_BEAM, FLAMETHROWER, OCTAZOOKA
	db 92, SEAKING
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db MEGAHORN, DRILL_PECK, SURF, WHIRLPOOL
	db 92, GYARADOS
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db OUTRAGE, THUNDER, EARTHQUAKE, ICE_BEAM
	db -1 ; end

SwimmerMGroup:
	; SWIMMERM (1)
	db "HAROLD@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 83, LANTURN
			dw $018D, $018D, $018D, $018D, $018D
			db HYDRO_PUMP, THUNDER_WAVE, CONFUSE_RAY, THUNDERBOLT
	db 83, OCTILLERY
			dw $018D, $018D, $018D, $018D, $018D
			db SURF, ICE_BEAM, FLAMETHROWER, BEAT_UP
	db 84, KINGDRA
			dw $018D, $018D, $018D, $018D, $018D
			db SURF, OUTRAGE, REST, SLEEP_TALK
	db -1 ; end

	; SWIMMERM (2)
	db "SIMON@", TRAINERTYPE_STAT_EXP
	db 40, TENTACOOL
			dw $0020, $0020, $0020, $0020, $0020
	db 40, TENTACRUEL
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SWIMMERM (3)
	db "RANDALL@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 39, SHELLDER
			dw $0020, $0020, $0020, $0020, $0020
			db CLAMP, ICE_BEAM, SUPERSONIC, PROTECT
	db 39, WARTORTLE
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, RAIN_DANCE, SKULL_BASH, SWAGGER
	db 40, BLASTOISE
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, SPIKE_CANNON, MEGA_PUNCH, SWAGGER
	db -1 ; end

	; SWIMMERM (4)
	db "CHARLIE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 39, SEEL
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, ICE_BEAM, TAKE_DOWN, SAFEGUARD
	db 40, POLIWHIRL
			dw $0020, $0020, $0020, $0020, $0020
			db HYDRO_PUMP, LOVELY_KISS, BODY_SLAM, WATERFALL
	db 41, SLOWBRO
			dw $0020, $0020, $0020, $0020, $0020
			db WHIRLPOOL, CONFUSION, AMNESIA, DISABLE
	db -1 ; end

	; SWIMMERM (5)
	db "GEORGE@", TRAINERTYPE_STAT_EXP
	db 38, REMORAID
			dw $0020, $0020, $0020, $0020, $0020
	db 38, TENTACOOL
			dw $0020, $0020, $0020, $0020, $0020
	db 39, MANTINE
			dw $0020, $0020, $0020, $0020, $0020
	db 40, OCTILLERY
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SWIMMERM (6)
	db "BERKE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 41, QWILFISH
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, SPIKES, SLUDGE_BOMB, MINIMIZE
	db 42, FERALIGATR
			dw $0020, $0020, $0020, $0020, $0020
			db WATERFALL, CRUNCH, SCARY_FACE, RAZOR_WIND
	db -1 ; end

	; SWIMMERM (7)
	db "KIRK@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 39, MAGIKARP
			dw $0020, $0020, $0020, $0020, $0020
			db SPLASH, TACKLE, FLAIL, NO_MOVE
	db 40, MAGIKARP
			dw $0020, $0020, $0020, $0020, $0020
			db SPLASH, TACKLE, FLAIL, NO_MOVE
	db 41, GYARADOS
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, TWISTER, REST, SNORE
	db -1 ; end

	; SWIMMERM (8)
	db "MATHEW@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 39, KABUTO
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, ANCIENTPOWER, GIGA_DRAIN, MUD_SLAP
	db 39, OMANYTE
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, BITE, CONSTRICT, PROTECT
	db 40, REMORAID
			dw $0020, $0020, $0020, $0020, $0020
			db PSYBEAM, ICE_BEAM, HYPER_BEAM, BUBBLEBEAM
	db 42, KINGLER
			dw $0020, $0020, $0020, $0020, $0020
			db CRABHAMMER, GUILLOTINE, SWORDS_DANCE, VICEGRIP
	db -1 ; end

	; SWIMMERM (14)
	db "JEROME@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, KINGDRA
			dw $018D, $018D, $018D, $018D, $018D
			db SURF, DRAGONBREATH, REST, SLEEP_TALK
	db 82, TENTACRUEL
			dw $018D, $018D, $018D, $018D, $018D
			db SLUDGE_BOMB, SURF, BARRIER, CONSTRICT
	db 83, SEAKING
			dw $018D, $018D, $018D, $018D, $018D
			db MEGAHORN, DRILL_PECK, SURF, WHIRLPOOL
	db 83, TENTACRUEL
			dw $018D, $018D, $018D, $018D, $018D
			db SLUDGE_BOMB, SURF, BARRIER, CONSTRICT
	db -1 ; end

	; SWIMMERM (15)
	db "TUCKER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 83, QUAGSIRE
			dw $018D, $018D, $018D, $018D, $018D
			db HYDRO_PUMP, EARTHQUAKE, AMNESIA, ROCK_SLIDE
	db 84, CLOYSTER
			dw $018D, $018D, $018D, $018D, $018D
			db SURF, ICE_BEAM, SHADOW_BALL, SPIKE_CANNON
	db -1 ; end

	; SWIMMERM (17)
	db "CAMERON@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, LAPRAS
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db BLIZZARD, WHIRLPOOL, PERISH_SONG, REST
	db 85, OMASTAR
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SURF, REST, CONSTRICT, ICE_BEAM
	db 85, AZUMARILL
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db HYDRO_PUMP, LIGHT_SCREEN, ICE_BEAM, DOUBLE_EDGE
	db -1 ; end

	; SWIMMERM (18)
	db "SETH@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, CORSOLA
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db WHIRLPOOL, BLIZZARD, MIRROR_COAT, RECOVER
	db 86, VAPOREON
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db BLIZZARD, SURF, SLEEP_TALK, REST
	db -1 ; end

	; SWIMMERM (21)
	db "PARKER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 77, POLIWRATH
			dw $0173, $0173, $0173, $0173, $0173
			db LOVELY_KISS, EARTHQUAKE, SUBMISSION, HYDRO_PUMP
	db 77, KINGDRA
			dw $0173, $0173, $0173, $0173, $0173
			db SURF, DRAGONBREATH, REST, SLEEP_TALK
	db -1 ; end
	
	; SWIMMERM (22) - Added to Route 20
	db "FRANKIE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 86, LANTURN
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db THUNDERBOLT, THUNDER_WAVE, CONFUSE_RAY, HYDRO_PUMP
	db 86, KINGLER
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db CRABHAMMER, GUILLOTINE, DOUBLE_EDGE, CUT
	db -1 ; end

SwimmerFGroup:
	; SWIMMERF (1)
	db "ELAINE@", TRAINERTYPE_STAT_EXP
	db 41, STARMIE
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SWIMMERF (2)
	db "PAULA@", TRAINERTYPE_STAT_EXP
	db 39, STARYU
			dw $0020, $0020, $0020, $0020, $0020
	db 40, QUAGSIRE
			dw $0020, $0020, $0020, $0020, $0020
	db 40, CLOYSTER
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SWIMMERF (3)
	db "KAYLEE@", TRAINERTYPE_STAT_EXP
	db 40, POLITOED
			dw $0020, $0020, $0020, $0020, $0020
	db 41, CHINCHOU
			dw $0020, $0020, $0020, $0020, $0020
	db 41, GOLDEEN
			dw $0020, $0020, $0020, $0020, $0020
	db 41, SEAKING
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SWIMMERF (4)
	db "SUSIE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 41, GOLDEEN
			dw $0020, $0020, $0020, $0020, $0020
			db WATERFALL, DRILL_PECK, SWORDS_DANCE, HORN_ATTACK
	db 42, GOLDUCK
			dw $0020, $0020, $0020, $0020, $0020
			db RECOVER, WATERFALL, CROSS_CHOP, DISABLE
	db -1 ; end

	; SWIMMERF (5)
	db "DENISE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 40, SEEL
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, RAIN_DANCE, ICE_BEAM, TAKE_DOWN
	db 41, VAPOREON
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, GROWTH, BATON_PASS, ICE_BEAM
	db 41, DEWGONG
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, HORN_DRILL, AURORA_BEAM, TAKE_DOWN
	db -1 ; end

	; SWIMMERF (6)
	db "KARA@", TRAINERTYPE_STAT_EXP
	db 40, STARYU
			dw $0020, $0020, $0020, $0020, $0020
	db 41, LAPRAS
			dw $0020, $0020, $0020, $0020, $0020
	db 41, STARMIE
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SWIMMERF (7)
	db "WENDY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 39, HORSEA
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, TWISTER, AGILITY, SMOKESCREEN
	db 40, SEADRA
			dw $0020, $0020, $0020, $0020, $0020
			db OCTAZOOKA, DRAGONBREATH, AGILITY, FLAIL
	db 41, KINGDRA
			dw $0020, $0020, $0020, $0020, $0020
			db WATERFALL, TWISTER, AGILITY, DOUBLE_EDGE
	db -1 ; end

	; SWIMMERF (12)
	db "DAWN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, SEAKING
			dw $018D, $018D, $018D, $018D, $018D
			db MEGAHORN, DRILL_PECK, SURF, HORN_DRILL
	db -1 ; end

	; SWIMMERF (14)
	db "NICOLE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 84, AZUMARILL
			dw $018D, $018D, $018D, $018D, $018D
			db HYDRO_PUMP, LIGHT_SCREEN, ICE_BEAM, DOUBLE_EDGE
	db 85, LAPRAS
			dw $018D, $018D, $018D, $018D, $018D
			db BLIZZARD, SURF, SLEEP_TALK, REST
	db -1 ; end

	; SWIMMERF (15)
	db "LORI@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, STARMIE
			dw $018D, $018D, $018D, $018D, $018D
			db WATERFALL, CONFUSE_RAY, PSYCHIC_M, LIGHT_SCREEN
	db 85, STARMIE
			dw $018D, $018D, $018D, $018D, $018D
			db WATERFALL, CONFUSE_RAY, PSYCHIC_M, RECOVER
	db -1 ; end

	; SWIMMERF (17)
	db "NIKKI@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 84, DEWGONG
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SURF, BLIZZARD, REST, SLEEP_TALK
	db 84, POLITOED
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SURF, COTTON_SPORE, PERISH_SONG, BLIZZARD
	db 85, DEWGONG
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db MEGAHORN, ICE_BEAM, REST, SLEEP_TALK
	db -1 ; end

	; SWIMMERF (18)
	db "DIANA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 77, OCTILLERY
			dw $0173, $0173, $0173, $0173, $0173
			db OCTAZOOKA, FLAMETHROWER, SURF, FOCUS_ENERGY
	db 77, GOLDUCK
			dw $0173, $0173, $0173, $0173, $0173
			db HYDRO_PUMP, CROSS_CHOP, HYPNOSIS, ICE_BEAM
	db -1 ; end

	; SWIMMERF (19)
	db "BRIANA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 76, KABUTOPS
			dw $0173, $0173, $0173, $0173, $0173
			db WATERFALL, EARTHQUAKE, ROCK_SLIDE, RAZOR_WIND
	db 76, QUAGSIRE
			dw $0173, $0173, $0173, $0173, $0173
			db WHIRLPOOL, EARTHQUAKE, AMNESIA, ROCK_SLIDE
	db 77, SEAKING
			dw $0173, $0173, $0173, $0173, $0173
			db MEGAHORN, DRILL_PECK, SURF, WHIRLPOOL
	db -1 ; end
	
	; SWIMMERF (20) - New Victory Road trainer
	db "CLAIRE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 61, KINGDRA
			dw $0082, $0082, $0082, $0082, $0082
			db SURF, DRAGONBREATH, OCTAZOOKA, DOUBLE_EDGE
	db 60, POLITOED
			dw $0082, $0082, $0082, $0082, $0082
			db SURF, COTTON_SPORE, PERISH_SONG, BLIZZARD
	db 61, KABUTOPS
			dw $0082, $0082, $0082, $0082, $0082
			db WATERFALL, ROCK_SLIDE, CUT, EARTHQUAKE
	db 62, LAPRAS
			dw $0082, $0082, $0082, $0082, $0082
			db ICE_BEAM, HYDRO_PUMP, CONFUSE_RAY, RAIN_DANCE
	db -1 ; end
	
	; SWIMMERF (21) - Added to Route 20
	db "MINA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 86, BLASTOISE
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db HYDRO_PUMP, SKULL_BASH, SANDSTORM, ZAP_CANNON
	db 86, QUAGSIRE
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db HYDRO_PUMP, EARTHQUAKE, AMNESIA, ROCK_SLIDE
	db -1 ; end

SailorGroup:
	; SAILOR (1)
	db "EUGENE@", TRAINERTYPE_STAT_EXP
	db 37, KRABBY
			dw $0020, $0020, $0020, $0020, $0020
	db 37, POLIWHIRL
			dw $0020, $0020, $0020, $0020, $0020
	db 38, RATICATE
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SAILOR (2) - Rematch Trainer
	db "HUEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 39, POLIWHIRL
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, BODY_SLAM, HYPNOSIS, BELLY_DRUM
	db 40, POLITOED
			dw $0020, $0020, $0020, $0020, $0020
			db COTTON_SPORE, ICE_BEAM, HYPNOSIS, PERISH_SONG
	db -1 ; end

	; SAILOR (3)
	db "TERRELL@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 39, MANKEY
			dw $0020, $0020, $0020, $0020, $0020
			db CROSS_CHOP, SCREECH, SEISMIC_TOSS, ROCK_SLIDE
	db 39, CLOYSTER
			dw $0020, $0020, $0020, $0020, $0020
			db CLAMP, SHADOW_BALL, SPIKE_CANNON, PROTECT
	db 40, MANTINE
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, TWISTER, WING_ATTACK, CONFUSE_RAY
	db -1 ; end

	; SAILOR (4)
	db "KENT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 39, SMOOCHUM
			dw $0020, $0020, $0020, $0020, $0020
			db PSYCHIC_M, SING, ICE_PUNCH, MEAN_LOOK
	db 41, KINGLER
			dw $0020, $0020, $0020, $0020, $0020
			db CRABHAMMER, GUILLOTINE, SWORDS_DANCE, VICEGRIP
	db -1 ; end

	; SAILOR (5)
	db "ERNEST@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 41, URSARING
			dw $0020, $0020, $0020, $0020, $0020
			db LICK, REST, SNORE, STRENGTH
	db 41, MACHAMP
			dw $0020, $0020, $0020, $0020, $0020
			db SUBMISSION, FORESIGHT, SEISMIC_TOSS, VITAL_THROW
	db -1 ; end

	; SAILOR (6)
	db "JEFF@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 69, RATICATE
			dw $0152, $0152, $0152, $0152, $0152
			db BODY_SLAM, SUPER_FANG, SUBSTITUTE, SHADOW_BALL
	db 70, PRIMEAPE
			dw $0152, $0152, $0152, $0152, $0152
			db CROSS_CHOP, ROCK_SLIDE, SCREECH, SEISMIC_TOSS
	db 70, RATICATE
			dw $0152, $0152, $0152, $0152, $0152
			db HYPER_BEAM, SUPER_FANG, HYPER_FANG, FOCUS_ENERGY
	db -1 ; end

	; SAILOR (7)
	db "GARRETT@", TRAINERTYPE_STAT_EXP
	db 71, KINGLER
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; SAILOR (8)
	db "KENNETH@", TRAINERTYPE_STAT_EXP
	db 69, MACHOKE
			dw $0152, $0152, $0152, $0152, $0152
	db 70, POLIWRATH
			dw $0152, $0152, $0152, $0152, $0152
	db 69, PRIMEAPE
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; SAILOR (9)
	db "STANLY@", TRAINERTYPE_STAT_EXP
	db 69, GOLDUCK
			dw $0152, $0152, $0152, $0152, $0152
	db 69, MACHAMP
			dw $0152, $0152, $0152, $0152, $0152
	db 69, KINGLER
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; SAILOR (10)
	db "HARRY@", TRAINERTYPE_STAT_EXP
	db 36, CHINCHOU
			dw $0020, $0020, $0020, $0020, $0020
	db 36, QUAGSIRE
			dw $0020, $0020, $0020, $0020, $0020
	db 37, MACHOKE
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; SAILOR (11) - Rematch Trainer
	db "HUEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 43, POLIWRATH
			dw $0020, $0020, $0020, $0020, $0020
			db BELLY_DRUM, BODY_SLAM, HYPNOSIS, SUBMISSION
	db 44, POLITOED
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, COTTON_SPORE, HYPNOSIS, PERISH_SONG
	db -1 ; end

	; SAILOR (12) - Rematch Trainer
	db "HUEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 49, POLIWRATH
			dw $006B, $006B, $006B, $006B, $006B
			db BELLY_DRUM, BODY_SLAM, LOVELY_KISS, SUBMISSION
	db 50, POLITOED
			dw $006B, $006B, $006B, $006B, $006B
			db SURF, BLIZZARD, HYPNOSIS, COTTON_SPORE
	db -1 ; end

	; SAILOR (13) - Rematch Trainer
	db "HUEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 55, POLIWRATH
			dw $006B, $006B, $006B, $006B, $006B
			db MIND_READER, HYDRO_PUMP, LOVELY_KISS, DYNAMICPUNCH
	db 56, POLITOED
			dw $006B, $006B, $006B, $006B, $006B
			db HYDRO_PUMP, ICE_BEAM, COTTON_SPORE, PERISH_SONG
	db -1 ; end

Rival2Group:
	; RIVAL2 (1) - Victory Road - MOVED from RIVAL1
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 62, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db BERRY_JUICE
			db PSYCHIC_M, FIRE_PUNCH, RECOVER, KINESIS
	db 62, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db FOCUS_BAND
			db DREAM_EATER, ICE_PUNCH, HYPNOSIS, NIGHT_SHADE
	db 61, GOLBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db POISON_BARB
			db SLUDGE_BOMB, MEAN_LOOK, TOXIC, CONFUSE_RAY
	db 62, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 63, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db NEVERMELTICE
			db BEAT_UP, ICE_BEAM, MOONLIGHT, REFLECT
	db 65, MEGANIUM
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db SCOPE_LENS
			db RAZOR_LEAF, REFLECT, LEECH_SEED, SYNTHESIS
	db -1 ; end

	; RIVAL2 (2)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 62, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db BERRY_JUICE
			db PSYCHIC_M, FIRE_PUNCH, RECOVER, KINESIS
	db 62, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db FOCUS_BAND
			db DREAM_EATER, ICE_PUNCH, HYPNOSIS, NIGHT_SHADE
	db 61, GOLBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db POISON_BARB
			db SLUDGE_BOMB, MEAN_LOOK, TOXIC, CONFUSE_RAY
	db 62, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 63, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db NEVERMELTICE
			db BEAT_UP, ICE_BEAM, MOONLIGHT, REFLECT
	db 65, TYPHLOSION
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db CHARCOAL
			db FIRE_BLAST, THUNDERPUNCH, DYNAMICPUNCH, EARTHQUAKE
	db -1 ; end

	; RIVAL2 (3)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 62, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db BERRY_JUICE
			db PSYCHIC_M, FIRE_PUNCH, RECOVER, KINESIS
	db 62, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db FOCUS_BAND
			db DREAM_EATER, ICE_PUNCH, HYPNOSIS, NIGHT_SHADE
	db 61, GOLBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db POISON_BARB
			db SLUDGE_BOMB, MEAN_LOOK, TOXIC, CONFUSE_RAY
	db 62, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 63, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db NEVERMELTICE
			db BEAT_UP, ICE_BEAM, MOONLIGHT, REFLECT
	db 65, FERALIGATR
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $0082, $0082, $0082, $0082, $0082
			db MYSTIC_WATER
			db HYDRO_PUMP, CRUNCH, ICE_BEAM, EARTHQUAKE
	db -1 ; end

	; RIVAL2 (4) - Mt Moon
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 84, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db BERRY_JUICE
			db PSYCHIC_M, FIRE_PUNCH, RECOVER, KINESIS
	db 85, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FOCUS_BAND
			db DREAM_EATER, ICE_PUNCH, HYPNOSIS, NIGHT_SHADE
	db 86, CROBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db POISON_BARB
			db SLUDGE_BOMB, LEECH_LIFE, TOXIC, FLY
	db 85, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 86, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db NEVERMELTICE
			db BEAT_UP, ICE_BEAM, MOONLIGHT, REFLECT
	db 87, MEGANIUM
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SCOPE_LENS
			db BODY_SLAM, EARTHQUAKE, SWORDS_DANCE, SYNTHESIS
	db -1 ; end

	; RIVAL2 (5) - Mt Moon
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 84, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db BERRY_JUICE
			db PSYCHIC_M, FIRE_PUNCH, RECOVER, KINESIS
	db 85, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FOCUS_BAND
			db DREAM_EATER, ICE_PUNCH, HYPNOSIS, NIGHT_SHADE
	db 86, CROBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db POISON_BARB
			db SLUDGE_BOMB, LEECH_LIFE, TOXIC, FLY
	db 85, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 86, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db NEVERMELTICE
			db BEAT_UP, ICE_BEAM, MOONLIGHT, REFLECT
	db 87, TYPHLOSION
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db CHARCOAL
			db FIRE_BLAST, THUNDERPUNCH, DYNAMICPUNCH, EARTHQUAKE
	db -1 ; end

	; RIVAL2 (6) - Mt Moon
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 84, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db BERRY_JUICE
			db PSYCHIC_M, FIRE_PUNCH, RECOVER, KINESIS
	db 85, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FOCUS_BAND
			db DREAM_EATER, ICE_PUNCH, HYPNOSIS, NIGHT_SHADE
	db 86, CROBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db POISON_BARB
			db SLUDGE_BOMB, LEECH_LIFE, TOXIC, FLY
	db 85, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 86, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db NEVERMELTICE
			db BEAT_UP, ICE_BEAM, MOONLIGHT, REFLECT
	db 87, FERALIGATR
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db MYSTIC_WATER
			db HYDRO_PUMP, CRUNCH, ICE_BEAM, EARTHQUAKE
	db -1 ; end

	; RIVAL2 (7) - Indigo Plateau (only after E4 rematch)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 91, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db BERRY_JUICE
			db PSYCHIC_M, FIRE_PUNCH, RECOVER, KINESIS
	db 91, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db FOCUS_BAND
			db DREAM_EATER, ICE_PUNCH, HYPNOSIS, NIGHT_SHADE
	db 92, CROBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db POISON_BARB
			db SLUDGE_BOMB, LEECH_LIFE, TOXIC, FLY
	db 91, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 92, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db NEVERMELTICE
			db BEAT_UP, ICE_BEAM, MOONLIGHT, REFLECT
	db 94, MEGANIUM
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $00FD, $00FD, $00FD, $00FD, $00FD
			db SCOPE_LENS
			db BODY_SLAM, EARTHQUAKE, SWORDS_DANCE, SYNTHESIS
	db -1 ; end

	; RIVAL2 (8) - Indigo Plateau (only after E4 rematch)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 91, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db BERRY_JUICE
			db PSYCHIC_M, FIRE_PUNCH, RECOVER, KINESIS
	db 91, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db FOCUS_BAND
			db DREAM_EATER, ICE_PUNCH, HYPNOSIS, NIGHT_SHADE
	db 92, CROBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db POISON_BARB
			db SLUDGE_BOMB, LEECH_LIFE, TOXIC, FLY
	db 91, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 92, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db NEVERMELTICE
			db BEAT_UP, ICE_BEAM, MOONLIGHT, REFLECT
	db 94, TYPHLOSION
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $00FD, $00FD, $00FD, $00FD, $00FD
			db CHARCOAL
			db FIRE_BLAST, THUNDERPUNCH, DYNAMICPUNCH, EARTHQUAKE
	db -1 ; end

	; RIVAL2 (9) - Indigo Plateau (only after E4 rematch)
	db "?@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 91, ALAKAZAM
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db BERRY_JUICE
			db PSYCHIC_M, FIRE_PUNCH, RECOVER, KINESIS
	db 91, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db FOCUS_BAND
			db DREAM_EATER, ICE_PUNCH, HYPNOSIS, NIGHT_SHADE
	db 92, CROBAT
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db POISON_BARB
			db SLUDGE_BOMB, LEECH_LIFE, TOXIC, FLY
	db 91, MAGNETON
			db $ed, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db LEFTOVERS
			db THUNDERBOLT, THUNDER_WAVE, SUBSTITUTE, HIDDEN_POWER
	db 92, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db NEVERMELTICE
			db BEAT_UP, ICE_BEAM, MOONLIGHT, REFLECT
	db 94, FERALIGATR
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $00FD, $00FD, $00FD, $00FD, $00FD
			db MYSTIC_WATER
			db HYDRO_PUMP, CRUNCH, ICE_BEAM, EARTHQUAKE
	db -1 ; end

GuitaristGroup:
	; GUITARIST (1)
	db "CLYDE@", TRAINERTYPE_STAT_EXP
	db 71, ELECTABUZZ
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; GUITARIST (2)
	db "VINCENT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 70, CROBAT
			dw $0152, $0152, $0152, $0152, $0152
			db TOXIC, FLY, SLUDGE_BOMB, CONFUSE_RAY
	db 70, MAGNETON
			dw $0152, $0152, $0152, $0152, $0152
			db THUNDERBOLT, THUNDER_WAVE, REFLECT, SUBSTITUTE
	db 71, ELECTABUZZ
			dw $0152, $0152, $0152, $0152, $0152
			db THUNDERBOLT, SUBSTITUTE, PSYCHIC_M, ICE_PUNCH
	db -1 ; end
	
	; GUITARIST (3) - Added to Route 12
	db "LUCA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, ELECTRODE
			dw $0173, $0173, $0173, $0173, $0173
			db EXPLOSION, GIGA_DRAIN, THUNDER, THUNDER_WAVE
	db 80, ELECTABUZZ
			dw $0173, $0173, $0173, $0173, $0173
			db THUNDERBOLT, SUBSTITUTE, CROSS_CHOP, ICE_PUNCH
	db 81, ELECTRODE
			dw $0173, $0173, $0173, $0173, $0173
			db THUNDERBOLT, PSYCHIC_M, GIGA_DRAIN, SUBSTITUTE
	db -1 ; end
	
	; GUITARIST (4) - Added to Silver Cave
	db "HARVEY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 94, RAICHU
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db SURF, THUNDERBOLT, SEISMIC_TOSS, THUNDER_WAVE
	db 94, AMPHAROS
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db THUNDERBOLT, REFLECT, SLEEP_TALK, REST
	db 95, JOLTEON
			db $fd, $bf ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db THUNDERBOLT, HIDDEN_POWER, GROWTH, THUNDER_WAVE
	db 95, MAGNETON
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db THUNDERBOLT, SUBSTITUTE, CONFUSE_RAY, THUNDER_WAVE
	db -1 ; end

HikerGroup:
	; HIKER (1) - Rematch Trainer #1
	db "ANTHONY@", TRAINERTYPE_STAT_EXP
	db 17, LARVITAR
			dw $0002, $0002, $0002, $0002, $0002
	db 17, GEODUDE
			dw $0002, $0002, $0002, $0002, $0002
	db 18, ONIX
			dw $0002, $0002, $0002, $0002, $0002
	db 18, MACHOP
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; HIKER (2)
	db "RUSSELL@", TRAINERTYPE_STAT_EXP
	db 16, DIGLETT
			dw $0002, $0002, $0002, $0002, $0002
	db 16, CUBONE
			dw $0002, $0002, $0002, $0002, $0002
	db 15, GEODUDE
			dw $0002, $0002, $0002, $0002, $0002
	db 17, PHANPY
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; HIKER (3) - Return to Union Cave with Surf
	db "PHILLIP@", TRAINERTYPE_STAT_EXP
	db 37, MAROWAK
			dw $0020, $0020, $0020, $0020, $0020
	db 37, RHYHORN
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; HIKER (4) - Return to Union Cave with Surf
	db "LEONARD@", TRAINERTYPE_STAT_EXP
	db 35, GRAVELER
			dw $0020, $0020, $0020, $0020, $0020
	db 36, MACHOKE
			dw $0020, $0020, $0020, $0020, $0020
	db 36, ONIX
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; HIKER (5) - Rematch Trainer #2
	db "ANTHONY@", TRAINERTYPE_STAT_EXP
	db 25, LARVITAR
			dw $0008, $0008, $0008, $0008, $0008
	db 26, MACHOP
			dw $0008, $0008, $0008, $0008, $0008
	db 26, GRAVELER
			dw $0008, $0008, $0008, $0008, $0008
	db 27, ONIX
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; HIKER (6)
	db "BENJAMIN@", TRAINERTYPE_STAT_EXP
	db 45, MACHOKE
			dw $006B, $006B, $006B, $006B, $006B
	db 45, GRAVELER
			dw $006B, $006B, $006B, $006B, $006B
	db 46, DUGTRIO
			dw $006B, $006B, $006B, $006B, $006B
	db 46, PRIMEAPE
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; HIKER (7)
	db "ERIK@", TRAINERTYPE_STAT_EXP
	db 53, MACHOKE
			dw $006B, $006B, $006B, $006B, $006B
	db 53, GRAVELER
			dw $006B, $006B, $006B, $006B, $006B
	db 55, GOLEM
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; HIKER (8)
	db "MICHAEL@", TRAINERTYPE_STAT_EXP
	db 55, RHYHORN
			dw $006B, $006B, $006B, $006B, $006B
	db 55, DONPHAN
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; HIKER (9) - First rematch
	db "PARRY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 70, STEELIX
			dw $0159, $0159, $0159, $0159, $0159
			db EARTHQUAKE, IRON_TAIL, ROCK_SLIDE, SANDSTORM
	db 70, DUGTRIO
			dw $0159, $0159, $0159, $0159, $0159
			db EARTHQUAKE, FISSURE, SLUDGE_BOMB, ROCK_SLIDE
	db 70, PILOSWINE
			dw $0159, $0159, $0159, $0159, $0159
			db EARTHQUAKE, BLIZZARD, REST, SLEEP_TALK
	db -1 ; end

	; HIKER (10)
	db "TIMOTHY@", TRAINERTYPE_STAT_EXP
	db 54, GLIGAR
			dw $006B, $006B, $006B, $006B, $006B
	db 55, DUGTRIO
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; HIKER (11)
	db "BAILEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 32, GEODUDE
			dw $000C, $000C, $000C, $000C, $000C
			db EARTHQUAKE, ROCK_THROW, RAPID_SPIN, SELFDESTRUCT
	db 33, GRAVELER
			dw $000C, $000C, $000C, $000C, $000C
			db MAGNITUDE, ROCK_SLIDE, SELFDESTRUCT, ROCK_SMASH
	db 32, SLUGMA
			dw $000C, $000C, $000C, $000C, $000C
			db FLAMETHROWER, ACID_ARMOR, TOXIC, MUD_SLAP
	db 33, DONPHAN
			dw $000C, $000C, $000C, $000C, $000C
			db DIG, HORN_ATTACK, ROCK_THROW, TAKE_DOWN
	db -1 ; end

	; HIKER (12) - Rematch trainer
	db "ANTHONY@", TRAINERTYPE_STAT_EXP
	db 32, MACHOKE
			dw $000C, $000C, $000C, $000C, $000C
	db 33, PUPITAR
			dw $000C, $000C, $000C, $000C, $000C
	db 33, ONIX
			dw $000C, $000C, $000C, $000C, $000C
	db 34, GRAVELER
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; HIKER (13)
	db "TIM@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 75, BUTTERFREE
			dw $0173, $0173, $0173, $0173, $0173
			db GIGA_DRAIN, PSYCHIC_M, SLEEP_POWDER, NIGHTMARE
	db 76, GIRAFARIG
			dw $0173, $0173, $0173, $0173, $0173
			db AGILITY, BATON_PASS, CRUNCH, PSYCHIC_M
	db 76, PORYGON2
			dw $0173, $0173, $0173, $0173, $0173
			db RECOVER, PSYCHIC_M, THUNDERBOLT, TRI_ATTACK
	db -1 ; end

	; HIKER (14)
	db "NOLAND@", TRAINERTYPE_STAT_EXP
	db 68, SANDSLASH
			dw $0152, $0152, $0152, $0152, $0152
	db 68, DUNSPARCE
			dw $0152, $0152, $0152, $0152, $0152
	db 69, GOLEM
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; HIKER (15)
	db "SIDNEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 74, ONIX
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, IRON_TAIL, EXPLOSION, ROCK_SLIDE
	db 74, DUGTRIO
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, ROCK_SLIDE, SLUDGE_BOMB, SUBSTITUTE
	db 74, SANDSLASH
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, SWORDS_DANCE, CUT, ROCK_SLIDE
	db 75, STEELIX
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, IRON_TAIL, FISSURE, BIND
	db -1 ; end

	; HIKER (16)
	db "KENNY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, GOLEM
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, FIRE_BLAST, EXPLOSION, ROCK_SLIDE
	db 81, SANDSLASH
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, IRON_TAIL, CUT, SUBSTITUTE
	db 81, SUDOWOODO
			dw $0173, $0173, $0173, $0173, $0173
			db LEECH_SEED, ROCK_SLIDE, SYNTHESIS, SLAM
	db 82, GOLEM
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, CURSE, EXPLOSION, ROCK_SLIDE
	db -1 ; end

	; HIKER (17)
	db "JIM@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 78, RAPIDASH
			dw $0173, $0173, $0173, $0173, $0173
			db FIRE_BLAST, HI_JUMP_KICK, FIRE_SPIN, TAKE_DOWN
	db 79, DONPHAN
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, ROCK_SLIDE, BODY_SLAM, CURSE
	db 80, MACHAMP
			dw $0173, $0173, $0173, $0173, $0173
			db CROSS_CHOP, ROCK_SLIDE, CURSE, FIRE_BLAST
	db -1 ; end

	; HIKER (18)
	db "DANIEL@", TRAINERTYPE_STAT_EXP
	db 16, GEODUDE
			dw $0002, $0002, $0002, $0002, $0002
	db 16, MACHOP
			dw $0002, $0002, $0002, $0002, $0002
	db 17, ONIX
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; HIKER (19) - Rematch Trainer
	db "PARRY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, STEELIX
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, IRON_TAIL, ROCK_SLIDE, SANDSTORM
	db 80, DUGTRIO
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, SLUDGE_BOMB, SWORDS_DANCE, ROCK_SLIDE
	db 80, PILOSWINE
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, BLIZZARD, REST, SLEEP_TALK
	db -1 ; end

	; HIKER (20) - First encounter
	db "PARRY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 54, STEELIX
			dw $006B, $006B, $006B, $006B, $006B
			db EARTHQUAKE, IRON_TAIL, BIND, SANDSTORM
	db 54, PILOSWINE
			dw $006B, $006B, $006B, $006B, $006B
			db EARTHQUAKE, BLIZZARD, REST, TAKE_DOWN
	db -1 ; end

	; HIKER (21) - Rematch Trainer
	db "ANTHONY@", TRAINERTYPE_STAT_EXP
	db 40, MACHOKE
			dw $0020, $0020, $0020, $0020, $0020
	db 40, PUPITAR
			dw $0020, $0020, $0020, $0020, $0020
	db 41, GOLEM
			dw $0020, $0020, $0020, $0020, $0020
	db 42, STEELIX
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; HIKER (22) - Rematch Trainer
	db "ANTHONY@", TRAINERTYPE_STAT_EXP
	db 48, MACHAMP
			dw $006B, $006B, $006B, $006B, $006B
	db 48, GOLEM
			dw $006B, $006B, $006B, $006B, $006B
	db 49, STEELIX
			dw $006B, $006B, $006B, $006B, $006B
	db 50, TYRANITAR
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end
	
	; HIKER (23) - Rock Tunnel
	db "LENNY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 77, DUGTRIO
			dw $0173, $0173, $0173, $0173, $0173
			db SCREECH, ROCK_SLIDE, EARTHQUAKE, SUBSTITUTE
	db 77, MACHAMP
			dw $0173, $0173, $0173, $0173, $0173
			db CROSS_CHOP, ROCK_SLIDE, CURSE, FIRE_BLAST
	db 78, STEELIX
			dw $0173, $0173, $0173, $0173, $0173
			db BODY_SLAM, ROCK_SLIDE, EARTHQUAKE, IRON_TAIL
	db 78, GOLEM
			dw $0173, $0173, $0173, $0173, $0173
			db EXPLOSION, ROCK_SLIDE, EARTHQUAKE, FIRE_BLAST
	db -1 ; end
	
	; HIKER (24) - Added to Route 3
	db "DANTE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 86, MAGNETON
			dw $018D, $018D, $018D, $018D, $018D
			db THUNDERBOLT, SUBSTITUTE, CONFUSE_RAY, THUNDER_WAVE
	db 86, TYRANITAR
			dw $018D, $018D, $018D, $018D, $018D
			db ROCK_SLIDE, PURSUIT, EARTHQUAKE, FIRE_BLAST
	db -1 ; end
	
	; HIKER (25) - Added to Silver Cave
	db "LEROY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 93, POLIWRATH
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db EARTHQUAKE, LOVELY_KISS, BELLY_DRUM, SUBMISSION
	db 93, RHYDON
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db EARTHQUAKE, ROCK_SLIDE, THUNDER, CURSE
	db 94, PRIMEAPE
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db CROSS_CHOP, SCREECH, ROCK_SLIDE, SEISMIC_TOSS
	db 94, TYRANITAR
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db ROCK_SLIDE, PURSUIT, EARTHQUAKE, FIRE_BLAST
	db -1 ; end

BikerGroup:
	; BIKER (3)
	db "DWAYNE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 70, KOFFING
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, SCREECH, EXPLOSION, POISON_GAS
	db 70, KOFFING
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, SCREECH, EXPLOSION, FIRE_SPIN
	db 70, KOFFING
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, POISON_GAS, EXPLOSION, DESTINY_BOND
	db 71, MUK
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, GIGA_DRAIN, EXPLOSION, POISON_GAS
	db 72, WEEZING
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, FIRE_BLAST, EXPLOSION, FIRE_SPIN
	db -1 ; end

	; BIKER (4)
	db "HARRIS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 73, MUK
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, GIGA_DRAIN, SUNNY_DAY, FIRE_BLAST
	db 73, FLAREON
			dw $0169, $0169, $0169, $0169, $0169
			db FLAMETHROWER, SOLARBEAM, SUNNY_DAY, ZAP_CANNON
	db -1 ; end

	; BIKER (5)
	db "ZEKE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 71, QWILFISH
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, WHIRLPOOL, EXPLOSION, SPIKES
	db 72, VENOMOTH
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, PSYCHIC_M, LEECH_LIFE, REFLECT
	db 73, WEEZING
			dw $0169, $0169, $0169, $0169, $0169
			db SLUDGE_BOMB, FIRE_BLAST, DESTINY_BOND, FIRE_SPIN
	db -1 ; end

	; BIKER (6)
	db "CHARLES@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, VENUSAUR
			dw $0173, $0173, $0173, $0173, $0173
			db RAZOR_LEAF, SLUDGE_BOMB, LEECH_SEED, SLEEP_POWDER
	db 81, WEEZING
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, POISON_GAS, FIRE_BLAST, HAZE
	db 82, CHARIZARD
			dw $0173, $0173, $0173, $0173, $0173
			db FLAMETHROWER, CRUNCH, SUNNY_DAY, SOLARBEAM
	db -1 ; end

	; BIKER (7)
	db "RILEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, WEEZING
			dw $0173, $0173, $0173, $0173, $0173
			db ZAP_CANNON, FIRE_BLAST, SLUDGE_BOMB, FIRE_SPIN
	db 80, WEEZING
			dw $0173, $0173, $0173, $0173, $0173
			db DESTINY_BOND, EXPLOSION, SLUDGE_BOMB, HAZE
	db 80, WEEZING
			dw $0173, $0173, $0173, $0173, $0173
			db ZAP_CANNON, FIRE_BLAST, SLUDGE_BOMB, FIRE_SPIN
	db 80, WEEZING
			dw $0173, $0173, $0173, $0173, $0173
			db DESTINY_BOND, EXPLOSION, SLUDGE_BOMB, HAZE
	db -1 ; end

	; BIKER (8)
	db "JOEL@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, MAGMAR
			dw $0173, $0173, $0173, $0173, $0173
			db FIRE_BLAST, CROSS_CHOP, SUNNY_DAY, POISON_GAS
	db 81, QWILFISH
			dw $0173, $0173, $0173, $0173, $0173
			db HYDRO_PUMP, SLUDGE_BOMB, TOXIC, HAZE
	db 81, MAGMAR
			dw $0173, $0173, $0173, $0173, $0173
			db FLAMETHROWER, CROSS_CHOP, CONFUSE_RAY, SUBSTITUTE
	db -1 ; end

	; BIKER (9)
	db "GLENN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, TENTACRUEL
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, SURF, BARRIER, CONSTRICT
	db 81, WEEZING
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, EXPLOSION, CURSE, POISON_GAS
	db 81, MAGMAR
			dw $0173, $0173, $0173, $0173, $0173
			db FIRE_BLAST, CROSS_CHOP, CONFUSE_RAY, SUBSTITUTE
	db -1 ; end
	
	; BIKER (10) - New Victory Road trainer
	db "GRYPHON@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 60, BEEDRILL
			dw $0082, $0082, $0082, $0082, $0082
			db TWINEEDLE, SWORDS_DANCE, SLUDGE_BOMB, SUBSTITUTE
	db 61, GENGAR
			dw $0082, $0082, $0082, $0082, $0082
			db CURSE, EARTHQUAKE, ZAP_CANNON, ROCK_SLIDE
	db 62, MUK
			dw $0082, $0082, $0082, $0082, $0082
			db SLUDGE_BOMB, FIRE_BLAST, EXPLOSION, CURSE
	db 62, TENTACRUEL
			dw $0082, $0082, $0082, $0082, $0082
			db WATERFALL, SLUDGE_BOMB, SUBSTITUTE, BARRIER
	db 63, NIDOKING
			dw $0082, $0082, $0082, $0082, $0082
			db EARTHQUAKE, THUNDERBOLT, SLUDGE_BOMB, LOVELY_KISS
	db -1 ; end
	
	; BIKER (11) - Added to Route 17
	db "DAL@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, ARIADOS
			dw $0173, $0173, $0173, $0173, $0173
			db LEECH_LIFE, SLUDGE_BOMB, TOXIC, CONSTRICT
	db 81, DUNSPARCE
			dw $0173, $0173, $0173, $0173, $0173
			db SCREECH, GLARE, TAKE_DOWN, ROCK_SLIDE
	db -1 ; end
	
	; BIKER (12) - Added to Route 17
	db "REESE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, MUK
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, SCREECH, EXPLOSION, GIGA_DRAIN
	db 81, MUK
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, EXPLOSION, CURSE, GIGA_DRAIN
	db -1 ; end
	
	; BIKER (13) - Added to Route 17
	db "DAN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, ARBOK
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, SLUDGE_BOMB, SUBSTITUTE, GLARE
	db 81, CROBAT
			dw $0173, $0173, $0173, $0173, $0173
			db LEECH_LIFE, SLUDGE_BOMB, TOXIC, FLY
	db 81, MUK
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, EXPLOSION, CURSE, GIGA_DRAIN
	db -1 ; end
	
	; BIKER (14) - Added to Route 17
	db "TEDDY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, CROBAT
			dw $0173, $0173, $0173, $0173, $0173
			db LEECH_LIFE, SLUDGE_BOMB, TOXIC, FLY
	db 82, ARBOK
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, SLUDGE_BOMB, SUBSTITUTE, GLARE
	db -1 ; end
	
	; BIKER (15) - Added to Route 17
	db "MARKEY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, FLAREON
			db $fd, $bb
			dw $0173, $0173, $0173, $0173, $0173
			db GROWTH, ZAP_CANNON, FLAMETHROWER, HIDDEN_POWER
	db -1 ; end
	
	; BIKER (16) - Added to Route 17
	db "JACOB@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, HYPNO
			dw $0173, $0173, $0173, $0173, $0173
			db SLEEP_TALK, REST, CONFUSE_RAY, PSYCHIC_M
	db 81, TENTACRUEL
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, SURF, BARRIER, CONSTRICT
	db -1 ; end
	
	; BIKER (17) - Added to Route 17
	db "THERON@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, ARBOK
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, SLUDGE_BOMB, SUBSTITUTE, GLARE
	db 81, URSARING
			dw $0173, $0173, $0173, $0173, $0173
			db SLEEP_TALK, REST, THRASH, EARTHQUAKE
	db 81, AZUMARILL
			dw $0173, $0173, $0173, $0173, $0173
			db HYDRO_PUMP, STRENGTH, WHIRLPOOL, DOUBLE_EDGE
	db -1 ; end
	
	; BIKER (18) - Silph Co. Delivery Center
	db "STRAUSS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 10, ARBOK
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, SLUDGE_BOMB, SUBSTITUTE, GLARE
	db -1 ; end

BlaineGroup:
	; BLAINE (1)
	db "BLAINE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 86, PORYGON2
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db THUNDER, ICE_BEAM, RECOVER, MEGA_KICK
	db 87, RAPIDASH
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FOCUS_BAND
			db FIRE_BLAST, SUNNY_DAY, SOLARBEAM, HI_JUMP_KICK
	db 86, DITTO
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db TRANSFORM, NO_MOVE, NO_MOVE, NO_MOVE
	db 88, MOLTRES
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db CHARCOAL
			db SUNNY_DAY, FIRE_BLAST, REST, SLEEP_TALK
	db 87, MAGMAR
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db CHARCOAL
			db SUNNY_DAY, FIRE_BLAST, CROSS_CHOP, THUNDERPUNCH
	db 89, ARCANINE
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db MIRACLEBERRY
			db FIRE_BLAST, STRENGTH, REST, SLEEP_TALK
	db -1 ; end

BurglarGroup:
	; BURGLAR (1)
	db "DUNCAN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 52, KOFFING
			dw $006B, $006B, $006B, $006B, $006B
			db EXPLOSION, FIRE_SPIN, SLUDGE_BOMB, SMOKESCREEN
	db 53, MAGMAR
			dw $006B, $006B, $006B, $006B, $006B
			db FIRE_BLAST, CROSS_CHOP, CONFUSE_RAY, SUBSTITUTE
	db 53, WEEZING
			dw $006B, $006B, $006B, $006B, $006B
			db DESTINY_BOND, FIRE_SPIN, SLUDGE_BOMB, HAZE
	db -1 ; end

	; BURGLAR (2)
	db "EDDIE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 52, GROWLITHE
			dw $006B, $006B, $006B, $006B, $006B
			db FLAMETHROWER, TAKE_DOWN, AGILITY, SUNNY_DAY
	db 52, KOFFING
			dw $006B, $006B, $006B, $006B, $006B
			db EXPLOSION, FIRE_SPIN, SLUDGE_BOMB, SMOKESCREEN
	db 53, ARCANINE
			dw $006B, $006B, $006B, $006B, $006B
			db FLAMETHROWER, EXTREMESPEED, REST, SLEEP_TALK
	db -1 ; end

	; BURGLAR (3)
	db "COREY@", TRAINERTYPE_STAT_EXP
	db 69, MUK
			dw $0152, $0152, $0152, $0152, $0152
	db 69, MAGMAR
			dw $0152, $0152, $0152, $0152, $0152
	db 70, WEEZING
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end
	
	; BURGLAR (4) - Added to Deliv Center B1F
	db "ALEXANDER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, VENUSAUR
			dw $0173, $0173, $0173, $0173, $0173
			db RAZOR_LEAF, SLUDGE_BOMB, LEECH_SEED, SLEEP_POWDER
	db -1 ; end

FirebreatherGroup:
	; FIREBREATHER (1)
	db "OTIS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, HOUNDOOM
			dw $018D, $018D, $018D, $018D, $018D
			db FIRE_BLAST, CRUNCH, SOLARBEAM, SUNNY_DAY
	db 86, MAGCARGO
			dw $018D, $018D, $018D, $018D, $018D
			db SACRED_FIRE, SOLARBEAM, FLAMETHROWER, AMNESIA
	db -1 ; end

	; FIREBREATHER (2)
	db "DICK@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 31, CHARMELEON
			dw $000C, $000C, $000C, $000C, $000C
			db FLAMETHROWER, SMOKESCREEN, SLASH, SUNNY_DAY
	db 31, GROWLITHE
			dw $000C, $000C, $000C, $000C, $000C
			db FLAME_WHEEL, TAKE_DOWN, LEER, BITE
	db 32, OCTILLERY
			dw $000C, $000C, $000C, $000C, $000C
			db FLAMETHROWER, OCTAZOOKA, WHIRLPOOL, PSYBEAM
	db -1 ; end

	; FIREBREATHER (3)
	db "NED@", TRAINERTYPE_STAT_EXP
	db 31, KOFFING
			dw $000C, $000C, $000C, $000C, $000C
	db 33, KOFFING
			dw $000C, $000C, $000C, $000C, $000C
	db 33, ARCANINE
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; FIREBREATHER (4)
	db "BURT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, WEEZING
			dw $018D, $018D, $018D, $018D, $018D
			db SLUDGE_BOMB, FIRE_BLAST, EXPLOSION, POISON_GAS
	db 85, MAGMAR
			dw $018D, $018D, $018D, $018D, $018D
			db FLAMETHROWER, CROSS_CHOP, PSYCHIC_M, ROCK_SLIDE
	db 85, MAGMAR
			dw $018D, $018D, $018D, $018D, $018D
			db FLAMETHROWER, CROSS_CHOP, PSYCHIC_M, ROCK_SLIDE
	db -1 ; end

	; FIREBREATHER (5)
	db "BILL@", TRAINERTYPE_STAT_EXP
	db 17, GRIMER
			dw $0002, $0002, $0002, $0002, $0002
	db 17, KOFFING
			dw $0002, $0002, $0002, $0002, $0002
	db 17, CYNDAQUIL
			dw $0002, $0002, $0002, $0002, $0002
	db 18, MAGBY
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; FIREBREATHER (6)
	db "WALT@", TRAINERTYPE_STAT_EXP
	db 26, PONYTA
			dw $0008, $0008, $0008, $0008, $0008
	db 27, CHARMELEON
			dw $0008, $0008, $0008, $0008, $0008
	db 27, MAGMAR
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; FIREBREATHER (7)
	db "RAY@", TRAINERTYPE_STAT_EXP
	db 17, VULPIX
			dw $0002, $0002, $0002, $0002, $0002
	db 17, QUILAVA
			dw $0002, $0002, $0002, $0002, $0002
	db 18, PONYTA
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; FIREBREATHER (8)
	db "LYLE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 69, WEEZING
			dw $0152, $0152, $0152, $0152, $0152
			db SLUDGE_BOMB, FIRE_BLAST, EXPLOSION, POISON_GAS
	db 70, FLAREON
			dw $0152, $0152, $0152, $0152, $0152
			db GROWTH, FLAMETHROWER, BATON_PASS, ZAP_CANNON
	db 69, MUK
			dw $0152, $0152, $0152, $0152, $0152
			db SLUDGE_BOMB, SCREECH, CURSE, GIGA_DRAIN
	db -1 ; end
	
	; FIREBREATHER (9) - Added to Route 8
	db "TOD@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 73, LICKITUNG
			dw $0169, $0169, $0169, $0169, $0169
			db BLIZZARD, FIRE_BLAST, THUNDER, MEGA_PUNCH
	db 73, TYPHLOSION
			dw $0169, $0169, $0169, $0169, $0169
			db THUNDERPUNCH, FIRE_BLAST, EARTHQUAKE, DYNAMICPUNCH
	db 73, ARCANINE
			dw $0169, $0169, $0169, $0169, $0169
			db FIRE_BLAST, STRENGTH, EARTHQUAKE, EXTREMESPEED
	db -1 ; end
	
	; FIREBREATHER (10) - Added to Silver Cave
	db "SEPH@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 94, MAGMAR
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db FIRE_BLAST, CROSS_CHOP, THUNDERPUNCH, SUNNY_DAY
	db 94, FLAREON
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db FLAMETHROWER, SOLARBEAM, GROWTH, ZAP_CANNON
	db 94, WEEZING
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db FIRE_BLAST, SLUDGE_BOMB, DESTINY_BOND, POISON_GAS
	db 95, BLISSEY
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db EGG_BOMB, SOFTBOILED, ICE_BEAM, HEAL_BELL
	db 95, RAPIDASH
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db FIRE_BLAST, EARTHQUAKE, HI_JUMP_KICK, FIRE_SPIN
	db -1 ; end

JugglerGroup:
	; JUGGLER (1)
	db "IRWIN@", TRAINERTYPE_STAT_EXP
	db 25, VOLTORB
			dw $0008, $0008, $0008, $0008, $0008
	db 26, PINECO
			dw $0008, $0008, $0008, $0008, $0008
	db 27, MAGNEMITE
			dw $0008, $0008, $0008, $0008, $0008
	db 29, VOLTORB
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; JUGGLER (2)
	db "FRITZ@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 69, MR__MIME
			dw $0152, $0152, $0152, $0152, $0152
			db PSYCHIC_M, FUTURE_SIGHT, THUNDER_WAVE, REFLECT
	db 69, MAGMAR
			dw $0152, $0152, $0152, $0152, $0152
			db FIRE_BLAST, CONFUSE_RAY, PSYCHIC_M, ROCK_SLIDE
	db 70, MACHAMP
			dw $0152, $0152, $0152, $0152, $0152
			db ROCK_SLIDE, STRENGTH, EARTHQUAKE, FOCUS_ENERGY
	db -1 ; end

	; JUGGLER (3)
	db "HORTON@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 69, ELECTRODE
			dw $0152, $0152, $0152, $0152, $0152
			db THUNDER, GIGA_DRAIN, EXPLOSION, REFLECT
	db 69, MAGNETON
			dw $0152, $0152, $0152, $0152, $0152
			db THUNDERBOLT, SUBSTITUTE, LOCK_ON, ZAP_CANNON
	db 70, ELECTRODE
			dw $0152, $0152, $0152, $0152, $0152
			db THUNDERBOLT, GIGA_DRAIN, EXPLOSION, TOXIC
	db 70, MAGNETON
			dw $0152, $0152, $0152, $0152, $0152
			db THUNDERBOLT, SUBSTITUTE, CONFUSE_RAY, THUNDER_WAVE
	db -1 ; end

BlackbeltGroup:
	; BLACKBELT_T (2)
	db "YOSHI@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 41, TYROGUE
			dw $0020, $0020, $0020, $0020, $0020
			db TACKLE, ROLLING_KICK, COMET_PUNCH, NO_MOVE
	db 42, HITMONLEE
			dw $0020, $0020, $0020, $0020, $0020
			db MEGA_KICK, JUMP_KICK, FORESIGHT, REVERSAL
	db -1 ; end

	; BLACKBELT_T (4)
	db "LAO@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 42, MAROWAK
			dw $0020, $0020, $0020, $0020, $0020
			db BONEMERANG, ROCK_SMASH, ROCK_SLIDE, THRASH
	db 42, HITMONCHAN
			dw $0020, $0020, $0020, $0020, $0020
			db COMET_PUNCH, MEGA_PUNCH, COUNTER, MACH_PUNCH
	db -1 ; end

	; BLACKBELT_T (5)
	db "NOB@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 40, MACHOKE
			dw $0020, $0020, $0020, $0020, $0020
			db LEER, SUBMISSION, SEISMIC_TOSS, FORESIGHT
	db 41, KANGASKHAN
			dw $0020, $0020, $0020, $0020, $0020
			db COMET_PUNCH, MEGA_PUNCH, DIZZY_PUNCH, ENDURE
	db 42, MACHOKE
			dw $0020, $0020, $0020, $0020, $0020
			db SCARY_FACE, SUBMISSION, SEISMIC_TOSS, ROCK_SLIDE
	db -1 ; end

	; BLACKBELT_T (6)
	db "KIYO@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 59, HITMONLEE
			db $bb, $bb
			dw $0082, $0082, $0082, $0082, $0082
			db EARTHQUAKE, HI_JUMP_KICK, MEGA_KICK, COMET_PUNCH
	db 59, HITMONCHAN
			db $bb, $bb
			dw $0082, $0082, $0082, $0082, $0082
			db ROCK_SLIDE, COMET_PUNCH, MACH_PUNCH, SUBSTITUTE
	db 59, HITMONTOP
			db PERFECT_DV, PERFECT_DV
			dw $0082, $0082, $0082, $0082, $0082
			db ROCK_SLIDE, COMET_PUNCH, TRIPLE_KICK, SUBSTITUTE
	db -1 ; end

	; BLACKBELT_T (7)
	db "LUNG@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 41, MANKEY
			dw $0020, $0020, $0020, $0020, $0020
			db CROSS_CHOP, SCREECH, SEISMIC_TOSS, ROCK_SLIDE
	db 42, SANDSLASH
			dw $0020, $0020, $0020, $0020, $0020
			db METAL_CLAW, SAND_ATTACK, EARTHQUAKE, ROCK_SLIDE
	db 42, PRIMEAPE
			dw $0020, $0020, $0020, $0020, $0020
			db CROSS_CHOP, LEER, SUBSTITUTE, ROCK_SLIDE
	db -1 ; end

	; BLACKBELT_T (8) - Rematch Trainer with no code
	db "KENJI@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 54, HITMONLEE
			dw $006B, $006B, $006B, $006B, $006B
			db MEGA_KICK, JUMP_KICK, FORESIGHT, REVERSAL
	db 55, STEELIX
			dw $006B, $006B, $006B, $006B, $006B
			db IRON_TAIL, SAND_ATTACK, EARTHQUAKE, ROCK_SLIDE
	db 55, MACHAMP
			dw $006B, $006B, $006B, $006B, $006B
			db CROSS_CHOP, EARTHQUAKE, SCARY_FACE, ROCK_SLIDE
	db -1 ; end

	; BLACKBELT_T (9)
	db "WAI@", TRAINERTYPE_STAT_EXP
	db 69, MACHOKE
			dw $0152, $0152, $0152, $0152, $0152
	db 69, HITMONTOP
			dw $0152, $0152, $0152, $0152, $0152
	db 70, MACHAMP
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end
	
	; BLACKBELT_T (10) - New Victory Road trainer
	db "BOBBY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 60, HERACROSS
			dw $0082, $0082, $0082, $0082, $0082
			db MEGAHORN, SUBMISSION, COUNTER, SEISMIC_TOSS
	db 61, RHYDON
			dw $0082, $0082, $0082, $0082, $0082
			db CURSE, EARTHQUAKE, ZAP_CANNON, ROCK_SLIDE
	db 61, POLIWRATH
			dw $0082, $0082, $0082, $0082, $0082
			db HYDRO_PUMP, LOVELY_KISS, BELLY_DRUM, SUBMISSION
	db 62, HITMONTOP
			dw $0082, $0082, $0082, $0082, $0082
			db TRIPLE_KICK, COMET_PUNCH, SUBSTITUTE, ROCK_SLIDE
	db -1 ; end

ExecutiveMGroup:
	; EXECUTIVEM (1) is now Archer
	; EXECUTIVEM (2) - Radio Tower 2
	db "EXECUTIVE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 53, VENOMOTH
			dw $006B, $006B, $006B, $006B, $006B
			db LEECH_LIFE, SLUDGE_BOMB, SLEEP_POWDER, PSYCHIC_M
	db 52, NOCTOWL
			dw $006B, $006B, $006B, $006B, $006B
			db HYPNOSIS, DREAM_EATER, TAKE_DOWN, REFLECT
	db 54, VENUSAUR
			dw $006B, $006B, $006B, $006B, $006B
			db RAZOR_LEAF, SLUDGE_BOMB, LEECH_SEED, SLEEP_POWDER
	db 55, CROBAT
			dw $006B, $006B, $006B, $006B, $006B
			db LEECH_LIFE, SLUDGE_BOMB, TOXIC, FLY
	db -1 ; end

	; EXECUTIVEM (3) - Radio Tower
	db "EXECUTIVE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 51, KOFFING
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db DESTINY_BOND, SLUDGE_BOMB, FIRE_SPIN, SMOKESCREEN
	db 52, ARIADOS
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db LEECH_LIFE, SLUDGE_BOMB, TOXIC, CONSTRICT
	db 51, DUNSPARCE
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db STRENGTH, ROCK_SLIDE, SCREECH, SPITE
	db 53, DONPHAN
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db EARTHQUAKE, ROCK_SLIDE, BODY_SLAM, GROWL
	db 54, WEEZING
			db $cc, $cc ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db EXPLOSION, SLUDGE_BOMB, FIRE_SPIN, POISON_GAS
	db -1 ; end

	; EXECUTIVEM (4) - Hideout
	db "EXECUTIVE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 49, GOLBAT
			dw $006B, $006B, $006B, $006B, $006B
			db WING_ATTACK, SLUDGE, TOXIC, GIGA_DRAIN
	db 49, VENOMOTH
			dw $006B, $006B, $006B, $006B, $006B
			db LEECH_LIFE, SLUDGE, PSYCHIC_M, SLEEP_POWDER
	db 50, WEEZING
			dw $006B, $006B, $006B, $006B, $006B
			db DESTINY_BOND, SLUDGE_BOMB, FIRE_SPIN, POISON_GAS
	db 51, RATICATE
			dw $006B, $006B, $006B, $006B, $006B
			db BODY_SLAM, SUPER_FANG, TOXIC, SCREECH
	db -1 ; end

PsychicGroup:
	; PSYCHIC_T (1) - Ruins of Alph 2nd visit
	db "NATHAN@", TRAINERTYPE_STAT_EXP
	db 36, XATU
			dw $0020, $0020, $0020, $0020, $0020
	db 36, GIRAFARIG
			dw $0020, $0020, $0020, $0020, $0020
	db 37, WOBBUFFET
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; PSYCHIC_T (2)
	db "FRANKLIN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 83, WOBBUFFET
			dw $018D, $018D, $018D, $018D, $018D
			db SAFEGUARD, COUNTER, MIRROR_COAT, DESTINY_BOND
	db 83, ALAKAZAM
			dw $018D, $018D, $018D, $018D, $018D
			db DYNAMICPUNCH, PSYCHIC_M, RECOVER, THUNDERPUNCH
	db -1 ; end

	; PSYCHIC_T (3)
	db "HERMAN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, UNOWN
			dw $0173, $0173, $0173, $0173, $0173
			db PSYWAVE, HIDDEN_POWER, NO_MOVE, NO_MOVE
	db 81, EXEGGUTOR			
			dw $0173, $0173, $0173, $0173, $0173
			db STUN_SPORE, GIGA_DRAIN, LEECH_SEED, PSYCHIC_M
	db 81, HYPNO
			dw $0173, $0173, $0173, $0173, $0173
			db SLEEP_TALK, REST, CONFUSE_RAY, PSYCHIC_M
	db -1 ; end

	; PSYCHIC_T (4)
	db "FIDEL@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, MAGNETON
			dw $0173, $0173, $0173, $0173, $0173
			db THUNDER_WAVE, CONFUSE_RAY, SUBSTITUTE, THUNDERBOLT
	db 81, XATU
			dw $0173, $0173, $0173, $0173, $0173
			db PSYCHIC_M, DRILL_PECK, REST, SLEEP_TALK
	db -1 ; end

	; PSYCHIC_T (5)
	db "GREG@", TRAINERTYPE_STAT_EXP
	db 29, DROWZEE
			dw $000C, $000C, $000C, $000C, $000C
	db 30, HYPNO
			dw $000C, $000C, $000C, $000C, $000C
	db 31, KANGASKHAN
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; PSYCHIC_T (6)
	db "NORMAN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 38, SLOWKING
			dw $0020, $0020, $0020, $0020, $0020
			db WHIRLPOOL, FUTURE_SIGHT, SPIKES, ICE_PUNCH
	db 38, SLOWBRO
			dw $0020, $0020, $0020, $0020, $0020
			db WATERFALL, CONFUSION, WITHDRAW, DISABLE
	db -1 ; end

	; PSYCHIC_T (7)
	db "MARK@", TRAINERTYPE_STAT_EXP
	db 28, MR__MIME
			dw $0008, $0008, $0008, $0008, $0008
	db 28, NATU
			dw $0008, $0008, $0008, $0008, $0008
	db 29, KADABRA
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; PSYCHIC_T (8)
	db "PHIL@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 51, KADABRA
			dw $006B, $006B, $006B, $006B, $006B
			db PSYCHIC_M, FUTURE_SIGHT, THUNDER_WAVE, ICE_PUNCH
	db 52, XATU
			dw $006B, $006B, $006B, $006B, $006B
			db PSYCHIC_M, NIGHT_SHADE, CONFUSE_RAY, DRILL_PECK
	db -1 ; end

	; PSYCHIC_T (9)
	db "RICHARD@", TRAINERTYPE_STAT_EXP
	db 60, XATU
			dw $0082, $0082, $0082, $0082, $0082
	db 60, ESPEON
			dw $0082, $0082, $0082, $0082, $0082
	db -1 ; end

	; PSYCHIC_T (10)
	db "GILBERT@", TRAINERTYPE_STAT_EXP
	db 58, GIRAFARIG
			dw $0082, $0082, $0082, $0082, $0082
	db 58, EXEGGUTOR
			dw $0082, $0082, $0082, $0082, $0082
	db 59, ALAKAZAM
			dw $0082, $0082, $0082, $0082, $0082
	db -1 ; end

	; PSYCHIC_T (11)
	db "JARED@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, XATU
			dw $018D, $018D, $018D, $018D, $018D
			db REST, SLEEP_TALK, PSYCHIC_M, DRILL_PECK
	db 82, MR__MIME
			dw $018D, $018D, $018D, $018D, $018D
			db HYPNOSIS, THUNDER, PSYCHIC_M, REFLECT
	db 83, EXEGGUTOR
			dw $018D, $018D, $018D, $018D, $018D
			db PSYCHIC_M, GIGA_DRAIN, LEECH_SEED, SLEEP_POWDER
	db -1 ; end

	; PSYCHIC_T (12) ; Moved from subsequent to 1st trip on Fast Ship
	db "RODNEY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 68, UNOWN
			dw $0152, $0152, $0152, $0152, $0152
			db PSYWAVE, HIDDEN_POWER, NO_MOVE, NO_MOVE
	db 69, SLOWBRO
			dw $0152, $0152, $0152, $0152, $0152
			db PSYCHIC_M, SURF, LIGHT_SCREEN, THUNDER_WAVE
	db 70, HYPNO
			dw $0152, $0152, $0152, $0152, $0152
			db PSYCHIC_M, REST, POISON_GAS, SLEEP_TALK
	db -1 ; end
	
	; PSYCHIC_T (13) - Added to Saffron Gym
	db "IDAIN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, SLOWKING
			dw $018D, $018D, $018D, $018D, $018D
			db SURF, PSYCHIC_M, FIRE_BLAST, SPIKES
	db 82, GIRAFARIG
			dw $018D, $018D, $018D, $018D, $018D
			db CRUNCH, PSYCHIC_M, AMNESIA, BATON_PASS
	db 83, STARMIE
			dw $018D, $018D, $018D, $018D, $018D
			db WATERFALL, CONFUSE_RAY, PSYCHIC_M, RECOVER
	db 83, ESPEON
			dw $018D, $018D, $018D, $018D, $018D
			db SUNNY_DAY, PSYCHIC_M, MORNING_SUN, SOLARBEAM
	db -1 ; end
	
	; PSYCHIC_T (14) - Added to Mt. Silver
	db "CARL@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 92, SLOWBRO
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db PSYCHIC_M, THUNDER_WAVE, SURF, AMNESIA
	db 92, GIRAFARIG
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db PSYCHIC_M, CRUNCH, AGILITY, BATON_PASS
	db 93, HYPNO
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db CURSE, BODY_SLAM, REST, SLEEP_TALK
	db 93, WOBBUFFET
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db SAFEGUARD, COUNTER, MIRROR_COAT, DESTINY_BOND
	db -1 ; end

PicnickerGroup:
	; PICNICKER (1) - Rematch Trainer
	db "LIZ@", TRAINERTYPE_STAT_EXP
	db 14, NIDORAN_F
			dw $0002, $0002, $0002, $0002, $0002
	db 14, NIDORAN_M
			dw $0002, $0002, $0002, $0002, $0002
	db 16, MAREEP
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; PICNICKER (2) - Rematch Trainer
	db "GINA@", TRAINERTYPE_STAT_EXP
	db 23, CHIKORITA
			dw $0008, $0008, $0008, $0008, $0008
	db 23, SKIPLOOM
			dw $0008, $0008, $0008, $0008, $0008
	db 23, CUBONE
			dw $0008, $0008, $0008, $0008, $0008
	db 24, IVYSAUR
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; PICNICKER (3)
	db "BROOKE@", TRAINERTYPE_STAT_EXP
	db 25, PICHU
			dw $0008, $0008, $0008, $0008, $0008
	db 26, PIKACHU
			dw $0008, $0008, $0008, $0008, $0008
	db 27, ODDISH
			dw $0008, $0008, $0008, $0008, $0008
	db 27, ELEKID
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; PICNICKER (4)
	db "KIM@", TRAINERTYPE_STAT_EXP
	db 26, KADABRA
			dw $0008, $0008, $0008, $0008, $0008
	db 27, NINETALES
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; PICNICKER (5)
	db "CINDY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, WEEZING
			dw $0173, $0173, $0173, $0173, $0173
			db PERISH_SONG, FIRE_BLAST, FIRE_SPIN, SLUDGE_BOMB
	db 82, NIDOQUEEN
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, RAIN_DANCE, THUNDER, MOONLIGHT
	db -1 ; end

	; PICNICKER (6)
	db "HOPE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, AMPHAROS
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db THUNDER, COTTON_SPORE, RAIN_DANCE, LIGHT_SCREEN
	db 86, NIDOQUEEN
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db EARTHQUAKE, SLUDGE_BOMB, THUNDER, MOONLIGHT
	db -1 ; end

	; PICNICKER (7)
	db "SHARON@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 86, FURRET
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SHADOW_BALL, DOUBLE_EDGE, REST, CURSE
	db 86, RAPIDASH
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db EARTHQUAKE, FIRE_BLAST, FIRE_SPIN, TAKE_DOWN
	db -1 ; end

	; PICNICKER (8)
	db "DEBRA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 70, SEAKING
			dw $0152, $0152, $0152, $0152, $0152
			db SWORDS_DANCE, AGILITY, DOUBLE_EDGE, MEGAHORN
	db 70, JUMPLUFF
			dw $0152, $0152, $0152, $0152, $0152
			db TOXIC, LEECH_SEED, FLY, COTTON_SPORE
	db -1 ; end

	; PICNICKER (9)
	db "GINA@", TRAINERTYPE_STAT_EXP
	db 32, BAYLEEF
			dw $000C, $000C, $000C, $000C, $000C
	db 33, JUMPLUFF
			dw $000C, $000C, $000C, $000C, $000C
	db 32, MAROWAK
			dw $000C, $000C, $000C, $000C, $000C
	db 34, IVYSAUR
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; PICNICKER (10) - Rematch Trainer
	db "ERIN@", TRAINERTYPE_STAT_EXP
	db 32, FURRET
			dw $000C, $000C, $000C, $000C, $000C
	db 33, PONYTA
			dw $000C, $000C, $000C, $000C, $000C
	db 34, TANGELA
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; PICNICKER (11)
	db "LIZ@", TRAINERTYPE_STAT_EXP
	db 26, NIDORINO
			dw $0008, $0008, $0008, $0008, $0008
	db 27, FLAAFFY
			dw $0008, $0008, $0008, $0008, $0008
	db 27, NIDORINA
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; PICNICKER (12)
	db "LIZ@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 33, AMPHAROS
			dw $000C, $000C, $000C, $000C, $000C
			db THUNDERPUNCH, COTTON_SPORE, THUNDER_WAVE, GROWL
	db 33, NIDORINO
			dw $000C, $000C, $000C, $000C, $000C
			db DOUBLE_KICK, HORN_ATTACK, LOVELY_KISS, DIG
	db 34, NIDOQUEEN
			dw $000C, $000C, $000C, $000C, $000C
			db BODY_SLAM, HORN_ATTACK, LOVELY_KISS, BITE
	db -1 ; end

	; PICNICKER (13)
	db "HEIDI@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 76, JUMPLUFF
			dw $0173, $0173, $0173, $0173, $0173
			db GIGA_DRAIN, SUNNY_DAY, SLEEP_POWDER, SYNTHESIS
	db 76, EXEGGUTOR
			dw $0173, $0173, $0173, $0173, $0173
			db BARRAGE, SOLARBEAM, SUNNY_DAY, STUN_SPORE
	db -1 ; end

	; PICNICKER (14)
	db "EDNA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 75, NIDOQUEEN
			dw $0173, $0173, $0173, $0173, $0173
			db RAIN_DANCE, MOONLIGHT, LOVELY_KISS, EARTHQUAKE
	db 75, RAICHU
			dw $0173, $0173, $0173, $0173, $0173
			db THUNDER, SURF, RAIN_DANCE, SING
	db -1 ; end

	; PICNICKER (15)
	db "GINA@", TRAINERTYPE_STAT_EXP
	db 40, JUMPLUFF
			dw $0020, $0020, $0020, $0020, $0020
	db 41, MEGANIUM
			dw $0020, $0020, $0020, $0020, $0020
	db 41, MAROWAK
			dw $0020, $0020, $0020, $0020, $0020
	db 42, VENUSAUR
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; PICNICKER (16) - First rematch
	db "TIFFANY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 55, MUK
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, GIGA_DRAIN, DYNAMICPUNCH, LICK
	db 56, CLEFABLE
			dw $006B, $006B, $006B, $006B, $006B
			db MOONLIGHT, CHARM, DOUBLE_EDGE, FIRE_BLAST
	db -1 ; end

	; PICNICKER (17)
	db "TIFFANY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 67, MUK
			dw $0159, $0159, $0159, $0159, $0159
			db SLUDGE_BOMB, GIGA_DRAIN, DYNAMICPUNCH, LICK
	db 68, CLEFABLE
			dw $0159, $0159, $0159, $0159, $0159
			db MOONLIGHT, CHARM, DOUBLE_EDGE, FIRE_BLAST
	db -1 ; end

	; PICNICKER (18)
	db "ERIN@", TRAINERTYPE_STAT_EXP
	db 39, FURRET
			dw $0020, $0020, $0020, $0020, $0020
	db 40, RAPIDASH
			dw $0020, $0020, $0020, $0020, $0020
	db 40, TANGELA
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; PICNICKER (19)
	db "TANYA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 72, VICTREEBEL
			dw $0169, $0169, $0169, $0169, $0169
			db SOLARBEAM, RAZOR_LEAF, SLEEP_POWDER, SUNNY_DAY
	db 72, SUNFLORA
			dw $0169, $0169, $0169, $0169, $0169
			db SUNNY_DAY, SOLARBEAM, FLAMETHROWER, SYNTHESIS
	db 73, EXEGGUTOR
			dw $0169, $0169, $0169, $0169, $0169
			db BARRAGE, SOLARBEAM, PSYCHIC_M, SLEEP_POWDER
	db -1 ; end

	; PICNICKER (20) - First encounter
	db "TIFFANY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 47, MUK
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, GIGA_DRAIN, DYNAMICPUNCH, LICK
	db 48, CLEFABLE
			dw $006B, $006B, $006B, $006B, $006B
			db MOONLIGHT, CHARM, DOUBLE_EDGE, FIRE_BLAST
	db -1 ; end

	; PICNICKER (21)
	db "ERIN@", TRAINERTYPE_STAT_EXP
	db 47, TANGELA
			dw $006B, $006B, $006B, $006B, $006B
	db 47, RAICHU
			dw $006B, $006B, $006B, $006B, $006B
	db 48, FURRET
			dw $006B, $006B, $006B, $006B, $006B
	db 48, RAPIDASH
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; PICNICKER (22)
	db "LIZ@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 42, AMPHAROS
			dw $0020, $0020, $0020, $0020, $0020
			db THUNDERBOLT, COTTON_SPORE, THUNDER_WAVE, LIGHT_SCREEN
	db 42, NIDOKING
			dw $0020, $0020, $0020, $0020, $0020
			db BODY_SLAM, HORN_ATTACK, LOVELY_KISS, EARTHQUAKE
	db 43, NIDOQUEEN
			dw $0020, $0020, $0020, $0020, $0020
			db SLUDGE_BOMB, MOONLIGHT, LOVELY_KISS, DIG
	db -1 ; end

	; PICNICKER (23)
	db "LIZ@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 46, VICTREEBEL
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, GIGA_DRAIN, SLEEP_POWDER, GROWTH
	db 46, AMPHAROS
			dw $006B, $006B, $006B, $006B, $006B
			db THUNDER, COTTON_SPORE, RAIN_DANCE, LIGHT_SCREEN
	db 47, NIDOKING
			dw $006B, $006B, $006B, $006B, $006B
			db SURF, SLUDGE_BOMB, HORN_DRILL, EARTHQUAKE
	db 48, NIDOQUEEN
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, MOONLIGHT, LOVELY_KISS, EARTHQUAKE
	db -1 ; end

	; PICNICKER (24)
	db "GINA@", TRAINERTYPE_STAT_EXP
	db 46, MEGANIUM
			dw $006B, $006B, $006B, $006B, $006B
	db 47, JUMPLUFF
			dw $006B, $006B, $006B, $006B, $006B
	db 46, TANGELA
			dw $006B, $006B, $006B, $006B, $006B
	db 46, MAROWAK
			dw $006B, $006B, $006B, $006B, $006B
	db 48, VENUSAUR
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; PICNICKER (25)
	db "GINA@", TRAINERTYPE_STAT_EXP
	db 53, MEGANIUM
			dw $006B, $006B, $006B, $006B, $006B
	db 52, TANGELA
			dw $006B, $006B, $006B, $006B, $006B
	db 53, MAROWAK
			dw $006B, $006B, $006B, $006B, $006B
	db 54, VENUSAUR
			dw $006B, $006B, $006B, $006B, $006B
	db 55, JUMPLUFF
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; PICNICKER (26)
	db "TIFFANY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 78, MUK
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, GIGA_DRAIN, DYNAMICPUNCH, LICK
	db 80, CLEFABLE
			dw $0173, $0173, $0173, $0173, $0173
			db MOONLIGHT, CHARM, DOUBLE_EDGE, FIRE_BLAST
	db -1 ; end
	
	; PICNICKER (27) - New Ilex trainer
	db "BETH@", TRAINERTYPE_STAT_EXP
	db 21, FURRET
			dw $0008, $0008, $0008, $0008, $0008
	db 21, SKIPLOOM
			dw $0008, $0008, $0008, $0008, $0008
	db 22, REMORAID
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end
	
	; PICNICKER (28) - Ultimate
	db "FRIEDA@", TRAINERTYPE_STAT_EXP
	db 16, JIGGLYPUFF
			dw $0002, $0002, $0002, $0002, $0002
	db 16, GRIMER
			dw $0002, $0002, $0002, $0002, $0002
	db 18, NIDORINA
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end
	
	; PICNICKER (30) - Route 9
	db "ALICIA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 74, VILEPLUME
			dw $0173, $0173, $0173, $0173, $0173
			db RAIN_DANCE, MOONLIGHT, GIGA_DRAIN, SLUDGE_BOMB
	db 74, UMBREON
			dw $0173, $0173, $0173, $0173, $0173
			db TOXIC, PURSUIT, CHARM, MOONLIGHT
	db 74, VICTREEBEL
			dw $0173, $0173, $0173, $0173, $0173
			db SWORDS_DANCE, SLEEP_POWDER, SLUDGE_BOMB, GIGA_DRAIN
	db -1 ; end
	
	; PICNICKER (31) - Rock Tunnel
	db "SOFIA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 77, WIGGLYTUFF
			dw $0173, $0173, $0173, $0173, $0173
			db THUNDER, BODY_SLAM, REST, SLEEP_TALK
	db 77, PIDGEOT
			dw $0173, $0173, $0173, $0173, $0173
			db RAZOR_WIND, WHIRLWIND, DOUBLE_EDGE, STEEL_WING
	db 78, PERSIAN
			dw $0173, $0173, $0173, $0173, $0173
			db CRUNCH, SWAGGER, HYPNOSIS, SUBSTITUTE
	db -1 ; end
	
	; PICNICKER (32) - Rock Tunnel
	db "LEAH@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 78, RATICATE
			dw $0173, $0173, $0173, $0173, $0173
			db BODY_SLAM, SUPER_FANG, SUBSTITUTE, SHADOW_BALL
	db 79, VICTREEBEL
			dw $0173, $0173, $0173, $0173, $0173
			db SLEEP_POWDER, GIGA_DRAIN, SWORDS_DANCE, SLUDGE_BOMB
	db 79, CLEFABLE
			dw $0173, $0173, $0173, $0173, $0173
			db BELLY_DRUM, MOONLIGHT, DOUBLE_EDGE, SHADOW_BALL
	db -1 ; end

CamperGroup:
	; CAMPER (1)
	db "ROLAND@", TRAINERTYPE_STAT_EXP
	db 15, NIDORAN_M
			dw $0002, $0002, $0002, $0002, $0002
	db 17, DUNSPARCE
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; CAMPER (2) - Rematch Trainer
	db "TODD@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 24, MEOWTH
			dw $0008, $0008, $0008, $0008, $0008
			db FAINT_ATTACK, RAGE, FURY_SWIPES, HYPNOSIS
	db 24, PSYDUCK
			dw $0008, $0008, $0008, $0008, $0008
			db BUBBLEBEAM, CONFUSION, DISABLE, SCREECH
	db 25, PIDGEOTTO
			dw $0008, $0008, $0008, $0008, $0008
			db WING_ATTACK, MUD_SLAP, QUICK_ATTACK, WHIRLWIND
	db -1 ; end

	; CAMPER (3)
	db "IVAN@", TRAINERTYPE_STAT_EXP
	db 26, DIGLETT
			dw $0008, $0008, $0008, $0008, $0008
	db 26, MACHOP
			dw $0008, $0008, $0008, $0008, $0008
	db 27, TENTACOOL
			dw $0008, $0008, $0008, $0008, $0008
	db 27, GRAVELER
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; CAMPER (4)
	db "ELLIOT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 27, NIDORINO
			dw $0008, $0008, $0008, $0008, $0008
			db DOUBLE_KICK, HORN_ATTACK, POISON_STING, LOVELY_KISS
	db 27, SANDSLASH
			dw $0008, $0008, $0008, $0008, $0008
			db DIG, METAL_CLAW, SWIFT, SAND_ATTACK
	db -1 ; end

	; CAMPER (5)
	db "BARRY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, MUK
			dw $0173, $0173, $0173, $0173, $0173
			db GIGA_DRAIN, ACID_ARMOR, EXPLOSION, SLUDGE_BOMB
	db 82, NIDOKING
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, ICE_BEAM, THUNDERBOLT, LOVELY_KISS
	db -1 ; end

	; CAMPER (6)
	db "LLOYD@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 76, RAPIDASH
			dw $0173, $0173, $0173, $0173, $0173
			db FIRE_BLAST, TAKE_DOWN, HI_JUMP_KICK, HORN_DRILL
	db 77, NIDOKING
			dw $0173, $0173, $0173, $0173, $0173
			db LOVELY_KISS, EARTHQUAKE, HORN_DRILL, THUNDER
	db -1 ; end

	; CAMPER (7)
	db "DEAN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 74, GOLDUCK
			dw $0173, $0173, $0173, $0173, $0173
			db THUNDER, CROSS_CHOP, HYPNOSIS, WATERFALL
	db 75, SANDSLASH
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, IRON_TAIL, CUT, SUBSTITUTE
	db 74, PIDGEOT
			dw $0173, $0173, $0173, $0173, $0173
			db RAZOR_WIND, WHIRLWIND, DOUBLE_EDGE, STEEL_WING
	db -1 ; end

	; CAMPER (8)
	db "SID@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 73, DUGTRIO
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, ROCK_SLIDE, SLUDGE_BOMB, SUBSTITUTE
	db 73, PRIMEAPE
			dw $0173, $0173, $0173, $0173, $0173
			db CROSS_CHOP, EARTHQUAKE, MEDITATE, THUNDER
	db 74, POLIWRATH
			dw $0173, $0173, $0173, $0173, $0173
			db LOVELY_KISS, HYDRO_PUMP, SUBMISSION, DREAM_EATER
	db 75, BEEDRILL
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, SWORDS_DANCE, TWINEEDLE, HYPER_BEAM
	db -1 ; end

	; CAMPER (11)
	db "TED@", TRAINERTYPE_STAT_EXP
	db 33, MANKEY
			dw $000C, $000C, $000C, $000C, $000C
	db 33, WEEPINBELL
			dw $000C, $000C, $000C, $000C, $000C
	db 33, YANMA
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; CAMPER (12) - Rematch Trainer
	db "TODD@", TRAINERTYPE_STAT_EXP
	db 33, GRAVELER
			dw $000C, $000C, $000C, $000C, $000C
	db 33, PERSIAN
			dw $000C, $000C, $000C, $000C, $000C
	db 34, GOLDUCK
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; CAMPER (13) - Rematch Trainer
	db "TODD@", TRAINERTYPE_STAT_EXP
	db 40, GRAVELER
			dw $0020, $0020, $0020, $0020, $0020
	db 41, PERSIAN
			dw $0020, $0020, $0020, $0020, $0020
	db 41, SLUGMA
			dw $0020, $0020, $0020, $0020, $0020
	db 42, GOLDUCK
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; CAMPER (18)
	db "JERRY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 85, AERODACTYL
			dw $018D, $018D, $018D, $018D, $018D
			db ROCK_SLIDE, RAZOR_WIND, EARTHQUAKE, SANDSTORM
	db 86, SANDSLASH
			dw $018D, $018D, $018D, $018D, $018D
			db EARTHQUAKE, IRON_TAIL, ROCK_SLIDE, SWORDS_DANCE
	db -1 ; end

	; CAMPER (19)
	db "SPENCER@", TRAINERTYPE_STAT_EXP
	db 46, GOLBAT
			dw $006B, $006B, $006B, $006B, $006B
	db 47, SANDSLASH
			dw $006B, $006B, $006B, $006B, $006B
	db 47, JOLTEON
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; CAMPER (20) - Rematch Trainer
	db "TODD@", TRAINERTYPE_STAT_EXP
	db 47, GOLEM
			dw $006B, $006B, $006B, $006B, $006B
	db 48, MAGCARGO
			dw $006B, $006B, $006B, $006B, $006B
	db 48, PERSIAN
			dw $006B, $006B, $006B, $006B, $006B
	db 48, GOLDUCK
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; CAMPER (21) - Rematch Trainer
	db "TODD@", TRAINERTYPE_STAT_EXP
	db 53, PERSIAN
			dw $006B, $006B, $006B, $006B, $006B
	db 54, GOLDUCK
			dw $006B, $006B, $006B, $006B, $006B
	db 55, GOLEM
			dw $006B, $006B, $006B, $006B, $006B
	db 56, MAGCARGO
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; CAMPER (22)
	db "QUENTIN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 53, FEAROW
			dw $006B, $006B, $006B, $006B, $006B
			db DRILL_PECK, DOUBLE_EDGE, PURSUIT, MUD_SLAP
	db 54, PRIMEAPE
			dw $006B, $006B, $006B, $006B, $006B
			db CROSS_CHOP, SCREECH, ROCK_SLIDE, SEISMIC_TOSS
	db 55, TAUROS
			dw $006B, $006B, $006B, $006B, $006B
			db THRASH, HORN_DRILL, EARTHQUAKE, MEGAHORN
	db -1 ; end
	
	; CAMPER (23) - Ultimate
	db "ARTHUR@", TRAINERTYPE_NORMAL
	db 7, GROWLITHE
	db 8, GEODUDE
	db 9, OMANYTE
	db -1 ; end
	
	; CAMPER (24) - Route 6
	db "VERGIL@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 71, FORRETRESS
			dw $0169, $0169, $0169, $0169, $0169
			db SPIKES, EXPLOSION, CURSE, BATON_PASS
	db 72, SANDSLASH
			dw $0169, $0169, $0169, $0169, $0169
			db EARTHQUAKE, IRON_TAIL, ROCK_SLIDE, SWORDS_DANCE
	db 73, ARCANINE
			dw $0169, $0169, $0169, $0169, $0169
			db FLAMETHROWER, EXTREMESPEED, STRENGTH, CURSE
	db -1 ; end
	
	; CAMPER (25) - Route 9
	db "DREW@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 74, CHARIZARD
			dw $0173, $0173, $0173, $0173, $0173
			db FIRE_BLAST, DRAGONBREATH, EARTHQUAKE, SEISMIC_TOSS
	db 74, FEAROW
			dw $0173, $0173, $0173, $0173, $0173
			db DRILL_PECK, DOUBLE_EDGE, PURSUIT, SUBSTITUTE
	db 74, ARBOK
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, SLUDGE_BOMB, SUBSTITUTE, GLARE
	db 75, ARCANINE
			dw $0173, $0173, $0173, $0173, $0173
			db FLAMETHROWER, EXTREMESPEED, STRENGTH, CURSE
	db -1 ; end
	
	; CAMPER (26) - Rock Tunnel
	db "SEKHER@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 78, NINETALES
			db $bb, $bb ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db HYPNOSIS, FLAMETHROWER, REFLECT, SUNNY_DAY
	db 78, SUDOWOODO
			db $bb, $bb ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db LEECH_SEED, ROCK_SLIDE, SYNTHESIS, SLAM
	db 78, PRIMEAPE
			db $bb, $bb ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db MEDITATE, ROCK_SLIDE, CROSS_CHOP, DOUBLE_EDGE
	db 79, SNEASEL
			db $bb, $bb ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db BEAT_UP, ICE_BEAM, MOONLIGHT, REFLECT
	db 80, SANDSLASH
			db $dd, $dd ; atk|def, spd|spc
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, SWORDS_DANCE, CUT, ROCK_SLIDE
	db -1 ; end
	
	; CAMPER (27) - Added to Route 12 (Francis, not Justin in constants)
	db "JUSTIN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 80, NIDORINO
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, LOVELY_KISS, THUNDER, ICE_BEAM
	db 80, PINSIR
			dw $0173, $0173, $0173, $0173, $0173
			db MEGAHORN, VICEGRIP, SEISMIC_TOSS, ROCK_SLIDE
	db 82, NIDOKING
			dw $0173, $0173, $0173, $0173, $0173
			db SLUDGE_BOMB, EARTHQUAKE, HORN_DRILL, ICE_BEAM
	db -1 ; end
	
	; CAMPER (28) - Added to Silver Cave
	db "PATRICK@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 93, GOLEM
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db EARTHQUAKE, FIRE_BLAST, EXPLOSION, ROCK_SLIDE
	db 93, NINETALES
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db HYPNOSIS, FLAMETHROWER, REFLECT, DREAM_EATER
	db 94, NIDOKING
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db SLUDGE_BOMB, EARTHQUAKE, LOVELY_KISS, ICE_BEAM
	db 94, GOLDUCK
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db HYDRO_PUMP, HYPNOSIS, CROSS_CHOP, THUNDER
	db -1 ; end

ExecutiveFGroup:
	; EXECUTIVEF (1) - Radio Tower 2
	db "EXECUTIVE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 54, ARBOK
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, GLARE, EARTHQUAKE, GIGA_DRAIN
	db 53, UMBREON
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db PURSUIT, MOONLIGHT, TOXIC, CHARM
	db 55, VILEPLUME
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db RAIN_DANCE, PETAL_DANCE, SLUDGE_BOMB, MOONLIGHT
	db 56, MURKROW
			db $cc, $cc
			dw $006B, $006B, $006B, $006B, $006B
			db BEAT_UP, MEAN_LOOK, TOXIC, FLY
	db 54, TENTACRUEL
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db WATERFALL, SUBSTITUTE, SLUDGE_BOMB, BARRIER
	db 55, NIDOQUEEN
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db EARTHQUAKE, RAIN_DANCE, THUNDER, MOONLIGHT
	db -1 ; end

	; EXECUTIVEF (2) - Hideout
	db "EXECUTIVE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 49, ARBOK
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, GLARE, EARTHQUAKE, SUBSTITUTE
	db 48, UMBREON
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db PURSUIT, MOONLIGHT, TOXIC, CHARM
	db 49, TENTACOOL
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db HYDRO_PUMP, RAIN_DANCE, SLUDGE_BOMB, BARRIER
	db 50, VILEPLUME
			db $bb, $bb ; atk|def, spd|spc
			dw $006B, $006B, $006B, $006B, $006B
			db SLEEP_POWDER, LEECH_SEED, SLUDGE_BOMB, MOONLIGHT
	db 51, MURKROW
			db $cc, $cc
			dw $006B, $006B, $006B, $006B, $006B
			db FAINT_ATTACK, NIGHT_SHADE, TOXIC, SKY_ATTACK
	db -1 ; end

SageGroup:
	; SAGE (1)
	db "CHOW@", TRAINERTYPE_NORMAL
	db  8, BELLSPROUT
	db  9, BELLSPROUT
	db -1 ; end

	; SAGE (2)
	db "NICO@", TRAINERTYPE_NORMAL
	db  7, BELLSPROUT
	db  7, GEODUDE
	db  8, ODDISH
	db -1 ; end

	; SAGE (3)
	db "JIN@", TRAINERTYPE_NORMAL
	db 10, HOPPIP
	db 10, BELLSPROUT
	db -1 ; end

	; SAGE (4)
	db "TROY@", TRAINERTYPE_NORMAL
	db 10, PARAS
	db 10, HOOTHOOT
	db 11, BELLSPROUT
	db -1 ; end

	; SAGE (5)
	db "JEFFREY@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 34, BELLOSSOM
			dw $000C, $000C, $000C, $000C, $000C
			db MEGA_DRAIN, STUN_SPORE, MOONLIGHT, SHADOW_BALL
	db 34, HAUNTER
			dw $000C, $000C, $000C, $000C, $000C
			db MEAN_LOOK, DESTINY_BOND, CURSE, DESTINY_BOND
	db -1 ; end

	; SAGE (6)
	db "PING@", TRAINERTYPE_STAT_EXP
	db 32, HOUNDOUR
			dw $000C, $000C, $000C, $000C, $000C
	db 33, GASTLY
			dw $000C, $000C, $000C, $000C, $000C
	db 33, HAUNTER
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; SAGE (7)
	db "EDMOND@", TRAINERTYPE_NORMAL
	db  8, GEODUDE
	db  8, HOOTHOOT
	db  8, BELLSPROUT
	db -1 ; end

	; SAGE (8)
	db "NEAL@", TRAINERTYPE_NORMAL
	db  9, HOOTHOOT
	db 10, GROWLITHE
	db 10, SUNKERN
	db -1 ; end

	; SAGE (9)
	db "JASON@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP
	db 11, BELLSPROUT
			db $bb, $bb
			dw $0002, $0002, $0002, $0002, $0002
	db 11, HOOTHOOT
			db $bb, $bb
			dw $0002, $0002, $0002, $0002, $0002
	db 12, WEEPINBELL
			db $bb, $bb
			dw $0002, $0002, $0002, $0002, $0002
	db 13, EXEGGCUTE
			db $cc, $cc
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; SAGE (10)
	db "GAKU@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 55, NOCTOWL
			dw $006B, $006B, $006B, $006B, $006B
			db HYPNOSIS, DREAM_EATER, TAKE_DOWN, REFLECT
	db 56, FLAREON
			dw $006B, $006B, $006B, $006B, $006B
			db GROWTH, FLAMETHROWER, FIRE_SPIN, ZAP_CANNON
	db -1 ; end

	; SAGE (11)
	db "MASA@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 55, NOCTOWL
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db HYPNOSIS, DREAM_EATER, TAKE_DOWN, REFLECT
	db 56, JOLTEON
			db $fd, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db THUNDERBOLT, HIDDEN_POWER, GROWTH, THUNDER_WAVE
	db -1 ; end

	; SAGE (12)
	db "KOJI@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 55, NOCTOWL
			dw $006B, $006B, $006B, $006B, $006B
			db HYPNOSIS, DREAM_EATER, TAKE_DOWN, NIGHT_SHADE
	db 56, VAPOREON
			dw $006B, $006B, $006B, $006B, $006B
			db ICE_BEAM, GROWTH, SURF, REST
	db -1 ; end

MediumGroup:
	; MEDIUM (1)
	db "MARTHA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 32, GASTLY
			dw $000C, $000C, $000C, $000C, $000C
			db LICK, CONFUSE_RAY, CURSE, CONFUSE_RAY
	db 33, HAUNTER
			dw $000C, $000C, $000C, $000C, $000C
			db MEAN_LOOK, CONFUSE_RAY, CURSE, SPITE
	db 34, GENGAR
			dw $000C, $000C, $000C, $000C, $000C
			db HYPNOSIS, CONFUSE_RAY, DREAM_EATER, DESTINY_BOND
	db -1 ; end

	; MEDIUM (2)
	db "GRACE@", TRAINERTYPE_STAT_EXP
	db 34, HAUNTER
			dw $000C, $000C, $000C, $000C, $000C
	db 35, MURKROW
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; MEDIUM (6)
	db "REBECCA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, HYPNO
			dw $018D, $018D, $018D, $018D, $018D
			db REST, THUNDER_WAVE, SEISMIC_TOSS, REFLECT
	db 83, HYPNO
			dw $018D, $018D, $018D, $018D, $018D
			db SEISMIC_TOSS, PSYCHIC_M, REST, SLEEP_TALK
	db -1 ; end

	; MEDIUM (7)
	db "DORIS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 83, JYNX
			dw $018D, $018D, $018D, $018D, $018D
			db BLIZZARD, PSYCHIC_M, LOVELY_KISS, NIGHTMARE
	db 83, SLOWBRO
			dw $018D, $018D, $018D, $018D, $018D
			db AMNESIA, PSYCHIC_M, WATERFALL, ICE_BEAM
	db -1 ; end

BoarderGroup:
	; BOARDER (1)
	db "RONALD@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 50, SEEL
			dw $006B, $006B, $006B, $006B, $006B
			db SAFEGUARD, ICE_BEAM, SURF, PERISH_SONG
	db 50, SMOOCHUM
			dw $006B, $006B, $006B, $006B, $006B
			db PSYCHIC_M, BLIZZARD, PERISH_SONG, SING
	db 51, DEWGONG
			dw $006B, $006B, $006B, $006B, $006B
			db TAKE_DOWN, ICE_BEAM, SURF, HORN_DRILL
	db -1 ; end

	; BOARDER (2)
	db "BRAD@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 50, SWINUB
			dw $006B, $006B, $006B, $006B, $006B
			db BLIZZARD, EARTHQUAKE, TAKE_DOWN, AMNESIA
	db 50, SWINUB
			dw $006B, $006B, $006B, $006B, $006B
			db BLIZZARD, EARTHQUAKE, TAKE_DOWN, MIST
	db 51, DELIBIRD
			dw $006B, $006B, $006B, $006B, $006B
			db ICE_BEAM, DRILL_PECK, PRESENT, ATTRACT
	db -1 ; end

	; BOARDER (3)
	db "DOUGLAS@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 50, CLOYSTER
			dw $006B, $006B, $006B, $006B, $006B
			db WHIRLPOOL, ICE_BEAM, SHADOW_BALL, SPIKES
	db 49, SHELLDER
			dw $006B, $006B, $006B, $006B, $006B
			db CLAMP, BLIZZARD, LICK, SUPERSONIC
	db 51, CLOYSTER
			dw $006B, $006B, $006B, $006B, $006B
			db SURF, ICE_BEAM, SHADOW_BALL, SPIKE_CANNON
	db -1 ; end
	
	; BOARDER (4) - New Ice Path trainer
	db "THEO@", TRAINERTYPE_STAT_EXP
	db 52, SHELLDER
			dw $006B, $006B, $006B, $006B, $006B
	db 52, STANTLER
			dw $006B, $006B, $006B, $006B, $006B
	db 53, CLOYSTER
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end
	
	; BOARDER (5) - New Ice Path trainer
	db "JORDAN@", TRAINERTYPE_STAT_EXP
	db 53, SNEASEL
			dw $006B, $006B, $006B, $006B, $006B
	db 54, PILOSWINE
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end
	
	; BOARDER (6) - Added to Silver Cave
	db "JOHN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 94, PILOSWINE
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db EARTHQUAKE, BLIZZARD, REST, SLEEP_TALK
	db 94, DEWGONG
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db MEGAHORN, ICE_BEAM, REST, SURF
	db 95, SNEASEL
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db BEAT_UP, ICE_BEAM, PURSUIT, MOONLIGHT
	db 95, LAPRAS
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db THUNDER, CONFUSE_RAY, ICE_BEAM, SURF
	db -1 ; end

PokefanMGroup:
	; POKEFANM (1)
	db "WILLIAM@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 28, PIKACHU
			dw $0008, $0008, $0008, $0008, $0008
			db SPARK, SLAM, DOUBLE_TEAM, THUNDER_WAVE
	db 29, RAICHU
			dw $0008, $0008, $0008, $0008, $0008
			db THUNDERPUNCH, SLAM, TAIL_WHIP, THUNDER_WAVE
	db -1 ; end

	; POKEFANM (2)
	db "DEREK@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 40, PIKACHU
			dw $0020, $0020, $0020, $0020, $0020
			db LIGHT_BALL
			db THUNDERPUNCH, SURF, DOUBLE_TEAM, SLAM
	db -1 ; end

	; POKEFANM (3)
	db "ROBERT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 79, EXEGGUTOR
			dw $0173, $0173, $0173, $0173, $0173
			db BARRAGE, GIGA_DRAIN, LEECH_SEED, STUN_SPORE
	db 80, QUAGSIRE
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, ROCK_SLIDE, SLUDGE_BOMB, BELLY_DRUM
	db -1 ; end

	; POKEFANM (4)
	db "JOSHUA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 80, PIKACHU
			dw $0173, $0173, $0173, $0173, $0173
			db NO_ITEM
			db THUNDER, RAIN_DANCE, SURF, SING
	db 80, RAICHU
			dw $0173, $0173, $0173, $0173, $0173
			db NO_ITEM
			db THUNDER, RAIN_DANCE, SURF, FLASH
	db 81, PIKACHU
			dw $0173, $0173, $0173, $0173, $0173
			db LIGHT_BALL
			db THUNDERBOLT, DOUBLE_TEAM, SURF, ENCORE
	db 81, RAICHU
			dw $0173, $0173, $0173, $0173, $0173
			db NO_ITEM
			db THUNDER, SUBSTITUTE, SURF, FLASH
	db -1 ; end

	; POKEFANM (5)
	db "CARTER@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, VENUSAUR
			dw $0173, $0173, $0173, $0173, $0173
			db SWORDS_DANCE, BODY_SLAM, SLUDGE_BOMB, SLEEP_POWDER
	db 81, CHARIZARD
			dw $0173, $0173, $0173, $0173, $0173
			db OUTRAGE, FLAMETHROWER, ROCK_SLIDE, FLASH
	db 81, BLASTOISE
			dw $0173, $0173, $0173, $0173, $0173
			db REST, SLEEP_TALK, SURF, IRON_TAIL
	db -1 ; end

	; POKEFANM (6)
	db "TREVOR@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 82, GOLDUCK
			dw $0173, $0173, $0173, $0173, $0173
			db HYDRO_PUMP, PSYCHIC_M, CROSS_CHOP, RECOVER
	db 82, TAUROS
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, DOUBLE_EDGE, REST, SLEEP_TALK
	db -1 ; end

	; POKEFANM (7)
	db "BRANDON@", TRAINERTYPE_STAT_EXP
	db 24, SNUBBULL
			dw $0008, $0008, $0008, $0008, $0008
	db 24, JIGGLYPUFF
			dw $0008, $0008, $0008, $0008, $0008
	db 24, PIKACHU
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; POKEFANM (8)
	db "JEREMY@", TRAINERTYPE_STAT_EXP
	db 69, MEOWTH
			dw $0152, $0152, $0152, $0152, $0152
	db 69, MEOWTH
			dw $0152, $0152, $0152, $0152, $0152
	db 70, TYRANITAR
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; POKEFANM (9)
	db "COLIN@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 69, DELIBIRD
			dw $0152, $0152, $0152, $0152, $0152
			db ICE_BEAM, DRILL_PECK, SPIKES, PRESENT
	db 69, DELIBIRD
			dw $0152, $0152, $0152, $0152, $0152
			db BLIZZARD, FLY, TOXIC, THIEF
	db -1 ; end

	; POKEFANM (12)
	db "ALEX@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, NIDOKING
			dw $0173, $0173, $0173, $0173, $0173
			db EARTHQUAKE, LOVELY_KISS, THUNDER, ICE_BEAM
	db 81, SLOWKING
			dw $0173, $0173, $0173, $0173, $0173
			db WATERFALL, PSYCHIC_M, DISABLE, THUNDER_WAVE
	db 81, SEAKING
			dw $0173, $0173, $0173, $0173, $0173
			db MEGAHORN, DRILL_PECK, WATERFALL, DOUBLE_EDGE
	db -1 ; end

	; POKEFANM (13)
	db "REX@", TRAINERTYPE_STAT_EXP
	db 71, PHANPY
			dw $0169, $0169, $0169, $0169, $0169
	db 72, URSARING
			dw $0169, $0169, $0169, $0169, $0169
	db -1 ; end

	; POKEFANM (14)
	db "ALLAN@", TRAINERTYPE_STAT_EXP
	db 71, TEDDIURSA
			dw $0169, $0169, $0169, $0169, $0169
	db 72, DONPHAN
			dw $0169, $0169, $0169, $0169, $0169
	db -1 ; end
	
	; POKEFANM (15) - Added to Route 13
	db "BOONE@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 81, RAPIDASH
			dw $0173, $0173, $0173, $0173, $0173
			db FIRE_BLAST, HI_JUMP_KICK, FIRE_SPIN, TAKE_DOWN
	db 81, BUTTERFREE
			dw $0173, $0173, $0173, $0173, $0173
			db STUN_SPORE, GIGA_DRAIN, PSYCHIC_M, REFLECT
	db 82, LICKITUNG
			dw $0173, $0173, $0173, $0173, $0173
			db SLAM, SWORDS_DANCE, SURF, WRAP
	db -1 ; end

KimonoGirlGroup:
	; KIMONO_GIRL (2)
	db "NAOKO@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 32, ESPEON
			db $bb, $bb
			dw $000C, $000C, $000C, $000C, $000C
			db GROWTH, BATON_PASS, PSYBEAM, MORNING_SUN
	db 33, ESPEON
			db $ec, $cc
			dw $000C, $000C, $000C, $000C, $000C
			db GROWTH, PSYBEAM, MORNING_SUN, HIDDEN_POWER
	db -1 ; end

	; KIMONO_GIRL (3)
	db "SAYO@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 32, UMBREON
			db $bb, $bb
			dw $000C, $000C, $000C, $000C, $000C
			db GROWTH, BATON_PASS, PURSUIT, MOONLIGHT
	db 33, UMBREON
			db $cc, $cc
			dw $000C, $000C, $000C, $000C, $000C
			db GROWTH, FAINT_ATTACK, TOXIC, MOONLIGHT
	db -1 ; end

	; KIMONO_GIRL (4)
	db "ZUKI@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 32, FLAREON
			db $fd, $bb
			dw $000C, $000C, $000C, $000C, $000C
			db GROWTH, BATON_PASS, FLAME_WHEEL, HIDDEN_POWER
	db 33, FLAREON
			db $cc, $cc
			dw $000C, $000C, $000C, $000C, $000C
			db AGILITY, FLAME_WHEEL, FIRE_SPIN, ZAP_CANNON
	db -1 ; end

	; KIMONO_GIRL (5)
	db "KUNI@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 32, VAPOREON
			db $bb, $bb
			dw $000C, $000C, $000C, $000C, $000C
			db GROWTH, BATON_PASS, BUBBLEBEAM, ACID_ARMOR
	db 33, VAPOREON
			db $cc, $cc
			dw $000C, $000C, $000C, $000C, $000C
			db AURORA_BEAM, GROWTH, BUBBLEBEAM, REST
	db -1 ; end

	; KIMONO_GIRL (6)
	db "MIKI@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 32, JOLTEON
			db $bb, $bb
			dw $000C, $000C, $000C, $000C, $000C
			db GROWTH, BATON_PASS, SPARK, THUNDER_WAVE
	db 33, JOLTEON
			db $fd, $cc
			dw $000C, $000C, $000C, $000C, $000C
			db SPARK, HIDDEN_POWER, GROWTH, THUNDER_WAVE
	db -1 ; end

TwinsGroup:
	; TWINS (1)
	db "AMY & MAY@", TRAINERTYPE_STAT_EXP
	db 20, SPINARAK
			dw $0002, $0002, $0002, $0002, $0002
	db 20, LEDIAN
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; TWINS (2)
	db "ANN & ANNE@", TRAINERTYPE_STAT_EXP
	db 32, CLEFABLE
			dw $000C, $000C, $000C, $000C, $000C
	db 32, WIGGLYTUFF
			dw $000C, $000C, $000C, $000C, $000C
	db -1 ; end

	; TWINS (6)
	db "JO & ZOE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 73, VILEPLUME
			db $bb, $bb
			dw $0169, $0169, $0169, $0169, $0169
			db SLEEP_POWDER, RAIN_DANCE, MOONLIGHT, PETAL_DANCE
	db 73, VICTREEBEL
			db $fd, $bb
			dw $0169, $0169, $0169, $0169, $0169
			db SLEEP_POWDER, GROWTH, RAZOR_LEAF, HIDDEN_POWER
	db -1 ; end

	; TWINS (7)
	db "MEG & PEG@", TRAINERTYPE_STAT_EXP
	db 69, URSARING
			dw $0152, $0152, $0152, $0152, $0152
	db 69, DONPHAN
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; TWINS (9)
	db "LEA & PIA@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 58, DRAGONAIR
			dw $0082, $0082, $0082, $0082, $0082
			db DRAGON_RAGE, SLAM, THUNDER_WAVE, ICE_BEAM
	db 58, DRAGONAIR
			dw $0082, $0082, $0082, $0082, $0082
			db DRAGONBREATH, SLAM, THUNDER_WAVE, FLAMETHROWER
	db -1 ; end

PokefanFGroup:
	; POKEFANF (1)
	db "BEVERLY@", TRAINERTYPE_STAT_EXP
	db 26, SNUBBULL
			dw $0008, $0008, $0008, $0008, $0008
	db 27, WARTORTLE
			dw $0008, $0008, $0008, $0008, $0008
	db 27, TOGETIC
			dw $0008, $0008, $0008, $0008, $0008
	db 29, CHANSEY
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; POKEFANF (2)
	db "RUTH@", TRAINERTYPE_STAT_EXP
	db 37, PIKACHU
			dw $0020, $0020, $0020, $0020, $0020
	db 37, DRATINI
			dw $0020, $0020, $0020, $0020, $0020
	db 38, RAICHU
			dw $0020, $0020, $0020, $0020, $0020
	db -1 ; end

	; POKEFANF (5)
	db "GEORGIA@", TRAINERTYPE_STAT_EXP
	db 68, SENTRET
			dw $0152, $0152, $0152, $0152, $0152
	db 69, SENTRET
			dw $0152, $0152, $0152, $0152, $0152
	db 70, FURRET
			dw $0152, $0152, $0152, $0152, $0152
	db 70, QWILFISH
			dw $0152, $0152, $0152, $0152, $0152
	db -1 ; end

	; POKEFANF (6)
	db "JAIME@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 38, PORYGON
			dw $0020, $0020, $0020, $0020, $0020
			db PSYBEAM, TRI_ATTACK, RECOVER, THUNDER_WAVE
	db 39, PERSIAN
			dw $0020, $0020, $0020, $0020, $0020
			db SLASH, SCREECH, HYPNOSIS, FAINT_ATTACK
	db -1 ; end

RedGroup:
	; RED (1)
	db "RED@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 97, PIKACHU
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db LIGHT_BALL
			db SING, SURF, THUNDERBOLT, SUBSTITUTE
	db 98, SNORLAX
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db MYSTERYBERRY
			db MEGA_KICK, SLEEP_TALK, REST, EARTHQUAKE
	db 96, ESPEON
			db $ad, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db TWISTEDSPOON
			db PSYCHIC_M, MORNING_SUN, GROWTH, HIDDEN_POWER
	db 99, POLIWRATH
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db QUICK_CLAW
			db STRENGTH, HYDRO_PUMP, EARTHQUAKE, LOVELY_KISS
	db 99, MEWTWO
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db BERSERK_GENE
			db SUBMISSION, RECOVER, PSYCHIC_M, SHADOW_BALL
	db 100, CHARIZARD
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db GOLD_B_JUICE
			db FIRE_BLAST, BELLY_DRUM, EARTHQUAKE, SUBMISSION
	db -1 ; end
	
	; RED (2) - Rematch battles
	db "RED@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 100, PIKACHU
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db LIGHT_BALL
			db SING, SURF, THUNDERBOLT, SUBSTITUTE
	db 100, SNORLAX
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db MYSTERYBERRY
			db MEGA_KICK, SLEEP_TALK, REST, EARTHQUAKE
	db 100, ESPEON
			db $ad, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db TWISTEDSPOON
			db PSYCHIC_M, MORNING_SUN, GROWTH, HIDDEN_POWER
	db 100, POLIWRATH
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db QUICK_CLAW
			db STRENGTH, HYDRO_PUMP, EARTHQUAKE, LOVELY_KISS
	db 100, MEWTWO
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db BERSERK_GENE
			db SUBMISSION, RECOVER, PSYCHIC_M, SHADOW_BALL
	db 100, CHARIZARD
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db GOLD_B_JUICE
			db FIRE_BLAST, BELLY_DRUM, EARTHQUAKE, SUBMISSION
	db -1 ; end	

BlueGroup:
	; BLUE (1)
	db "BLUE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 88, EXEGGUTOR
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db LEFTOVERS
			db BARRAGE, STUN_SPORE, PSYCHIC_M, LEECH_SEED
	db 88, RHYDON
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FOCUS_BAND
			db EARTHQUAKE, ROCK_SLIDE, MEGAHORN, ZAP_CANNON
	db 89, SCYTHER
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db SILVERPOWDER
			db CUT, BATON_PASS, SWORDS_DANCE, RAZOR_WIND
	db 90, ZAPDOS
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $00ED
			db BRIGHTPOWDER
			db THUNDERBOLT, WHIRLWIND, RAZOR_WIND, HIDDEN_POWER
	db 89, ARCANINE
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db CHARCOAL
			db CURSE, STRENGTH, FIRE_BLAST, EXTREMESPEED
	db 91, BLASTOISE
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, PERFECT_STAT_EXP, $00ED
			db MIRACLEBERRY
			db EARTHQUAKE, HYDRO_PUMP, REST, SKULL_BASH
	db -1 ; end

OfficerGroup:
	; OFFICER (1)
	db "KEITH@", TRAINERTYPE_STAT_EXP
	db 24, GROWLITHE
			dw $0008, $0008, $0008, $0008, $0008
	db 25, VULPIX
			dw $0008, $0008, $0008, $0008, $0008
	db 26, MAGBY
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end

	; OFFICER (2)
	db "DIRK@", TRAINERTYPE_STAT_EXP
	db 27, HOUNDOUR
			dw $0008, $0008, $0008, $0008, $0008
	db 27, QUILAVA
			dw $0008, $0008, $0008, $0008, $0008
	db 28, HAUNTER
			dw $0008, $0008, $0008, $0008, $0008
	db 30, GROWLITHE
			dw $0008, $0008, $0008, $0008, $0008
	db -1 ; end
	
	; OFFICER (3) - Added to Underground Path
	db "GRANT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 79, HYPNO
			dw $0173, $0173, $0173, $0173, $0173
			db CURSE, BODY_SLAM, REST, SLEEP_TALK
	db 79, MISDREAVUS
			dw $0173, $0173, $0173, $0173, $0173
			db PAIN_SPLIT, PSYCHIC_M, THUNDER, NIGHT_SHADE
	db 80, ARCANINE
			dw $0173, $0173, $0173, $0173, $0173
			db FIRE_BLAST, STRENGTH, EARTHQUAKE, EXTREMESPEED
	db -1 ; end

GruntFGroup:
	; GRUNTF (1) - Slowpoke Well
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 18, ZUBAT
			dw $0002, $0002, $0002, $0002, $0002
	db 19, EKANS
			dw $0002, $0002, $0002, $0002, $0002
	db 19, ODDISH
			dw $0002, $0002, $0002, $0002, $0002
	db -1 ; end

	; GRUNTF (2) - Radio Tower
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 52, DUGTRIO
			dw $006B, $006B, $006B, $006B, $006B
	db 53, ARBOK
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTF (3) - Radio Tower
	db "GRUNT@", TRAINERTYPE_STAT_EXP
	db 52, GLOOM 		
			dw $006B, $006B, $006B, $006B, $006B
	db 52, MILTANK
			dw $006B, $006B, $006B, $006B, $006B
	db 53, VILEPLUME
			dw $006B, $006B, $006B, $006B, $006B
	db -1 ; end

	; GRUNTF (4) - Radio Tower 2
	db "GRUNT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 52, EKANS		
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, SUBSTITUTE, GLARE, SCREECH
	db 52, GLOOM	
			dw $006B, $006B, $006B, $006B, $006B
			db PETAL_DANCE, MOONLIGHT, SLUDGE_BOMB, SLEEP_POWDER
	db 53, OMASTAR
			dw $006B, $006B, $006B, $006B, $006B
			db WHIRLPOOL, ANCIENTPOWER, CONSTRICT, ICE_BEAM
	db 53, VICTREEBEL		
			dw $006B, $006B, $006B, $006B, $006B
			db CONSTRICT, SWEET_KISS, SLUDGE_BOMB, SLEEP_POWDER
	db -1 ; end

	; GRUNTF (5) Hideout level 3 (Password girl)
	db "GRUNT@", TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 48, ARBOK
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, SUBSTITUTE, GLARE, SCREECH
	db 49, VILEPLUME
			dw $006B, $006B, $006B, $006B, $006B
			db GIGA_DRAIN, MOONLIGHT, SLUDGE_BOMB, SLEEP_POWDER
	db -1 ; end

MysticalmanGroup:
	; MYSTICALMAN (1)
	db "EUSINE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 41, JUMPLUFF
			db $bb, $bb ; atk|def, spd|spc
			dw $0020, $0020, $0020, $0020, $0020
			db COTTON_SPORE, SLEEP_POWDER, LEECH_SEED, FLY
	db 42, HYPNO
			db $fc, $bb ; atk|def, spd|spc
			dw $0020, $0020, $0020, $0020, $0020
			db POISON_GAS, PSYCHIC_M, HIDDEN_POWER, REFLECT
	db 41, GENGAR
			db $bb, $bb ; atk|def, spd|spc
			dw $0020, $0020, $0020, $0020, $0020
			db HYPNOSIS, DREAM_EATER, THUNDERBOLT, MEAN_LOOK
	db 42, AZUMARILL
			db $bb, $bb ; atk|def, spd|spc
			dw $0020, $0020, $0020, $0020, $0020
			db SURF, RAIN_DANCE, DOUBLE_EDGE, ICE_BEAM
	db 43, ELECTRODE
			db $ee, $cc ; atk|def, spd|spc
			dw $0020, $0020, $0020, $0020, $0020
			db HIDDEN_POWER, LIGHT_SCREEN, THUNDER, THUNDER_WAVE
	db -1 ; end
	
PKMNTrainer2Group:
	; CRYSTAL (3)
	db "CRYSTAL@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 84, JYNX
			db $bb, $bb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db NEVERMELTICE
			db ICE_BEAM, SUBSTITUTE, PSYCHIC_M, LOVELY_KISS
	db 85, MAROWAK
			db $dd, $bb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db THICK_CLUB
			db BONEMERANG, ROCK_SLIDE, SWORDS_DANCE, HIDDEN_POWER
	db 83, HITMONCHAN
			db $de, $bb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db BLACKBELT_I
			db ROCK_SLIDE, COUNTER, MACH_PUNCH, HIDDEN_POWER
	db 81, PARASECT
			db $bb, $bb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db QUICK_CLAW
			db SUNNY_DAY, SOLARBEAM, SPORE, LEECH_LIFE
	db 86, MEGANIUM
			db $ec, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db LEFTOVERS
			db SUNNY_DAY, HIDDEN_POWER, SOLARBEAM, LEECH_SEED
	db 83, ARCANINE
			db $bb, $bb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db BERRY_JUICE
			db SUNNY_DAY, SOLARBEAM, FIRE_BLAST, BODY_SLAM
			db -1 ; end

PKMNTrainer3Group:			
	; NICHOLAS (1)
	db "STEVEN@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 96, SKARMORY
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db QUICK_CLAW
			db STEEL_WING, SPIKES, SANDSTORM, DRILL_PECK
	db 95, MAGNETON
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db LEFTOVERS
			db THUNDERBOLT, CONFUSE_RAY, THUNDER_WAVE, SUBSTITUTE
	db 94, FLAREON
			db $fd, $bf ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db CHARCOAL
			db FLAMETHROWER, HIDDEN_POWER, GROWTH, ZAP_CANNON
	db 95, BLASTOISE
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db MIRACLEBERRY
			db EARTHQUAKE, HYDRO_PUMP, REST, SKULL_BASH
	db 94, SANDSLASH
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db SOFT_SAND
			db EARTHQUAKE, IRON_TAIL, ROCK_SLIDE, SANDSTORM
	db 96, AERODACTYL
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db HARD_STONE
			db ROCK_SLIDE, RAZOR_WIND, EARTHQUAKE, FIRE_BLAST
	db -1 ; end
	
ArcherGroup:
	; Archer (1) - Radio Tower 2
	db "ARCHER@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 55, NIDOKING
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db EARTHQUAKE, FIRE_BLAST, THUNDERBOLT, LOVELY_KISS
	db 55, PERSIAN
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db SLASH, CRUNCH, THUNDERBOLT, HYPNOSIS
	db 54, MUK
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db SLUDGE_BOMB, ACID_ARMOR, CURSE, GIGA_DRAIN
	db 54, WEEZING
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db PERISH_SONG, FIRE_BLAST, FIRE_SPIN, SLUDGE_BOMB
	db 56, RHYDON
			db $bb, $bb
			dw $006B, $006B, $006B, $006B, $006B
			db EARTHQUAKE, ROCK_SLIDE, SURF, CURSE
	db 57, HOUNDOOM
			db PERFECT_DV, PERFECT_DV
			dw $006B, $006B, $006B, $006B, $006B
			db CRUNCH, FLAMETHROWER, FAINT_ATTACK, TOXIC
	db -1 ; end
	
AndreaGroup:
	; Andrea (1)
	db "ANDREA@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 100, MEW
			db PERFECT_DV, PERFECT_DV
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db LEFTOVERS
			db PSYCHIC_M, SUBMISSION, FIRE_BLAST, SOFTBOILED
	db 100, GYARADOS
			db $bf, PERFECT_DV
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db DRAGON_FANG
			db OUTRAGE, TOXIC, THUNDER, FIRE_BLAST
	db 100, EXEGGUTOR
			db PERFECT_DV, PERFECT_DV
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db MIRACLE_SEED
			db DRAGONBREATH, PSYCHIC_M, BARRAGE, GIGA_DRAIN
	db 100, GHOST_P
			db PERFECT_DV, $bf
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db THICK_CLUB
			db FIRE_SPIN, SHADOW_BALL, BONE_RUSH, ROCK_SLIDE
	db 100, HO_OH
			db $bf, PERFECT_DV
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db CHARCOAL
			db SUNNY_DAY, SACRED_FIRE, SOLARBEAM, MORNING_SUN
	db 100, NINETALES
			db PERFECT_DV, PERFECT_DV
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db GOLD_B_JUICE
			db HYPNOSIS, FLAMETHROWER, REFLECT, SUNNY_DAY
	db -1 ; end
	
Morty2Group:
	; MORTY2 (1)
	db "MORTY@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 81, VILEPLUME
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db MIRACLEBERRY
			db RAIN_DANCE, GIGA_DRAIN, SLUDGE_BOMB, MOONLIGHT
	db 81, SMEARGLE
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db FOCUS_BAND
			db SPORE, BATON_PASS, BELLY_DRUM, MOONLIGHT
	db 82, CLOYSTER
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db MYSTIC_WATER
			db WHIRLPOOL, SHADOW_BALL, SPIKES, RAIN_DANCE
	db 83, GHOST_P
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db THICK_CLUB
			db SWORDS_DANCE, BONE_RUSH, FIRE_SPIN, SHADOW_BALL
	db 83, MISDREAVUS
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db LEFTOVERS
			db NIGHT_SHADE, MEAN_LOOK, THUNDER, PAIN_SPLIT
	db 84, GENGAR
			db PERFECT_DV, PERFECT_DV
			dw $018D, $018D, $018D, $018D, $018D
			db SPELL_TAG
			db THUNDER, NIGHT_SHADE, SLUDGE_BOMB, DYNAMICPUNCH
	db -1 ; end
	
Clair2Group:
	; CLAIR2 (1)
	db "CLAIR@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 91, MAGMAR
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db SCOPE_LENS
			db FIRE_BLAST, CROSS_CHOP, DRAGONBREATH, CONFUSE_RAY
	db 93, GYARADOS
			db PERFECT_DV, $bf
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db MIRACLEBERRY
			db OUTRAGE, EARTHQUAKE, THUNDER, TOXIC
	db 92, EXEGGUTOR
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db BRIGHTPOWDER
			db DRAGONBREATH, PSYCHIC_M, BARRAGE, GIGA_DRAIN
	db 92, DRAGONITE
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db FOCUS_BAND
			db OUTRAGE, FIRE_BLAST, RAZOR_WIND, ICE_BEAM
	db 94, BLISSEY
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db LUCKY_PUNCH
			db EGG_BOMB, SOFTBOILED, ICE_BEAM, HEAL_BELL
	db 94, KINGDRA
			db PERFECT_DV, PERFECT_DV
			dw $00ED, $00ED, $00ED, $00ED, $00ED
			db LEFTOVERS
			db SURF, DRAGON_RAGE, REST, SLEEP_TALK
	db -1 ; end
	
Champion2Group:
	; CHAMPION2 (1)
	db "LANCE@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 100, GYARADOS
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db DRAGON_FANG
			db DRAGON_RAGE, EARTHQUAKE, HYDRO_PUMP, THUNDER
	db 100, CHARIZARD
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db GOLD_B_JUICE
			db FIRE_BLAST, OUTRAGE, EARTHQUAKE, FIRE_SPIN
	db 100, TYRANITAR
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db HARD_STONE
			db ROCK_SLIDE, PURSUIT, CRUNCH, EARTHQUAKE
	db 100, KINGDRA
			db $bf, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db BRIGHTPOWDER
			db SURF, DRAGON_RAGE, REST, SLEEP_TALK
	db 100, CELEBI
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db LEFTOVERS
			db HEAL_BELL, RECOVER, GIGA_DRAIN, PSYCHIC_M
	db 100, DRAGONITE
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP, PERFECT_STAT_EXP ; hp, atk, def, spd, spc
			db SCOPE_LENS
			db ROCK_SLIDE, RAZOR_WIND, OUTRAGE, THUNDER
	db -1 ; end

KingGroup:
	; KARATE KING (Brick Piece quest)
	db "KIYO@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_MOVES
	db 84, HITMONCHAN
			db PERFECT_DV, $bf
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db ROCK_SLIDE, COMET_PUNCH, MACH_PUNCH, FIRE_PUNCH
	db 84, HITMONLEE
			db PERFECT_DV, $bf
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db EARTHQUAKE, HI_JUMP_KICK, MEGA_KICK, COUNTER
	db 85, ELECTABUZZ
			db $bf, PERFECT_DV
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db THUNDERBOLT, CROSS_CHOP, EARTHQUAKE, ROCK_SLIDE
	db 85, MAGMAR
			db $bf, PERFECT_DV
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db FLAMETHROWER, CROSS_CHOP, PSYCHIC_M, ROCK_SLIDE
	db 86, HITMONTOP
			db PERFECT_DV, PERFECT_DV
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db ROCK_SLIDE, COMET_PUNCH, TRIPLE_KICK, SUBSTITUTE
	db 86, PINSIR
			db PERFECT_DV, PERFECT_DV
			dw $01ED, $01ED, $01ED, $01ED, $01ED
			db MEGAHORN, SUBMISSION, SEISMIC_TOSS, FOCUS_ENERGY
	db -1 ; end
	
GiovanniGroup:
	; GIOVANNI (1)
	db "???@", TRAINERTYPE_DVS | TRAINERTYPE_STAT_EXP | TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
	db 84, PERSIAN
			db $fb, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db BLACKGLASSES
			db CRUNCH, HYPER_BEAM, HYPNOSIS, DREAM_EATER
	db 83, MAROWAK
			db PERFECT_DV, $bf ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db THICK_CLUB
			db BONEMERANG, ROCK_SLIDE, SWORDS_DANCE, BONE_RUSH
	db 84, CLOYSTER
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db MYSTIC_WATER
			db SURF, SHADOW_BALL, SPIKES, RAIN_DANCE
	db 83, KANGASKHAN
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db POLKADOT_BOW
			db MEGA_PUNCH, EARTHQUAKE, STRENGTH, FISSURE
	db 84, NIDOKING
			db PERFECT_DV, $fb ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db SOFT_SAND
			db EARTHQUAKE, SLUDGE_BOMB, THUNDER, LOVELY_KISS
	db 85, RHYDON
			db PERFECT_DV, PERFECT_DV ; atk|def, spd|spc
			dw $018D, $018D, $018D, $018D, $018D
			db FOCUS_BAND
			db EARTHQUAKE, ROCK_SLIDE, MEGAHORN, ZAP_CANNON
	db -1 ; end
	
PaddingGroup:
	; PADDING (1)
	db "PADDING@", TRAINERTYPE_NORMAL
	db  5, HOPPIP
	db -1 ; end
	