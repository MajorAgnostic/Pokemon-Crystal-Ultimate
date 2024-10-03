_BillsPC:
	call .CheckCanUsePC
	ret c
	call .LogIn
	call .UseBillsPC
	jp .LogOut

.CheckCanUsePC:
	ld a, [wPartyCount]
	and a
	ret nz
	ld hl, .PCGottaHavePokemonText
	call MenuTextboxBackup
	scf
	ret

.PCGottaHavePokemonText:
	text_far _PCGottaHavePokemonText
	text_end

.LogIn:
	xor a
	ldh [hBGMapMode], a
	call LoadStandardMenuHeader
	call ClearPCItemScreen
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	ld hl, .PCWhatText
	call PrintText
	pop af
	ld [wOptions], a
	call LoadFontsBattleExtra
	ret

.PCWhatText:
	text_far _PCWhatText
	text_end

.LogOut:
	call CloseSubmenu
	ret

.UseBillsPC:
	ld hl, .MenuHeader
	call LoadMenuHeader
	ld a, $1
.loop
	ld [wMenuCursorBuffer], a
	call SetPalettes
	xor a
	ld [wWhichIndexSet], a
	ldh [hBGMapMode], a
	call DoNthMenu
	jr c, .cancel
	ld a, [wMenuCursorBuffer]
	push af
	ld a, [wMenuSelection]
	ld hl, .Jumptable
	rst JumpTable
	pop bc
	ld a, b
	jr nc, .loop
.cancel
	call CloseWindow
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 0 ; items
	dw .items
	dw PlaceMenuStrings
	dw .strings

.strings
	db "WITHDRAW <PK><MN>@"
	db "DEPOSIT <PK><MN>@"
	db "CHANGE BOX@"
	db "MOVE <PK><MN> W/O MAIL@"
	db "SEE YA!@"

.Jumptable:
	dw BillsPC_WithdrawMenu
	dw BillsPC_DepositMenu
	dw BillsPC_ChangeBoxMenu
	dw BillsPC_MovePKMNMenu
	dw BillsPC_SeeYa

.items
	db 5 ; # items
	db 0 ; WITHDRAW
	db 1 ; DEPOSIT
	db 2 ; CHANGE BOX
	db 3 ; MOVE PKMN
	db 4 ; SEE YA!
	db -1

BillsPC_SeeYa:
	scf
	ret

BillsPC_MovePKMNMenu:
	call LoadStandardMenuHeader
	farcall IsAnyMonHoldingMail
	jr nc, .no_mail
	ld hl, .PCMonHoldingMailText
	call PrintText
	jr .quit

.no_mail
	farcall StartMoveMonWOMail_SaveGame
	jr c, .quit
	farcall _MovePKMNWithoutMail
	call ReturnToMapFromSubmenu
	call ClearPCItemScreen

.quit
	call CloseWindow
	and a
	ret

.PCMonHoldingMailText:
	text_far _PCMonHoldingMailText
	text_end

BillsPC_DepositMenu:
	call LoadStandardMenuHeader
	farcall _DepositPKMN
	call ReturnToMapFromSubmenu
	call ClearPCItemScreen
	call CloseWindow
	and a
	ret

CheckCurPartyMonFainted:
	ld hl, wPartyMon1HP
	ld de, PARTYMON_STRUCT_LENGTH
	ld b, $0
.loop
	ld a, [wCurPartyMon]
	cp b
	jr z, .skip
	ld a, [hli]
	or [hl]
	jr nz, .notfainted
	dec hl

.skip
	inc b
	ld a, [wPartyCount]
	cp b
	jr z, .done
	add hl, de
	jr .loop

.done
	scf
	ret

.notfainted
	and a
	ret

BillsPC_WithdrawMenu:
	call LoadStandardMenuHeader
	farcall _WithdrawPKMN
	call ReturnToMapFromSubmenu
	call ClearPCItemScreen
	call CloseWindow
	and a
	ret

PCCantTakeText:
	text_far _PCCantTakeText
	text_end

BillsPC_ChangeBoxMenu:
	farcall _ChangeBox
	and a
	ret

ClearPCItemScreen:
	call DisableSpriteUpdates
	xor a
	ldh [hBGMapMode], a
	call ClearBGPalettes
	call ClearSprites
	hlcoord 0, 0
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	ld a, " "
	call ByteFill
	hlcoord 0, 0
	lb bc, 10, 18
	call Textbox
	hlcoord 0, 12
	lb bc, 4, 18
	call Textbox
	call WaitBGMap2
	call SetPalettes ; load regular palettes?
	ret

CopyBoxmonToTempMon:
	ld a, [wCurPartyMon]
	ld hl, sBoxMon1Species
	ld bc, BOXMON_STRUCT_LENGTH
	call AddNTimes
	ld de, wTempMonSpecies
	ld bc, BOXMON_STRUCT_LENGTH
	ld a, BANK(sBoxMon1Species)
	call OpenSRAM
	call CopyBytes
	call CloseSRAM
	ret
	
