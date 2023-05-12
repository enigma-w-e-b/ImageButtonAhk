#Include Class_ImageButton.ahk

global btn1enable := True ;

Gui, Margin, 20, 20
Gui, Font, s11 normal, Segoe UI

Gui, Add, Button, x10 y10 w200 h40 gBtnFuncA hWnd_BTN_ID_1
Gui, Add, Button, x10 y55 w200 h40 gBtnFuncB hWnd_BTN_ID_2
Gui, Add, Button, x10 y100 w200 h40 gBtnFuncC hWnd_BTN_ID_3
Gui, Add, Button, x10 y145 w200 h40 gBtnFuncD hWnd_BTN_ID_4

EStyle := [[0, 0x80F0F0F0, , , 8, 0xFFF0F0F0, 0x8046B8DA, 2] ; normal
	, [0, 0x80C6E9F4, , , 8, 0xFFF0F0F0, 0x8046B8DA, 2] ; hover
	, [0, 0x8086D0E7, , , 8, 0xFFF0F0F0, 0x8046B8DA, 2] ; pressed
	, [0, 0x80F0F0F0, , , 8, 0xFFF0F0F0, 0x8046B8DA, 2]]

DStyle := [[0, 0x80F0F0F0, , , 8, 0xFFF0F0F0, 0x80D43F3A, 2] ; normal
	, [0, 0x80F0B9B8, , , 8, 0xFFF0F0F0, 0x80D43F3A, 2] ; hover
	, [0, 0x80E27C79, , , 8, 0xFFF0F0F0, 0x80D43F3A, 2] ; pressed
	, [0, 0x80F0F0F0, , , 8, 0xFFF0F0F0, 0x80D43F3A, 2]]

WStyle := [ [0, 0x80F0F0F0, , , 8, 0xFFF0F0F0, 0x80F0AD4E, 2] ; normal
	, [0, 0x80FCEFDC, , , 8, 0xFFF0F0F0, 0x80F0AD4E, 2] ; hover
	, [0, 0x80F6CE95, , , 8, 0xFFF0F0F0, 0x80F0AD4E, 2] ; pressed
	, [0, 0x80F0F0F0, , , 8, 0xFFF0F0F0, 0x80F0AD4E, 2] ]

SStyle := [ [0, 0x80F0F0F0, , , 8, 0xFFF0F0F0, 0x805CB85C, 2] ; normal
	, [0, 0x80C6E6C6, , , 8, 0xFFF0F0F0, 0x805CB85C, 2] ; hover
	, [0, 0x8091CF91, , , 8, 0xFFF0F0F0, 0x805CB85C, 2] ; pressed
	, [0, 0x80F0F0F0, , , 8, 0xFFF0F0F0, 0x805CB85C, 2] ]


ImageButton.Create(_BTN_ID_1,"BTN TESTE 1 [ A ]", EStyle*) ; define o estilo inicial
ImageButton.Create(_BTN_ID_2,"BTN TESTE 2", EStyle*) ; define o estilo inicial
ImageButton.Create(_BTN_ID_3,"BTN TESTE 3", WStyle*) ; define o estilo inicial
ImageButton.Create(_BTN_ID_4,"BTN TESTE 4", SStyle*) ; define o estilo inicial

Gui Show, w220 h200, Image Buttons
return

BtnFuncA:
	if (btn1enable) {
		ImageButton.Create(_BTN_ID_1, "BTN TESTE 1 [ D ]", DStyle*)
		btn1enable := False
	} else {
		ImageButton.Create(_BTN_ID_1, "BTN TESTE 1 [ A ]", EStyle*)
		btn1enable := True
	}
return

BtnFuncB:

BtnFuncC:

BtnFuncD:
