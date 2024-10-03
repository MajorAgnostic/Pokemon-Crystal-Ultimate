BugContestantPointers:
	table_width 2, BugContestantPointers
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw LEDIAN,     536
	dbw BEEDRILL,   515
	dbw VENONAT,    486

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dbw BUTTERFREE, 528
	dbw BUTTERFREE, 501
	dbw PARAS,      477

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw HERACROSS,  566
	dbw SCYTHER,    532
	dbw PINSIR,     549

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw PINSIR,     552
	dbw BUTTERFREE, 524
	dbw VENONAT,    501

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BUG_CATCHER_BENNY
	dbw BUTTERFREE, 518
	dbw YANMA,      527
	dbw LEDYBA,     485

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw PINSIR,     551
	dbw PARAS,      529
	dbw VENONAT,    514

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw YANMA,      530
	dbw LEDYBA,     501
	dbw BEEDRILL,   494

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw SCYTHER,    545
	dbw BUTTERFREE, 492
	dbw LEDIAN,     511

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dbw LEDIAN,     521
	dbw PINSIR,     550
	dbw PARAS,      451

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw VENONAT,    517
	dbw PARAS,      504
	dbw LEDYBA,     489
