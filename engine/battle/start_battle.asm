ShowLinkBattleParticipants:
; If we're not in a communications room,
; we don't need to be here.
	ld a, [wLinkMode]
	and a
	ret z

	farcall _ShowLinkBattleParticipants
	ld c, 150
	call DelayFrames
	call ClearTilemap
	call ClearSprites
	ret

FindFirstAliveMonAndStartBattle:
	xor a
	ldh [hMapAnims], a
	call DelayFrame
	ld b, PARTY_LENGTH
	ld hl, wPartyMon1HP
	ld de, PARTYMON_STRUCT_LENGTH - 1

.loop
	ld a, [hli]
	or [hl]
	jr nz, .okay
	add hl, de
	dec b
	jr nz, .loop

.okay
	ld de, MON_LEVEL - MON_HP
	add hl, de
	ld a, [hl]
	ld [wBattleMonLevel], a
	predef DoBattleTransition
	farcall _LoadBattleFontsHPBar
	ld a, 1
	ldh [hBGMapMode], a
	call ClearSprites
	call ClearTilemap
	xor a
	ldh [hBGMapMode], a
	ldh [hWY], a
	ldh [rWY], a
	ldh [hMapAnims], a
	ret

PlayBattleMusic:
	push hl
	push de
	push bc

	xor a
	ld [wMusicFade], a
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	call MaxVolume

	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	cp LANDMARK_BATTLE_TOWER
	ld de, MUSIC_PEON_BATTLE
	jp z, .done
	
	ld a, [wBattleType]
	cp BATTLETYPE_SUICUNE
	ld de, MUSIC_SUICUNE_BATTLE
	jp z, .done
	cp BATTLETYPE_ROAMING
	jp z, .done
	
	ld a, [wBattleType]
	cp BATTLETYPE_LUGIA
	ld de, MUSIC_LUGIABATTLE
	jp z, .done
	
	ld a, [wBattleType]
	cp BATTLETYPE_HOOH
	ld de, MUSIC_HOOHBATTLE
	jp z, .done
	
	ld a, [wBattleType]
	cp BATTLETYPE_KANTOLEGEND
	ld de, MUSIC_KANTOLEGENDBATTLE
	jp z, .done

	; Are we fighting a trainer?
	ld a, [wOtherTrainerClass]
	and a
	jr nz, .trainermusic

	farcall RegionCheck
	ld a, e
	and a
	jr nz, .kantowild

	ld de, MUSIC_JOHTO_WILD_BATTLE
    ld a, [wTimeOfDay]
    cp NITE_F
    jp c, .done ; not NITE_F or EVE_F
    ld de, MUSIC_JOHTO_WILD_BATTLE_NIGHT
    jp .done

.kantowild
        ;new code    
    ld de, MUSIC_KANTO_WILD_BATTLE
    ld a, [wTimeOfDay]
    cp NITE_F
    jp c, .done ; not NITE_F or EVE_F
        ;end new code
    ld de, MUSIC_KANTO_WILD_BATTLE_NIGHT
    jp .done

.trainermusic
	ld de, MUSIC_CHAMPION_BATTLE
	cp CHAMPION
	jp z, .done
	cp CLAIR2
	jp z, .done
	cp CHAMPION2
	jp z, .done
	
	ld de, MUSIC_KANTO_CHAMPION
	cp RED
	jp z, .done
	
	ld de, MUSIC_STEVEN
	cp NICHOLAS
	jp z, .done
	
	ld de, MUSIC_ZINNIA_BATTLE
	cp ANDREA
	jp z, .done
	
	ld de, MUSIC_SUICUNE_BATTLE
	cp MORTY2
	jp z, .done
	
	ld de, MUSIC_RBY_KANTO_GYM_LEADER_BATTLE
	cp BLUE
	jr z, .done

	ld de, MUSIC_ROCKET_BATTLE
	cp GRUNTM
	jr z, .done
	cp GRUNTF
	jr z, .done
	
	ld de, MUSIC_UNOVA_E4
	cp EXECUTIVEM
	jr z, .done
	cp EXECUTIVEF
	jr z, .done
	
	ld de, MUSIC_ALOLA_E4
	cp ARCHER
	jr z, .done
	cp KING
	jr z, .done
	
	ld de, MUSIC_RSE_RIVAL_BATTLE
	cp CAL
	jr z, .done
	cp CRYSTAL
	jr z, .done

	ld de, MUSIC_KANTO_GYM_LEADER_BATTLE
	farcall IsKantoGymLeader
	jr c, .done

	; IsGymLeader also counts CHAMPION, RED, and the Kanto gym leaders
	; but they have been taken care of before this
	ld de, MUSIC_JOHTO_GYM_LEADER_BATTLE
	farcall IsGymLeader
	jr c, .done

	ld de, MUSIC_RIVAL_BATTLE
	ld a, [wOtherTrainerClass]
	cp RIVAL0
	jp z, .done
	cp RIVAL1
	jr z, .done
	cp RIVAL2
	jr nz, .othertrainer

	ld a, [wOtherTrainerID]
	cp RIVAL2_1_CHIKORITA ; Rival in Indigo Plateau
	jr c, .done
	ld de, MUSIC_WALLY
	jr .done

.othertrainer
	ld a, [wLinkMode]
	and a
	jr nz, .johtotrainer

	farcall RegionCheck
	ld a, e
	and a
	jr nz, .kantotrainer

.johtotrainer
	ld de, MUSIC_JOHTO_TRAINER_BATTLE
	jr .done

.kantotrainer
	ld de, MUSIC_KANTO_TRAINER_BATTLE

.done
	call PlayMusic

	pop bc
	pop de
	pop hl
	ret

ClearBattleRAM:
	xor a
	ld [wBattlePlayerAction], a
	ld [wBattleResult], a

	ld hl, wPartyMenuCursor
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld [wMenuScrollPosition], a
	ld [wCriticalHit], a
	ld [wBattleMonSpecies], a
	ld [wBattleParticipantsNotFainted], a
	ld [wCurBattleMon], a
	ld [wForcedSwitch], a
	ld [wTimeOfDayPal], a
	ld [wPlayerTurnsTaken], a
	ld [wEnemyTurnsTaken], a
	ld [wEvolvableFlags], a

	ld hl, wPlayerHPPal
	ld [hli], a
	ld [hl], a

	ld hl, wBattleMonDVs
	ld [hli], a
	ld [hl], a

	ld hl, wEnemyMonDVs
	ld [hli], a
	ld [hl], a

; Clear the entire BattleMons area
	ld hl, wBattle
	ld bc, wBattleEnd - wBattle
	xor a
	call ByteFill

	callfar ResetEnemyStatLevels

	call ClearWindowData

	ld hl, hBGMapAddress
	xor a ; LOW(vBGMap0)
	ld [hli], a
	ld [hl], HIGH(vBGMap0)
	ret
