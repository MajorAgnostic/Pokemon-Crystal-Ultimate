ReinitBattleAnimFrameset:
	ld hl, BATTLEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_DURATION
	add hl, bc
	ld [hl], 0
	ld hl, BATTLEANIMSTRUCT_FRAME
	add hl, bc
	ld [hl], -1
	ret

GetBattleAnimFrame:
.loop
	ld hl, BATTLEANIMSTRUCT_DURATION
	add hl, bc
	ld a, [hl]
	and a
	jr z, .next_frame
	dec [hl]
	call .GetPointer
	ld a, [hli]
	push af
	jr .okay

.next_frame
	ld hl, BATTLEANIMSTRUCT_FRAME
	add hl, bc
	inc [hl]
	call .GetPointer
	ld a, [hli]
	cp oamrestart_command
	jr z, .restart
	cp oamend_command
	jr z, .repeat_last

	push af
	ld a, [hl]
	push hl
	and ~(Y_FLIP << 1 | X_FLIP << 1)
	ld hl, BATTLEANIMSTRUCT_DURATION
	add hl, bc
	ld [hl], a
	pop hl
.okay
	ld a, [hl]
	and Y_FLIP << 1 | X_FLIP << 1 ; The << 1 is compensated in the "oamframe" macro
	srl a
	ld [wBattleAnimTempFrameOAMFlags], a
	pop af
	ret

.repeat_last
	xor a
	ld hl, BATTLEANIMSTRUCT_DURATION
	add hl, bc
	ld [hl], a

	ld hl, BATTLEANIMSTRUCT_FRAME
	add hl, bc
	dec [hl]
	dec [hl]
	jr .loop

.restart
	xor a
	ld hl, BATTLEANIMSTRUCT_DURATION
	add hl, bc
	ld [hl], a

	dec a
	ld hl, BATTLEANIMSTRUCT_FRAME
	add hl, bc
	ld [hl], a
	jr .loop

.GetPointer:
	ld hl, BATTLEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	ld e, [hl]
	ld d, 0
	ld hl, BattleAnimFrameData
	add hl, de
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld hl, BATTLEANIMSTRUCT_FRAME
	add hl, bc
	ld l, [hl]
	ld h, 0
	add hl, hl
	add hl, de
	ret

GetBattleAnimOAMPointer:
	ld l, a
	ld h, 0
	ld de, BattleAnimOAMData
	add hl, hl
	add hl, hl
	add hl, de
	ret

LoadBattleAnimGFX:
	push hl
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, AnimObjGFX
	add hl, de
	ld c, [hl]
	inc hl
	ld b, [hl]
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	or h ; NULL means it's a Poké Ball
	call z, .GetBall
	pop de
	push bc
	call DecompressRequest2bpp
	pop bc
	ret
	
.GetBall
	ldh a, [rSVBK]
	push af
	
	ld a, BANK(wCurItem)
	ldh [rSVBK], a
	ld a, [wCurItem]
	dec a
	ld e, a
	ld d, 0
	; seek ball's palette
	push bc
	push de
	ld hl, BallColors
rept 4
	add hl, de
endr
	ld a, BANK(wOBPals2)
	ldh [rSVBK], a
	; load the RGB colors into the middle two colors of PAL_BATTLE_OB_RED
	ld de, wOBPals2 palette PAL_BATTLE_OB_RED color 1
	ld bc, PAL_COLOR_SIZE * 2
	call CopyBytes
	; load white background in PAL_BATTLE_OG_GREEN
	ld hl, WhitePalette
	ld de, wOBPals2 palette PAL_BATTLE_OB_GREEN color 1
	ld bc, PAL_COLOR_SIZE
	call CopyBytes
	; apply the updated colors to the palette RAM
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	pop de
	pop bc

	pop af
	ldh [rSVBK], a
	; get Ball GFX pointer
	ld b, BANK("Battle Ball Icons")
	ld hl, AnimBallObjGFX
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret
	
INCLUDE "data/battle_anims/ball_colors.asm"

INCLUDE "data/battle_anims/framesets.asm"

INCLUDE "data/battle_anims/oam.asm"

INCLUDE "data/battle_anims/object_gfx.asm"
