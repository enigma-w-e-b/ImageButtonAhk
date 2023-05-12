
## Exemplos de uso
- Window Handle or (hWnd) and passed as an id to the ImageButton class.

````
Gui, Add, Button, x10 y10 w200 h40 gBtnFuncA hWnd_BTN_ID_1
````
- Styles are defined as arrays containing information about the appearance of buttons in different states (normal, hover and pressed). Each style contains information such as background color, text color, border color and border thickness.

````
Style := [[0, 0x80F0F0F0, , , 8, 0xFFF0F0F0, 0x8046B8DA, 2] ; normal
	, [0, 0x80C6E9F4, , , 8, 0xFFF0F0F0, 0x8046B8DA, 2] ; hover
	, [0, 0x8086D0E7, , , 8, 0xFFF0F0F0, 0x8046B8DA, 2] ; pressed
	, [0, 0x80F0F0F0, , , 8, 0xFFF0F0F0, 0x8046B8DA, 2]]
````
- The Create function is a method of the ImageButton class that is used to create a new image button. The function's first parameter is the button's hWnd, which is passed through the _BTN_ID_1 variable. The second parameter is the text that should be displayed on the button, which in this case is "BTN TEST 1 [ A ]". The third parameter is an array called Style*, which is a default four-element style that will be used to define the appearance of the button.

````
ImageButton.Create(_BTN_ID_1,"BTN TESTE 1 [ A ]", EStyle*) ; define o estilo inicial
````

## Images
<div style="display: flex; flex-wrap: wrap; justify-content: center; align-items: center;">
  <img src="https://i.ibb.co/mCLKf7N/stack-example-02.png" alt="Example A" style="width: 45%; border-right: 3px solid #ccc;">
  <img src="https://i.ibb.co/tQ9m2Xs/stack-example-02.png" alt="Example B" style="width: 45%;">
</div>