_BillsPocketPC:
	call .CheckCanUsePocketPC
	ret c
	call .PocketLogIn
	call .UseBillsPocketPC
	jp .PocketLogOut

.CheckCanUsePocketPC:
	ld a, [wPartyCount]
	and a
	ret nz
	ld hl, .PocketPCGottaHavePokemonText
	call MenuTextboxBackup
	scf
	ret

.PocketPCGottaHavePokemonText:
	text_far _PCGottaHavePokemonText
	text_end

.PocketLogIn:
	xor a
	ldh [hBGMapMode], a
	call LoadStandardMenuHeader
	call ClearPCItemScreen
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	ld hl, .PocketPCWhatText
	call PrintText
	pop af
	ld [wOptions], a
	call LoadFontsBattleExtra
	ret

.PocketPCWhatText:
	text_far _PCWhatText
	text_end

.PocketLogOut:
	call CloseSubmenu
	ret

.UseBillsPocketPC:
	ld hl, .PocketMenuHeader
	call LoadMenuHeader
	ld a, $1
.loop
	ld [wMenuCursorBuffer], a
	call SetPalettes
	xor a
	ld [wWhichIndexSet], a
	ldh [hBGMapMode], a
	call DoNthMenu
	jr c, .Pocketcancel
	ld a, [wMenuCursorBuffer]
	push af
	ld a, [wMenuSelection]
	ld hl, .PocketJumptable
	rst JumpTable
	pop bc
	ld a, b
	jr nc, .loop
.Pocketcancel
	call CloseWindow
	ret

.PocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .PocketMenuData
	db 1 ; default option

.PocketMenuData:
	db STATICMENU_CURSOR ; flags
	db 0 ; items
	dw .Pocketitems
	dw PlaceMenuStrings
	dw .Pocketstrings

.Pocketstrings
	db "DEPOSIT <PK><MN>@"
	db "CHANGE BOX@"
	db "SEE YA!@"

.PocketJumptable:
	dw BillsPC_DepositMenu
	dw BillsPC_ChangeBoxMenu
	dw BillsPC_SeeYa

.Pocketitems
	db 3 ; # items
	db 0 ; DEPOSIT
	db 1 ; CHANGE BOX
	db 2 ; SEE YA!
	db -1

BillsPocketPC_SeeYa:
	scf
	ret

BillsPocketPC_MovePKMNMenu:
	call LoadStandardMenuHeader
	farcall IsAnyMonHoldingMail
	jr nc, .Pocketno_mail
	ld hl, .PocketPCMonHoldingMailText
	call PrintText
	jr .quit

.Pocketno_mail
	farcall StartMoveMonWOMail_SaveGame
	jr c, .quit
	farcall _MovePKMNWithoutMail
	call ReturnToMapFromSubmenu
	call ClearPCItemScreen

.quit
	call CloseWindow
	and a
	ret

.PocketPCMonHoldingMailText:
	text_far _PCMonHoldingMailText
	text_end

BillsPocketPC_DepositMenu:
	call LoadStandardMenuHeader
	farcall _DepositPKMN
	call ReturnToMapFromSubmenu
	call ClearPCItemScreen
	call CloseWindow
	and a
	ret

PocketCheckCurPartyMonFainted:
	ld hl, wPartyMon1HP
	ld de, PARTYMON_STRUCT_LENGTH
	ld b, $0
.loop
	ld a, [wCurPartyMon]
	cp b
	jr z, .skip
	ld a, [hli]
	or [hl]
	jr nz, .Pocketnotfainted
	dec hl

.skip
	inc b
	ld a, [wPartyCount]
	cp b
	jr z, .done
	add hl, de
	jr .loop

.done
	scf
	ret

.Pocketnotfainted
	and a
	ret

BillsPocketPC_ChangeBoxMenu:
	farcall _ChangeBox
	and a
	ret

PocketClearPCItemScreen:
	call DisableSpriteUpdates
	xor a
	ldh [hBGMapMode], a
	call ClearBGPalettes
	call ClearSprites
	hlcoord 0, 0
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	ld a, " "
	call ByteFill
	hlcoord 0, 0
	lb bc, 10, 18
	call Textbox
	hlcoord 0, 12
	lb bc, 4, 18
	call Textbox
	call WaitBGMap2
	call SetPalettes ; load regular palettes?
	ret

PocketCopyBoxmonToTempMon:
	ld a, [wCurPartyMon]
	ld hl, sBoxMon1Species
	ld bc, BOXMON_STRUCT_LENGTH
	call AddNTimes
	ld de, wTempMonSpecies
	ld bc, BOXMON_STRUCT_LENGTH
	ld a, BANK(sBoxMon1Species)
	call OpenSRAM
	call CopyBytes
	call CloseSRAM
	ret
