SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, EVENITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 25, SYNTHESIS
	db 32, GROWTH
	db 39, PETAL_DANCE
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SYNTHESIS
	db 38, GROWTH
	db 47, PETAL_DANCE
	db 56, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SYNTHESIS
	db 36, REFLECT
	db 45, GROWTH
	db 52, PETAL_DANCE
	db 61, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, SMOKESCREEN
	db 17, RAGE
	db 23, SCARY_FACE
	db 29, SLASH
	db 35, FLAMETHROWER
	db 41, DRAGON_RAGE
	db 47, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, SMOKESCREEN
	db 18, RAGE
	db 25, SCARY_FACE
	db 32, SLASH
	db 39, FLAMETHROWER
	db 46, DRAGON_RAGE
	db 53, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, SMOKESCREEN
	db 18, RAGE
	db 25, SCARY_FACE
	db 32, SLASH
	db 36, WING_ATTACK
	db 42, FLAMETHROWER
	db 48, BELLY_DRUM
	db 53, DRAGON_RAGE
	db 64, FIRE_SPIN
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 18, BITE
	db 23, RAPID_SPIN
	db 28, PROTECT
	db 33, RAIN_DANCE
	db 38, HYDRO_PUMP
	db 43, SKULL_BASH
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 37, RAIN_DANCE
	db 43, HYDRO_PUMP
	db 49, SKULL_BASH
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, ZAP_CANNON
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 36, SPIKE_CANNON
	db 39, RAIN_DANCE
	db 47, MEGA_PUNCH
	db 47, HYDRO_PUMP
	db 55, SKULL_BASH
	db 63, MEGA_KICK
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 11, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 18, GUST
	db 23, WHIRLWIND
	db 28, MEGA_DRAIN
	db 34, PSYBEAM
	db 40, SAFEGUARD
	db 47, REFLECT
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_ATTACK
	db 10, FURY_ATTACK
	db 15, PIN_MISSILE
	db 20, FOCUS_ENERGY
	db 25, RAGE
	db 30, PURSUIT
	db 35, TWINEEDLE
	db 40, AGILITY
	db 47, SWORDS_DANCE
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 22, WING_ATTACK
	db 29, WHIRLWIND
	db 36, AGILITY
	db 43, MIRROR_MOVE
	db 50, SKY_ATTACK
	db 57, BATON_PASS
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, WING_ATTACK
	db 31, WHIRLWIND
	db 39, AGILITY
	db 47, MIRROR_MOVE
	db 55, SKY_ATTACK
	db 63, BATON_PASS
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, WING_ATTACK
	db 31, WHIRLWIND
	db 36, RAZOR_WIND
	db 40, AGILITY
	db 49, MIRROR_MOVE
	db 58, SKY_ATTACK
	db 67, BATON_PASS
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 19, FOCUS_ENERGY
	db 25, PURSUIT
	db 31, SUPER_FANG
	db 37, MIMIC
	db 43, BODY_SLAM
	db 49, SUBSTITUTE
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, SCARY_FACE
	db 27, PURSUIT
	db 34, SUPER_FANG
	db 41, MIMIC
	db 48, BODY_SLAM
	db 55, SUBSTITUTE
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 7, LEER
	db 13, FURY_ATTACK
	db 19, PURSUIT
	db 25, SUBSTITUTE
	db 31, MIRROR_MOVE
	db 37, DRILL_PECK
	db 43, AGILITY
	db 49, DOUBLE_EDGE
	db 55, SKY_ATTACK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 7, LEER
	db 13, FURY_ATTACK
	db 19, PURSUIT
	db 26, SUBSTITUTE
	db 33, MIRROR_MOVE
	db 40, DRILL_PECK
	db 47, AGILITY
	db 54, DOUBLE_EDGE
	db 60, SKY_ATTACK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 9, POISON_STING
	db 15, BITE
	db 23, ACID
	db 29, SCREECH
	db 37, GLARE
	db 43, SUBSTITUTE
	db 51, HAZE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 9, POISON_STING
	db 15, BITE
	db 25, ACID
	db 33, SCREECH
	db 43, GLARE
	db 51, SUBSTITUTE
	db 61, HAZE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 20, SPARK
	db 26, SLAM
	db 33, SING
	db 41, THUNDER
	db 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, SPARK
	db 1, SLAM
	db 47, THUNDER
	db 56, LIGHT_SCREEN
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, DEFENSE_CURL
	db 11, MUD_SLAP
	db 17, SWIFT
	db 23, POISON_STING
	db 30, SLASH
	db 37, FURY_SWIPES
	db 45, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, MUD_SLAP
	db 6, DEFENSE_CURL
	db 11, SAND_ATTACK
	db 17, SWIFT
	db 22, SPIKES
	db 24, METAL_CLAW
	db 32, SLASH
	db 40, SWORDS_DANCE
	db 49, EARTHQUAKE
	db 58, ROCK_SLIDE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL	
	db 1, SCRATCH
	db 8, POISON_STING
	db 12, DOUBLE_KICK
	db 17, HORN_ATTACK
	db 23, LOVELY_KISS
	db 30, BITE
	db 38, BODY_SLAM
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 8, POISON_STING
	db 12, DOUBLE_KICK
	db 19, HORN_ATTACK
	db 27, LOVELY_KISS
	db 36, BITE
	db 46, BODY_SLAM
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, SCRATCH
	db 1, DOUBLE_KICK
	db 1, LOVELY_KISS
	db 33, BODY_SLAM
	db 42, MOONLIGHT
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, POISON_STING
	db 12, DOUBLE_KICK
	db 17, HORN_ATTACK
	db 23, LOVELY_KISS
	db 30, FURY_ATTACK
	db 38, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, POISON_STING
	db 12, DOUBLE_KICK
	db 19, HORN_ATTACK
	db 27, LOVELY_KISS
	db 36, FURY_ATTACK
	db 46, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, FOCUS_ENERGY
	db 1, HORN_ATTACK
	db 1, DOUBLE_KICK
	db 1, LOVELY_KISS
	db 43, THRASH
	db 52, HORN_DRILL
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 8, SING
	db 13, DOUBLESLAP
	db 19, MINIMIZE
	db 26, DEFENSE_CURL
	db 33, METRONOME
	db 40, MOONLIGHT
	db 47, LIGHT_SCREEN
	db 54, BELLY_DRUM
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DOUBLESLAP
	db 1, MINIMIZE
	db 1, METRONOME
	db 43, MOONLIGHT
	db 53, LIGHT_SCREEN
	db 64, BELLY_DRUM
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 19, CONFUSE_RAY
	db 25, FLAME_WHEEL
	db 31, HYPNOSIS
	db 37, FLAMETHROWER
	db 43, FIRE_SPIN
	db 49, DREAM_EATER
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPITE
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, FLAME_WHEEL
	db 1, HYPNOSIS
	db 43, FLAMETHROWER
	db 49, FIRE_SPIN
	db 55, DREAM_EATER
	db 62, NIGHT_SHADE
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, POUND
	db 9, DEFENSE_CURL
	db 14, DISABLE
	db 19, ROLLOUT
	db 27, DOUBLESLAP
	db 33, BODY_SLAM
	db 39, COUNTER
	db 45, DOUBLE_EDGE
	db 53, SOFTBOILED
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DEFENSE_CURL
	db 1, DISABLE
	db 1, DOUBLESLAP
	db 38, BODY_SLAM
	db 46, COUNTER
	db 52, DOUBLE_EDGE
	db 60, SOFTBOILED
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, BITE
	db 6, SUPERSONIC
	db 12, LEECH_LIFE
	db 18, CONFUSE_RAY
	db 23, WING_ATTACK
	db 35, CRUNCH
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, BITE
	db 6, SUPERSONIC
	db 12, LEECH_LIFE
	db 18, CONFUSE_RAY
	db 25, WING_ATTACK
	db 30, SLUDGE
	db 38, CRUNCH
	db 53, MEAN_LOOK
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, SWEET_SCENT
	db 7, ABSORB
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, ACID
	db 22, SLEEP_POWDER
	db 27, MEGA_DRAIN
	db 32, MOONLIGHT
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, ACID
	db 23, SLEEP_POWDER
	db 29, MEGA_DRAIN
	db 35, MOONLIGHT
	db 44, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, MOONLIGHT
	db 1, ABSORB
	db 1, LEECH_SEED
	db 1, STUN_SPORE
	db 44, PETAL_DANCE
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, ABSORB
	db 19, SLASH
	db 25, SPORE
	db 31, LEECH_LIFE
	db 37, GROWTH
	db 43, GIGA_DRAIN
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, ABSORB
	db 19, SLASH
	db 26, SPORE
	db 33, MEGA_DRAIN
	db 40, LEECH_LIFE
	db 48, GROWTH
	db 56, GIGA_DRAIN
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 9, CONFUSION
	db 12, POISONPOWDER
	db 17, SUPERSONIC
	db 20, SLUDGE
	db 25, STUN_SPORE
	db 28, PSYBEAM
	db 33, LEECH_LIFE
	db 36, SLEEP_POWDER
	db 41, REFLECT
	db 46, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 9, CONFUSION
	db 12, POISONPOWDER
	db 17, SUPERSONIC
	db 20, SLUDGE
	db 25, STUN_SPORE
	db 28, PSYBEAM
	db 31, RAZOR_WIND
	db 36, LEECH_LIFE
	db 39, SLEEP_POWDER
	db 44, REFLECT
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 33, SLASH
	db 41, EARTHQUAKE
	db 45, BEAT_UP
	db 49, FISSURE
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, BEAT_UP
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 26, TRI_ATTACK
	db 35, SLASH
	db 45, EARTHQUAKE
	db 50, SWORDS_DANCE
	db 55, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, PURSUIT
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 11, PAY_DAY
	db 16, FURY_SWIPES
	db 21, FAINT_ATTACK
	db 27, SLASH
	db 36, SCREECH
	db 44, CRUNCH
	db 51, HYPNOSIS
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, PURSUIT
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 11, PAY_DAY
	db 16, FURY_SWIPES
	db 21, FAINT_ATTACK
	db 27, SLASH
	db 38, SCREECH
	db 48, CRUNCH
	db 57, HYPNOSIS
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, WATER_GUN
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, PSYBEAM
	db 40, CROSS_CHOP
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, WATER_GUN
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, PSYBEAM
	db 33, RECOVER
	db 44, CROSS_CHOP
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, RAGE
	db 15, LOW_KICK
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, SCREECH
	db 45, CROSS_CHOP
	db 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGA_PUNCH
	db 1, SCRATCH
	db 1, LEER
	db 1, VITAL_THROW
	db 9, RAGE
	db 15, LOW_KICK
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 28, VITAL_THROW
	db 36, SEISMIC_TOSS
	db 45, SCREECH
	db 54, CROSS_CHOP
	db 63, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 1, TACKLE
	db 9, EMBER
	db 16, STOMP
	db 23, ROAR
	db 30, FLAME_WHEEL
	db 37, AGILITY
	db 44, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 1, STOMP
	db 1, ROAR
	db 1, FLAME_WHEEL
	db 42, AGILITY
	db 50, FLAMETHROWER
	db 58, EXTREMESPEED
	db 66, TAKE_DOWN
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, BODY_SLAM
	db 25, BUBBLEBEAM
	db 31, LOVELY_KISS
	db 37, HYDRO_PUMP
	db 43, BELLY_DRUM
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_ITEM, LEAF_STONE, POLITOED
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, BODY_SLAM
	db 27, BUBBLEBEAM
	db 35, LOVELY_KISS
	db 43, HYDRO_PUMP
	db 51, BELLY_DRUM
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, BODY_SLAM
	db 1, BUBBLEBEAM
	db 30, VITAL_THROW
	db 37, MIND_READER
	db 44, SUBMISSION
	db 51, BELLY_DRUM
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 26, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 16, CONFUSION
	db 21, DISABLE
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 16, CONFUSION
	db 21, DISABLE
	db 26, RECOVER
	db 31, PSYBEAM
	db 36, KINESIS
	db 39, FUTURE_SIGHT
	db 43, PSYCHIC_M
	db 51, REFLECT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 16, CONFUSION
	db 21, DISABLE
	db 26, RECOVER
	db 31, PSYBEAM
	db 36, KINESIS
	db 39, FUTURE_SIGHT
	db 43, PSYCHIC_M
	db 51, REFLECT
	db 60, THUNDER_WAVE
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 18, SEISMIC_TOSS
	db 25, VITAL_THROW
	db 31, FORESIGHT
	db 37, SUBMISSION
	db 43, SCARY_FACE
	db 49, CROSS_CHOP
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, MACHAMP
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 18, SEISMIC_TOSS
	db 25, VITAL_THROW
	db 34, FORESIGHT
	db 43, SUBMISSION
	db 52, SCARY_FACE
	db 61, CROSS_CHOP
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 18, SEISMIC_TOSS
	db 25, VITAL_THROW
	db 34, FORESIGHT
	db 43, SUBMISSION
	db 52, SCARY_FACE
	db 61, CROSS_CHOP
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, WRAP
	db 15, POISONPOWDER
	db 17, SLEEP_POWDER
	db 19, STUN_SPORE
	db 23, ACID
	db 28, RAZOR_LEAF
	db 34, SWEET_SCENT
	db 41, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, WRAP
	db 15, POISONPOWDER
	db 17, SLEEP_POWDER
	db 19, STUN_SPORE
	db 24, ACID
	db 30, RAZOR_LEAF
	db 37, SWEET_SCENT
	db 45, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, RAZOR_LEAF
	db 1, SWEET_KISS
	db 45, CONSTRICT
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, RAPID_SPIN
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, CONSTRICT
	db 36, BARRIER
	db 43, SCREECH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, RAPID_SPIN
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, CONSTRICT
	db 38, BARRIER
	db 47, SCREECH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 22, SELFDESTRUCT
	db 28, RAPID_SPIN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, ROCK_SLIDE
	db 55, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 22, SELFDESTRUCT
	db 29, RAPID_SPIN
	db 36, ROLLOUT
	db 44, EARTHQUAKE
	db 52, ROCK_SLIDE
	db 60, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 22, SELFDESTRUCT
	db 29, RAPID_SPIN
	db 36, ROLLOUT
	db 44, EARTHQUAKE
	db 52, ROCK_SLIDE
	db 60, EXPLOSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, FLAME_WHEEL
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 43, AGILITY
	db 53, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, HI_JUMP_KICK
	db 1, TACKLE
	db 1, EMBER
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, FLAME_WHEEL
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 40, HORN_DRILL
	db 47, MEGAHORN
	db 57, FIRE_BLAST
	db 67, EXTREMESPEED
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 34, SLOWBRO
	db EVOLVE_ITEM, WATER_STONE, SLOWKING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 37, WITHDRAW
	db 46, AMNESIA
	db 51, PSYCHIC_M
	db 57, BELLY_DRUM
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, SUPERSONIC
	db 11, THUNDERSHOCK
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 27, SPARK
	db 33, CONFUSE_RAY
	db 39, ZAP_CANNON
	db 39, LOCK_ON
	db 45, THUNDER
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 27, SPARK
	db 35, TRI_ATTACK
	db 43, ZAP_CANNON
	db 43, LOCK_ON
	db 53, THUNDER
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, PECK
	db 7, SAND_ATTACK
	db 13, LEER
	db 19, FURY_ATTACK
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 37, SLASH
	db 44, FALSE_SWIPE
	db 44, RAZOR_WIND
	db 51, RAZOR_LEAF
	db 59, BATON_PASS
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, FURY_ATTACK
	db 1, GROWL
	db 9, PECK
	db 13, PURSUIT
	db 21, TRI_ATTACK
	db 25, RAGE
	db 33, DRILL_PECK
	db 37, AGILITY
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_ATTACK
	db 1, GROWL
	db 9, PECK
	db 13, PURSUIT
	db 21, TRI_ATTACK
	db 25, RAGE
	db 35, DRILL_PECK
	db 40, AGILITY
	db 50, DOUBLE_EDGE
	db 60, HI_JUMP_KICK
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, GROWL
	db 16, BUBBLEBEAM
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 37, ICE_BEAM
	db 42, SAFEGUARD
	db 47, MEGAHORN
	db 53, PERISH_SONG
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, GROWL
	db 16, BUBBLEBEAM
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 32, HORN_DRILL
	db 43, ICE_BEAM
	db 49, SAFEGUARD
	db 54, MEGAHORN
	db 60, PERISH_SONG
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 37, MUK
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 30, SCREECH
	db 41, SLUDGE_BOMB
	db 48, EXPLOSION
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 30, SCREECH
	db 37, ACID_ARMOR
	db 45, SLUDGE_BOMB
	db 55, EXPLOSION
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 9, LICK
	db 17, AURORA_BEAM
	db 25, PROTECT
	db 33, CLAMP
	db 41, ICE_BEAM
	db 49, RAPID_SPIN
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUPERSONIC
	db 1, LICK
	db 1, AURORA_BEAM
	db 1, CLAMP
	db 33, NIGHT_SHADE
	db 41, SPIKE_CANNON
	db 49, SPIKES
	db 57, RAPID_SPIN
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, CONFUSE_RAY
	db 28, DESTINY_BOND
	db 33, DREAM_EATER
	db 41, NIGHT_SHADE
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, CONFUSE_RAY
	db 31, DESTINY_BOND
	db 39, DREAM_EATER
	db 48, NIGHT_SHADE
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, CONFUSE_RAY
	db 32, DESTINY_BOND
	db 41, DREAM_EATER
	db 52, NIGHT_SHADE
	db 66, PERISH_SONG
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, STEELIX
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, SCREECH
	db 10, ROCK_THROW
	db 14, HARDEN
	db 23, RAGE
	db 27, BIND
	db 36, SANDSTORM
	db 40, SLAM
	db 49, ROCK_SLIDE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 31, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 31, POISON_GAS
	db 39, PSYCHIC_M
	db 46, LIGHT_SCREEN
	db 57, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 31, POISON_GAS
	db 40, PSYCHIC_M
	db 48, LIGHT_SCREEN
	db 60, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, LEER
	db 1, BUBBLE
	db 5, STOMP
	db 12, HARDEN
	db 16, BUBBLEBEAM
	db 23, VICEGRIP
	db 27, GUILLOTINE
	db 34, SWORDS_DANCE
	db 40, CRABHAMMER
	db 48, BIND
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, BUBBLE
	db 5, STOMP
	db 12, HARDEN
	db 16, BUBBLEBEAM
	db 23, VICEGRIP
	db 27, GUILLOTINE
	db 36, SWORDS_DANCE
	db 42, CRABHAMMER
	db 52, BIND
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, SPARK
	db 33, LIGHT_SCREEN
	db 37, THUNDERBOLT
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 43, THUNDER_WAVE
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, SPARK
	db 34, LIGHT_SCREEN
	db 40, THUNDERBOLT
	db 44, EXPLOSION
	db 48, MIRROR_COAT
	db 52, THUNDER_WAVE
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, HYPNOSIS
	db 7, REFLECT
	db 13, LEECH_SEED
	db 19, STUN_SPORE
	db 25, POISONPOWDER
	db 31, SLEEP_POWDER
	db 37, SOLARBEAM
	db 43, BARRAGE
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, HYPNOSIS
	db 1, LEECH_SEED
	db 35, EGG_BOMB
	db 44, STOMP
	db 53, BARRAGE
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, LEER
	db 9, BONE_CLUB
	db 13, RAGE
	db 17, FOCUS_ENERGY
	db 21, FALSE_SWIPE
	db 25, HEADBUTT
	db 29, BONEMERANG
	db 33, THRASH
	db 37, ROCK_SLIDE
	db 41, BONE_RUSH
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, LEER
	db 9, BONE_CLUB
	db 13, RAGE
	db 17, FOCUS_ENERGY
	db 21, FALSE_SWIPE
	db 25, HEADBUTT
	db 32, BONEMERANG
	db 39, THRASH
	db 46, ROCK_SLIDE
	db 53, BONE_RUSH
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROLLING_KICK
	db 21, FOCUS_ENERGY
	db 26, JUMP_KICK
	db 26, FORESIGHT
	db 31, MIND_READER
	db 36, REVERSAL
	db 41, MEDITATE
	db 46, MEGA_KICK
	db 51, HI_JUMP_KICK
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 21, PURSUIT
	db 26, THUNDERPUNCH
	db 26, ICE_PUNCH
	db 26, FIRE_PUNCH
	db 32, MEGA_PUNCH
	db 38, MACH_PUNCH
	db 44, AGILITY
	db 50, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 7, SUPERSONIC
	db 13, DEFENSE_CURL
	db 19, STOMP
	db 25, WRAP
	db 31, DISABLE
	db 37, SLAM
	db 43, SWORDS_DANCE
	db 49, SCREECH
	db 55, MEGA_PUNCH
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, HAZE
	db 1, TACKLE
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, POISON_GAS
	db 33, SCREECH
	db 41, EXPLOSION
	db 45, DESTINY_BOND
	db 49, FIRE_SPIN
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, HAZE
	db 1, TACKLE
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, POISON_GAS
	db 33, SCREECH
	db 44, EXPLOSION
	db 51, DESTINY_BOND
	db 58, FIRE_SPIN
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 13, STOMP
	db 19, MAGNITUDE
	db 25, SCARY_FACE
	db 31, HORN_DRILL
	db 37, ROCK_SLIDE
	db 49, EARTHQUAKE
	db 55, MEGAHORN
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 13, STOMP
	db 19, MAGNITUDE
	db 25, SCARY_FACE
	db 31, HORN_DRILL
	db 37, ROCK_SLIDE
	db 51, EARTHQUAKE
	db 61, MEGAHORN
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 5, GROWL
	db 9, TAIL_WHIP
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 23, EGG_BOMB
	db 29, SING
	db 35, MINIMIZE
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, HEAL_BELL
	db 66, BARRAGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 10, POISONPOWDER
	db 16, VINE_WHIP
	db 22, STUN_SPORE
	db 25, SLEEP_POWDER
	db 31, MEGA_DRAIN
	db 34, SYNTHESIS
	db 40, CONSTRICT
	db 46, GROWTH
	db 52, LEECH_SEED
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 7, LEER
	db 13, RAGE
	db 19, TAIL_WHIP
	db 25, COMET_PUNCH
	db 31, ENDURE
	db 37, DIZZY_PUNCH
	db 43, MEGA_PUNCH
	db 49, REVERSAL
	db 55, DOUBLE_EDGE
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 15, WATER_GUN
	db 22, LEER
	db 29, TWISTER
	db 36, AGILITY
	db 43, HYDRO_PUMP
	db 50, HAZE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 15, WATER_GUN
	db 22, LEER
	db 29, TWISTER
	db 32, AGILITY
	db 40, OCTAZOOKA
	db 51, HYDRO_PUMP
	db 58, HAZE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, DRILL_PECK
	db 36, WATERFALL
	db 41, SWORDS_DANCE
	db 48, MEGAHORN
	db 53, AGILITY
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, DRILL_PECK
	db 37, WATERFALL
	db 44, SWORDS_DANCE
	db 53, MEGAHORN
	db 60, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 7, WATER_GUN
	db 13, RAPID_SPIN
	db 19, RECOVER
	db 25, BUBBLEBEAM
	db 31, PSYBEAM
	db 37, MINIMIZE
	db 43, LIGHT_SCREEN
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 1, PSYBEAM
	db 37, CONFUSE_RAY
	db 45, LIGHT_SCREEN
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 6, DOUBLESLAP
	db 11, SUBSTITUTE
	db 16, BARRIER
	db 21, CONFUSION
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, PSYBEAM
	db 36, ENCORE
	db 41, BATON_PASS
	db 46, SAFEGUARD
	db 51, MIMIC
	db 56, MIRROR_MOVE
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, WING_ATTACK
	db 30, DOUBLE_TEAM
	db 36, SLASH
	db 39, RAZOR_WIND
	db 42, SWORDS_DANCE
	db 48, AGILITY
	db 54, BATON_PASS
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, POUND
	db 1, SWEET_KISS
	db 9, CONFUSION
	db 13, POWDER_SNOW
	db 21, MEAN_LOOK
	db 28, ICE_PUNCH
	db 35, LOVELY_KISS
	db 41, PSYCHIC_M
	db 47, PERISH_SONG
	db 53, BLIZZARD
	db 59, SUBSTITUTE
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, PURSUIT
	db 17, LIGHT_SCREEN
	db 25, THUNDERPUNCH
	db 36, SUBSTITUTE
	db 47, THUNDERBOLT
	db 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 33, POISON_GAS
	db 41, FLAMETHROWER
	db 49, CONFUSE_RAY
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, FOCUS_ENERGY
	db 13, FURY_CUTTER
	db 19, SEISMIC_TOSS
	db 25, VICEGRIP
	db 31, GUILLOTINE
	db 37, SUBMISSION
	db 43, SWORDS_DANCE
	db 55, MEGAHORN
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 8, RAGE
	db 13, HORN_ATTACK
	db 19, SCARY_FACE
	db 26, STOMP
	db 34, HORN_DRILL
	db 43, THRASH
	db 53, TAKE_DOWN
	db 64, MEGAHORN
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 30, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 10, TACKLE
	db 20, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 30, BITE
	db 35, TWISTER
	db 40, LEER
	db 45, DRAGON_RAGE
	db 50, RAIN_DANCE
	db 55, THRASH
	db 60, CRUNCH
	db 65, OUTRAGE
	db 70, HYDRO_PUMP
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, GROWL
	db 1, RAIN_DANCE
	db 8, PERISH_SONG
	db 15, BODY_SLAM
	db 22, CONFUSE_RAY
	db 29, SING
	db 36, ICE_BEAM
	db 43, MIST
	db 50, SAFEGUARD
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_EVENITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CHARM
	db 8, SAND_ATTACK
	db 16, GROWTH
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, BATON_PASS
	db 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, BATON_PASS
	db 1, TACKLE
	db 1, CHARM
	db 8, SAND_ATTACK
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, AURORA_BEAM
	db 42, HAZE
	db 47, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, BATON_PASS
	db 1, TACKLE
	db 1, CHARM
	db 8, SAND_ATTACK
	db 16, THUNDERSHOCK
	db 23, QUICK_ATTACK
	db 30, DOUBLE_KICK
	db 36, SPARK
	db 42, PIN_MISSILE
	db 47, AGILITY
	db 52, THUNDER_WAVE
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, BATON_PASS
	db 1, TACKLE
	db 1, CHARM
	db 8, SAND_ATTACK
	db 16, EMBER
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, FLAME_WHEEL
	db 42, SMOG
	db 47, AGILITY
	db 52, FIRE_SPIN
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, SHARPEN
	db 32, TRI_ATTACK
	db 36, LOCK_ON
	db 44, THUNDER_WAVE
	db 52, MEGA_KICK
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, WITHDRAW
	db 12, BITE
	db 18, LEER
	db 26, CONSTRICT
	db 35, PROTECT
	db 46, ANCIENTPOWER
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, WITHDRAW
	db 12, BITE
	db 18, LEER
	db 26, CONSTRICT
	db 35, PROTECT
	db 40, SPIKE_CANNON
	db 49, ANCIENTPOWER
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 10, ROCK_THROW
	db 14, ABSORB
	db 19, RAPID_SPIN
	db 24, BUBBLEBEAM
	db 31, BIND
	db 38, ANCIENTPOWER
	db 46, GIGA_DRAIN
	db 54, ROCK_SLIDE
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAZOR_WIND
	db 1, SCRATCH
	db 1, HARDEN
	db 10, ROCK_THROW
	db 14, ABSORB
	db 19, RAPID_SPIN
	db 24, BUBBLEBEAM
	db 31, BIND
	db 38, ANCIENTPOWER
	db 40, SLASH
	db 49, EXTREMESPEED
	db 61, ROCK_SLIDE
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 8, SCARY_FACE
	db 15, WING_ATTACK
	db 22, SUPERSONIC
	db 29, ANCIENTPOWER
	db 36, TAKE_DOWN
	db 43, ROCK_SLIDE
	db 50, CRUNCH
	db 57, RAZOR_WIND
	db 64, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, DEFENSE_CURL
	db 15, ROLLOUT
	db 22, BELLY_DRUM
	db 29, HEADBUTT
	db 36, AMNESIA
	db 43, SNORE
	db 43, REST
	db 50, BODY_SLAM
	db 57, LOVELY_KISS
	db 64, HYPER_BEAM
	db 71, MEGA_KICK
	db 78, SKULL_BASH
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, POWDER_SNOW
	db 13, MIST
	db 25, AGILITY
	db 37, RAZOR_WIND
	db 49, ICE_BEAM
	db 61, REFLECT
	db 73, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 25, AGILITY
	db 37, DETECT
	db 49, DRILL_PECK
	db 61, LIGHT_SCREEN
	db 73, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 13, FIRE_SPIN
	db 25, AGILITY
	db 37, RAZOR_WIND
	db 49, FLAMETHROWER
	db 61, SAFEGUARD
	db 73, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, TWISTER
	db 15, THUNDER_WAVE
	db 22, AGILITY
	db 29, SLAM
	db 36, DRAGON_RAGE
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, TWISTER
	db 15, THUNDER_WAVE
	db 22, AGILITY
	db 29, SLAM
	db 38, DRAGON_RAGE
	db 47, SAFEGUARD
	db 56, OUTRAGE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, TWISTER
	db 15, THUNDER_WAVE
	db 22, AGILITY
	db 29, SLAM
	db 38, DRAGON_RAGE
	db 47, SAFEGUARD
	db 55, RAZOR_WIND
	db 61, OUTRAGE
	db 70, HYPER_BEAM
	db 79, MEGA_KICK
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 11, BARRIER
	db 22, SWIFT
	db 33, PSYCH_UP
	db 44, FUTURE_SIGHT
	db 55, MIST
	db 66, PSYCHIC_M
	db 77, AMNESIA
	db 88, RECOVER
	db 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 10, ANCIENTPOWER
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 50, TRANSFORM
	db 60, ROCK_SLIDE
	db 70, FUTURE_SIGHT
	db 80, MIMIC
	db 90, MEGA_KICK
	db 100, BARRAGE
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 14, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, VINE_WHIP
	db 11, LEECH_SEED
	db 14, POISONPOWDER
	db 18, SYNTHESIS
	db 23, RAZOR_LEAF
	db 29, BODY_SLAM
	db 36, REFLECT
	db 36, LIGHT_SCREEN
	db 43, PETAL_DANCE
	db 50, SAFEGUARD
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 36, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, VINE_WHIP
	db 11, LEECH_SEED
	db 14, POISONPOWDER
	db 19, SYNTHESIS
	db 25, RAZOR_LEAF
	db 31, BODY_SLAM
	db 39, REFLECT
	db 39, LIGHT_SCREEN
	db 47, PETAL_DANCE
	db 55, SAFEGUARD
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE
	db 1, TACKLE
	db 1, GROWL
	db 8, VINE_WHIP
	db 11, LEECH_SEED
	db 14, POISONPOWDER
	db 19, SYNTHESIS
	db 25, RAZOR_LEAF
	db 31, BODY_SLAM
	db 41, REFLECT
	db 41, LIGHT_SCREEN
	db 51, PETAL_DANCE
	db 61, SAFEGUARD
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 16, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, SMOKESCREEN
	db 12, EMBER
	db 15, QUICK_ATTACK
	db 21, FLAME_WHEEL
	db 28, SUBMISSION
	db 36, FLAMETHROWER
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 32, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, SMOKESCREEN
	db 12, EMBER
	db 17, QUICK_ATTACK
	db 23, FLAME_WHEEL
	db 32, SUBMISSION
	db 42, FLAMETHROWER
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, SMOKESCREEN
	db 12, EMBER
	db 17, QUICK_ATTACK
	db 23, FLAME_WHEEL
	db 32, SUBMISSION
	db 45, FLAMETHROWER
	db 60, THRASH
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, WATER_GUN
	db 13, RAGE
	db 18, BITE
	db 23, BUBBLEBEAM
	db 29, SLASH
	db 36, SCREECH
	db 44, CRUNCH
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCARY_FACE
	db 1, SCRATCH
	db 1, LEER
	db 8, WATER_GUN
	db 13, RAGE
	db 18, BITE
	db 24, BUBBLEBEAM
	db 31, SLASH
	db 38, SCREECH
	db 46, CRUNCH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCARY_FACE
	db 1, SCRATCH
	db 1, LEER
	db 8, WATER_GUN
	db 13, RAGE
	db 18, BITE
	db 24, BUBBLEBEAM
	db 32, SLASH
	db 40, SCREECH
	db 48, CRUNCH
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 17, FURY_SWIPES
	db 25, SLAM
	db 33, REST
	db 41, AMNESIA
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 18, FURY_SWIPES
	db 28, SLAM
	db 38, REST
	db 48, AMNESIA
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, FORESIGHT
	db 11, PECK
	db 15, HYPNOSIS
	db 21, CONFUSION
	db 26, WING_ATTACK
	db 32, TAKE_DOWN
	db 37, CONFUSE_RAY
	db 43, REFLECT
	db 48, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAKE_DOWN
	db 1, GROWL
	db 6, FORESIGHT
	db 11, PECK
	db 15, HYPNOSIS
	db 22, CONFUSION
	db 28, WING_ATTACK
	db 35, TAKE_DOWN
	db 41, CONFUSE_RAY
	db 48, REFLECT
	db 54, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, SUPERSONIC
	db 13, COMET_PUNCH
	db 19, REFLECT
	db 22, LIGHT_SCREEN
	db 22, SAFEGUARD
	db 29, BATON_PASS
	db 36, SWIFT
	db 43, AGILITY
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, SUPERSONIC
	db 13, COMET_PUNCH
	db 18, GUST
	db 21, REFLECT
	db 24, LIGHT_SCREEN
	db 24, SAFEGUARD
	db 33, BATON_PASS
	db 42, SWIFT
	db 51, AGILITY
	db 60, RAZOR_WIND
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 6, PIN_MISSILE
	db 11, SCARY_FACE
	db 17, SPIDER_WEB
	db 23, ACID
	db 30, LEECH_LIFE
	db 37, CONSTRICT
	db 45, MEDITATE
	db 45, AGILITY
	db 53, PSYCHIC_M
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 6, PIN_MISSILE
	db 11, SCARY_FACE
	db 17, SPIDER_WEB
	db 25, ACID
	db 34, LEECH_LIFE
	db 43, CONSTRICT
	db 53, MEDITATE
	db 53, AGILITY
	db 63, PSYCHIC_M
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, BITE
	db 6, SUPERSONIC
	db 12, LEECH_LIFE
	db 18, CONFUSE_RAY
	db 25, WING_ATTACK
	db 30, SLUDGE
	db 38, CRUNCH
	db 45, SCREECH
	db 53, MEAN_LOOK
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, BUBBLEBEAM
	db 25, SPARK
	db 29, CONFUSE_RAY
	db 37, TAKE_DOWN
	db 41, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, BUBBLEBEAM
	db 25, SPARK
	db 33, CONFUSE_RAY
	db 45, TAKE_DOWN
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, SWEET_KISS
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 8, SING
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 4, POUND
	db 9, DEFENSE_CURL
	db 14, SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, SWEET_KISS
	db 24, ENCORE
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, SWEET_KISS
	db 24, WING_ATTACK
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
	db 49, AEROBLAST
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 10, CONFUSE_RAY
	db 16, CONFUSION
	db 22, TELEPORT
	db 30, NIGHT_SHADE
	db 40, FUTURE_SIGHT
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 10, CONFUSE_RAY
	db 16, CONFUSION
	db 22, TELEPORT
	db 29, DRILL_PECK
	db 37, NIGHT_SHADE
	db 46, FUTURE_SIGHT
	db 55, PSYCHIC_M
	db 64, BEAT_UP
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 9, THUNDERSHOCK
	db 16, THUNDER_WAVE
	db 23, COTTON_SPORE
	db 30, LIGHT_SCREEN
	db 37, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 9, THUNDERSHOCK
	db 18, THUNDER_WAVE
	db 27, COTTON_SPORE
	db 36, LIGHT_SCREEN
	db 45, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 9, THUNDERSHOCK
	db 18, THUNDER_WAVE
	db 27, COTTON_SPORE
	db 30, THUNDERPUNCH
	db 42, LIGHT_SCREEN
	db 57, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, MORNING_SUN
	db 1, ABSORB
	db 1, LEECH_SEED
	db 1, STUN_SPORE
	db 44, PETAL_DANCE
	db 55, FIRE_SPIN
	db 66, PAIN_SPLIT
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 21, BUBBLEBEAM
	db 28, DOUBLE_EDGE
	db 36, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 25, BUBBLEBEAM
	db 36, DOUBLE_EDGE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAIL
	db 1, MIMIC
	db 10, ROCK_THROW
	db 17, LOW_KICK
	db 25, LEECH_SEED
	db 33, BIND
	db 41, SLAM
	db 49, ROCK_SLIDE
	db 57, SYNTHESIS
	db 66, SUBSTITUTE
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 1, BODY_SLAM
	db 35, SWAGGER
	db 44, COTTON_SPORE
	db 51, BELLY_DRUM
	db 59, PERISH_SONG
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, ABSORB
	db 5, TAIL_WHIP
	db 10, POISONPOWDER
	db 13, SYNTHESIS
	db 15, STUN_SPORE
	db 17, MEGA_DRAIN
	db 20, SLEEP_POWDER
	db 25, LEECH_SEED
	db 30, COTTON_SPORE
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, ABSORB
	db 5, TAIL_WHIP
	db 10, POISONPOWDER
	db 13, SYNTHESIS
	db 15, STUN_SPORE
	db 17, MEGA_DRAIN
	db 22, SLEEP_POWDER
	db 29, LEECH_SEED
	db 36, COTTON_SPORE
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, ABSORB
	db 5, TAIL_WHIP
	db 10, POISONPOWDER
	db 13, SYNTHESIS
	db 15, STUN_SPORE
	db 17, MEGA_DRAIN
	db 22, SLEEP_POWDER
	db 33, LEECH_SEED
	db 44, COTTON_SPORE
	db 55, MEAN_LOOK
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 6, SAND_ATTACK
	db 11, FURY_SWIPES
	db 17, SWIFT
	db 23, DOUBLESLAP
	db 31, HYPNOSIS
	db 39, BATON_PASS
	db 49, AGILITY
	db 60, MEGA_KICK
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 5, GROWTH
	db 10, MEGA_DRAIN
	db 15, SUNNY_DAY
	db 20, LEECH_SEED
	db 25, MORNING_SUN
	db 34, GIGA_DRAIN
	db 56, SOLARBEAM
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, SYNTHESIS
	db 1, ABSORB
	db 1, GROWTH
	db 10, MEGA_DRAIN
	db 17, SUNNY_DAY
	db 24, LEECH_SEED
	db 31, RAZOR_LEAF
	db 43, PETAL_DANCE
	db 56, FIRE_SPIN
	db 63, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 7, QUICK_ATTACK
	db 13, DOUBLE_TEAM
	db 19, WING_ATTACK
	db 25, SONICBOOM
	db 31, LEECH_LIFE
	db 37, WHIRLWIND
	db 43, SCREECH
	db 49, RAZOR_WIND
	db 55, ANCIENTPOWER
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 24, QUAGSIRE
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 11, SLAM
	db 21, HAZE
	db 31, RAIN_DANCE
	db 41, EARTHQUAKE
	db 51, HYDRO_PUMP
	db 51, AMNESIA
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 11, SLAM
	db 21, HAZE
	db 33, RAIN_DANCE
	db 44, EARTHQUAKE
	db 55, HYDRO_PUMP
	db 55, AMNESIA
	db 66, BELLY_DRUM
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, BATON_PASS
	db 1, TACKLE
	db 1, CHARM
	db 8, SAND_ATTACK
	db 16, CONFUSION
	db 23, QUICK_ATTACK
	db 30, SWIFT
	db 36, PSYBEAM
	db 42, PSYCHIC_M
	db 47, FUTURE_SIGHT
	db 52, MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, BATON_PASS
	db 1, TACKLE
	db 1, CHARM
	db 8, SAND_ATTACK
	db 16, FAINT_ATTACK
	db 23, QUICK_ATTACK
	db 30, SCREECH
	db 36, PURSUIT
	db 42, CONFUSE_RAY
	db 47, MEAN_LOOK
	db 52, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 11, FAINT_ATTACK
	db 16, HAZE
	db 26, MEAN_LOOK
	db 31, PURSUIT
	db 41, NIGHT_SHADE
	db 46, BEAT_UP
	db 56, SKY_ATTACK
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 37, WITHDRAW
	db 46, SPIKES
	db 51, PSYCHIC_M
	db 57, BELLY_DRUM
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, ENCORE
	db 1, GROWL
	db 1, PSYWAVE
	db 6, SPITE
	db 12, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 27, PSYBEAM
	db 36, PAIN_SPLIT
	db 36, HYPNOSIS
	db 46, NIGHT_SHADE
	db 57, FIRE_SPIN
	db 68, PERISH_SONG
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 1, PSYWAVE
	db 40, SKETCH
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, MIMIC
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, DESTINY_BOND
	db 30, SAFEGUARD
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, TACKLE
	db 1, GROWL
	db 7, CONFUSION
	db 13, STOMP
	db 20, AGILITY
	db 27, FAINT_ATTACK
	db 34, PSYBEAM
	db 41, BATON_PASS
	db 48, PSYCHIC_M
	db 56, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SELFDESTRUCT
	db 8, RAPID_SPIN
	db 15, BIDE
	db 22, PIN_MISSILE
	db 29, TAKE_DOWN
	db 36, DOUBLE_EDGE
	db 43, SPIKES
	db 50, EXPLOSION
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SELFDESTRUCT
	db 8, RAPID_SPIN
	db 15, BIDE
	db 22, PIN_MISSILE
	db 29, TAKE_DOWN
	db 37, SPIKE_CANNON
	db 45, SPIKES
	db 54, EXPLOSION
	db 64, BATON_PASS
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 13, GLARE
	db 17, RAGE
	db 25, PURSUIT
	db 29, SPITE
	db 37, TAKE_DOWN
	db 42, ROCK_SLIDE
	db 51, SCREECH
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, MUD_SLAP
	db 13, HARDEN
	db 20, MAGNITUDE
	db 27, WING_ATTACK
	db 34, SLASH
	db 41, RAZOR_WIND
	db 48, SCREECH
	db 55, EARTHQUAKE
	db 62, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 10, ROCK_THROW
	db 14, HARDEN
	db 23, RAGE
	db 27, BIND
	db 36, SANDSTORM
	db 40, SLAM
	db 49, ROCK_SLIDE
	db 59, SKULL_BASH
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, LICK
	db 8, BITE
	db 13, CHARM
	db 19, STOMP
	db 26, ROAR
	db 34, TAKE_DOWN
	db 43, HEAL_BELL
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, LICK
	db 8, BITE
	db 13, CHARM
	db 19, STOMP
	db 26, ROAR
	db 34, TAKE_DOWN
	db 43, HEAL_BELL
	db 53, MEGA_PUNCH
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, POISON_STING
	db 7, HARDEN
	db 10, WATER_GUN
	db 18, MINIMIZE
	db 24, RAPID_SPIN
	db 24, SPIKES
	db 32, PIN_MISSILE
	db 40, TAKE_DOWN
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 26, COMET_PUNCH
	db 32, METAL_CLAW
	db 38, SLASH
	db 46, SWORDS_DANCE
	db 52, AGILITY
	db 60, BATON_PASS
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, WITHDRAW
	db 14, ENCORE
	db 23, SAFEGUARD
	db 28, BIDE
	db 37, BATON_PASS
	db 46, SPIDER_WEB
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, HORN_ATTACK
	db 12, ENDURE
	db 19, VITAL_THROW
	db 27, SEISMIC_TOSS
	db 35, COUNTER
	db 44, SUBMISSION
	db 54, MEGAHORN
	db 65, REVERSAL
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, FAINT_ATTACK
	db 17, POWDER_SNOW
	db 25, PURSUIT
	db 33, SCREECH
	db 41, SLASH
	db 49, ICE_BEAM
	db 57, REFLECT
	db 65, BEAT_UP
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, FAINT_ATTACK
	db 15, FURY_SWIPES
	db 22, LICK
	db 29, REST
	db 36, SNORE
	db 43, STRENGTH
	db 50, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 8, FAINT_ATTACK
	db 15, FURY_SWIPES
	db 22, LICK
	db 29, REST
	db 30, SLASH
	db 39, SNORE
	db 49, STRENGTH
	db 59, THRASH
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, SPIKES
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 43, ACID_ARMOR
	db 50, SACRED_FIRE
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, SPIKES
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 48, ACID_ARMOR
	db 56, SACRED_FIRE
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, FURY_ATTACK
	db 10, POWDER_SNOW
	db 19, ENDURE
	db 28, TAKE_DOWN
	db 37, MIST
	db 46, BLIZZARD
	db 55, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_ATTACK
	db 10, POWDER_SNOW
	db 19, ENDURE
	db 28, TAKE_DOWN
	db 33, HORN_DRILL
	db 42, MIST
	db 56, BLIZZARD
	db 70, AMNESIA
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 7, HARDEN
	db 13, POWDER_SNOW
	db 19, BUBBLEBEAM
	db 25, SPIKES
	db 25, AURORA_BEAM
	db 31, RECOVER
	db 37, MIRROR_COAT
	db 43, ANCIENTPOWER
	db 51, BLIZZARD
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, LOCK_ON
	db 20, BUBBLEBEAM
	db 21, PSYBEAM
	db 22, AURORA_BEAM
	db 32, FOCUS_ENERGY
	db 42, ICE_BEAM
	db 52, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, PURSUIT
	db 1, WATER_GUN
	db 11, LOCK_ON
	db 20, BUBBLEBEAM
	db 21, PSYBEAM
	db 22, AURORA_BEAM
	db 28, OCTAZOOKA
	db 38, CONSTRICT
	db 48, ICE_BEAM
	db 58, BEAT_UP
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 1, SPIKES
	db 1, RAPID_SPIN
	db 35, DRILL_PECK
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, BUBBLE
	db 10, SUPERSONIC
	db 18, BUBBLEBEAM
	db 25, WING_ATTACK
	db 32, HAZE
	db 39, TWISTER
	db 46, CONFUSE_RAY
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 8, WHIRLWIND
	db 13, SAND_ATTACK
	db 19, SWIFT
	db 25, AGILITY
	db 33, STEEL_WING
	db 41, SPIKES
	db 49, DRILL_PECK
	db 57, SKY_ATTACK
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 42, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 27, FIRE_SPIN
	db 35, FLAMETHROWER
	db 43, CRUNCH
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 30, FIRE_SPIN
	db 41, FLAMETHROWER
	db 52, CRUNCH
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 32, AGILITY
	db 40, OCTAZOOKA
	db 51, HYDRO_PUMP
	db 58, OUTRAGE
	db 65, HAZE
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 9, MUD_SLAP
	db 13, WATER_GUN
	db 17, DEFENSE_CURL
	db 24, ROLLOUT
	db 31, ENDURE
	db 41, TAKE_DOWN
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 9, MUD_SLAP
	db 13, WATER_GUN
	db 17, DEFENSE_CURL
	db 24, ROLLOUT
	db 25, HORN_ATTACK
	db 33, MAGNITUDE
	db 41, RAPID_SPIN
	db 49, EARTHQUAKE
	db 57, BODY_SLAM
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, DEFENSE_CURL
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, THUNDER_WAVE
	db 52, MEGA_KICK
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, LEER
	db 15, HYPNOSIS
	db 23, STOMP
	db 31, ICY_WIND
	db 40, TAKE_DOWN
	db 49, BLIZZARD
	db 59, CONFUSE_RAY
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 16, ROLLING_KICK
	db 16, COMET_PUNCH
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROLLING_KICK
	db 21, FOCUS_ENERGY
	db 21, PURSUIT
	db 25, QUICK_ATTACK
	db 31, RAPID_SPIN
	db 37, COUNTER
	db 43, AGILITY
	db 49, SUBSTITUTE
	db 55, TRIPLE_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POUND
	db 1, SWEET_KISS
	db 9, CONFUSION
	db 13, POWDER_SNOW
	db 21, MEAN_LOOK
	db 28, ICE_PUNCH
	db 33, SING
	db 37, PSYCHIC_M
	db 45, PERISH_SONG
	db 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, PURSUIT
	db 17, LIGHT_SCREEN
	db 25, THUNDERPUNCH
	db 33, SUBSTITUTE
	db 41, THUNDERBOLT
	db 49, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, SUBSTITUTE
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, DEFENSE_CURL
	db 13, STOMP
	db 19, MILK_DRINK
	db 26, BIDE
	db 34, ROLLOUT
	db 43, BODY_SLAM
	db 53, HEAL_BELL
	db 64, MEGA_KICK
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 5, GROWL
	db 9, TAIL_WHIP
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 23, EGG_BOMB
	db 29, SING
	db 35, MINIMIZE
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, HEAL_BELL
	db 66, BARRAGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, SPARK
	db 21, ROAR
	db 31, QUICK_ATTACK
	db 41, REFLECT
	db 51, THUNDERBOLT
	db 61, CRUNCH
	db 71, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, FLAME_WHEEL
	db 21, ROAR
	db 31, FIRE_SPIN
	db 41, STOMP
	db 51, FLAMETHROWER
	db 61, SWAGGER
	db 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, GUST
	db 21, RAIN_DANCE
	db 31, BUBBLEBEAM
	db 41, AURORA_BEAM
	db 51, MIST
	db 61, MIRROR_COAT
	db 71, HYDRO_PUMP
	db 81, WHIRLWIND
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, PURSUIT
	db 36, SCARY_FACE
	db 43, CRUNCH
	db 50, EARTHQUAKE
	db 57, THRASH
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, PURSUIT
	db 38, SCARY_FACE
	db 47, CRUNCH
	db 56, EARTHQUAKE
	db 65, THRASH
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, PURSUIT
	db 38, SCARY_FACE
	db 47, CRUNCH
	db 61, EARTHQUAKE
	db 75, THRASH
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, MOONLIGHT
	db 1, GUST
	db 11, RAIN_DANCE
	db 22, SWIFT
	db 33, WHIRLWIND
	db 44, ANCIENTPOWER
	db 55, SAFEGUARD
	db 66, PSYCHIC_M
	db 77, AEROBLAST
	db 88, RECOVER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_BLAST
	db 1, MORNING_SUN
	db 1, GUST
	db 11, SUNNY_DAY
	db 22, SWIFT
	db 33, WHIRLWIND
	db 44, ANCIENTPOWER
	db 55, SAFEGUARD
	db 66, DRILL_PECK
	db 77, SACRED_FIRE
	db 88, RECOVER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 11, RECOVER
	db 22, HEAL_BELL
	db 33, SAFEGUARD
	db 44, ANCIENTPOWER
	db 55, FUTURE_SIGHT
	db 66, BATON_PASS
	db 77, PERISH_SONG
	db 0 ; no more level-up moves
