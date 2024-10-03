ItemPocketNames:
; entries correspond to item type constants
	table_width 2, ItemPocketNames
	dw .Item
	dw .Key
	dw .Ball
	dw .TM
	dw .Med
	assert_table_length NUM_ITEM_TYPES

.Item: db "ITEM POCKET@"
.Key:  db "KEY POCKET@"
.Ball: db "BALL POCKET@"
.TM:   db "TM/HM POCKET@"
.Med:  db "MED POCKET@"
