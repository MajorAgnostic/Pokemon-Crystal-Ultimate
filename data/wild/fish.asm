DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	fishgroup 50 percent + 1, .CloysterHoister_Old,  .CloysterHoister_Good,  .CloysterHoister_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     KRABBY,     15
.Shore_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     KRABBY,     35
	db  90 percent + 1, SHELLDER,   35
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     KINGLER,    75
	db  70 percent,     time_group 1
	db  90 percent + 1, CLOYSTER,   75
	db 100 percent,     KINGLER,    75

.Ocean_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     TENTACOOL,  15
.Ocean_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     TENTACOOL,  35
	db  90 percent + 1, SHELLDER,   35
	db 100 percent,     time_group 2
.Ocean_Super:
	db  40 percent,     TENTACRUEL,  75
	db  70 percent,     TENTACRUEL,  75
	db  90 percent + 1, time_group 3
	db 100 percent,     CLOYSTER,    75

.Lake_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     GOLDEEN,    15
.Lake_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     GOLDEEN,    35
	db  90 percent + 1, GOLDEEN,    35
	db 100 percent,     GOLDEEN,    35
.Lake_Super:
	db  40 percent,     SEAKING,    75
	db  70 percent,     SEAKING,    75
	db  90 percent + 1, GYARADOS,   75
	db 100 percent,     SEAKING,    75

.Pond_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     POLIWAG,    15
.Pond_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     POLIWHIRL,  35
	db  90 percent + 1, POLIWHIRL,  35
	db 100 percent,     POLIWHIRL,  35
.Pond_Super:
	db  40 percent,     POLIWHIRL,  70
	db  70 percent,     POLIWHIRL,  70
	db  90 percent + 1, GYARADOS,   75
	db 100 percent,     POLIWRATH,  75

.Dratini_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Dratini_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     MAGIKARP,   15
	db  90 percent + 1, MAGIKARP,   15
	db 100 percent,     time_group 4
.Dratini_Super:
	db  40 percent,     GYARADOS,   75
	db  70 percent,     DRATINI,    65
	db  90 percent + 1, GYARADOS,   75
	db 100 percent,     DRAGONAIR,  70

.Qwilfish_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     QWILFISH,   15
.Qwilfish_Swarm_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     QWILFISH,   35
	db  90 percent + 1, QWILFISH,   40
	db 100 percent,     QWILFISH,   40
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH,   75
	db  70 percent,     QWILFISH,   75
	db  90 percent + 1, QWILFISH,   80
	db 100 percent,     QWILFISH,   80

.Gyarados_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Gyarados_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     MAGIKARP,   15
	db  90 percent + 1, MAGIKARP,   15
	db 100 percent,     GYARADOS,   35
.Gyarados_Super:
	db  40 percent,     GYARADOS,   75
	db  70 percent,     GYARADOS,   75
	db  90 percent + 1, GYARADOS,   75
	db 100 percent,     GYARADOS,   75

.WhirlIslands_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     KRABBY,     15
.WhirlIslands_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     KRABBY,     35
	db  90 percent + 1, HORSEA,     35
	db 100 percent,     HORSEA,     35
.WhirlIslands_Super:
	db  40 percent,     KINGLER,    75
	db  70 percent,     SEADRA,     70
	db  90 percent + 1, KINGLER,    75
	db 100 percent,     SEADRA,     70

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     TENTACOOL,  15
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     GOLDEEN,    35
	db  90 percent + 1, TENTACOOL,  35
	db 100 percent,     TENTACOOL,  35
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     SEAKING,    75
	db  70 percent,     TENTACRUEL, 75
	db  90 percent + 1, GYARADOS,   75
	db 100 percent,     QWILFISH,   75
	
.Remoraid_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     POLIWAG,    15
.Remoraid_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     POLIWHIRL,  35
	db  90 percent + 1, POLIWHIRL,  35
	db 100 percent,     REMORAID,   30
.Remoraid_Super:
	db  40 percent,     POLIWHIRL,  70
	db  70 percent,     GYARADOS,   75
	db  90 percent + 1, POLITOED,   75
	db 100 percent,     REMORAID,   70
	
.CloysterHoister_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   15
.CloysterHoister_Good:
	db  35 percent,     MAGIKARP,   15
	db  70 percent,     time_group 0
	db  90 percent + 1, MAGIKARP,   35
	db 100 percent,     time_group 0
.CloysterHoister_Super:
	db  40 percent,     CLOYSTER,   75
	db  70 percent,     SHELLDER,   70
	db  90 percent + 1, CLOYSTER,   75
	db 100 percent,     SHELLDER,   70

TimeFishGroups:
	;  day              nite
	db TENTACOOL,  35,  STARYU,     35 ; 0
	db TENTACRUEL, 75,  STARMIE,    75 ; 1
	db MANTINE,    35,  CHINCHOU,   35 ; 2
	db MANTINE,    75,  LANTURN,    75 ; 3
	db DRATINI,    25,  CHINCHOU,   35 ; 4
