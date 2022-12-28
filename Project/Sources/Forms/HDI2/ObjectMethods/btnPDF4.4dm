var $textBox : Object


var $window : Integer
var $form : Object

$form:=New object:C1471
$form.offsetX:=New object:C1471("values"; New collection:C1472("8cm"; "8.5cm"; "9cm"; "9.5cm"; "10cm"); "index"; 2)
$form.offsetY:=New object:C1471("values"; New collection:C1472("4cm"; "4.5cm"; "5cm"; "5.5cm"; "6cm"); "index"; 2)

$form.width:=New object:C1471("values"; New collection:C1472("8cm"; "8.5cm"; "9cm"; "9.5cm"; "10cm"); "index"; 1)
$form.height:=New object:C1471("values"; New collection:C1472("3cm"; "3.5cm"; "4cm"; "4.5cm"; "5cm"); "index"; 1)

$form.padding:=New object:C1471("values"; New collection:C1472("0.25cm"; "0.5cm"; "0.75cm"; "1cm"); "index"; 0)

$window:=Open form window:C675("D_Sizes")
DIALOG:C40("D_Sizes"; $form)


If (Form:C1466.trace)
	TRACE:C157
End if 

//******************************************************************************

// #0 check for an existing text box
$textBox:=WP Get element by ID:C1549(WParea2; "AddressArea")
If ($textBox#Null:C1517)
	WP DELETE TEXT BOX:C1798($textBox)
End if 


// #1 create the text box
$textBox:=WP New text box:C1797(WParea2; 1)


// #2 define some text box attributes
WP SET ATTRIBUTES:C1342($textBox; wk id:K81:193; "AddressArea")
WP SET ATTRIBUTES:C1342($textBox; wk anchor origin:K81:235; wk paper box:K81:215)
WP SET ATTRIBUTES:C1342($textBox; wk anchor horizontal align:K81:237; wk left:K81:95; wk vertical align:K81:9; wk top:K81:97)

WP SET ATTRIBUTES:C1342($textBox; wk anchor horizontal offset:K81:236; $form.offsetX.values[$form.offsetX.index])
WP SET ATTRIBUTES:C1342($textBox; wk anchor vertical offset:K81:238; $form.offsetY.values[$form.offsetY.index])
WP SET ATTRIBUTES:C1342($textBox; wk width:K81:45; $form.width.values[$form.width.index])
WP SET ATTRIBUTES:C1342($textBox; wk height:K81:46; $form.height.values[$form.height.index])

WP SET ATTRIBUTES:C1342($textBox; wk padding:K81:15; $form.padding.values[$form.padding.index])  // inside margins

WP SET ATTRIBUTES:C1342($textBox; wk border style:K81:29; wk dashed:K81:117; wk border color:K81:34; "Blue"; wk border width:K81:39; "1pt"; wk border radius:K81:44; "10pt")
WP SET ATTRIBUTES:C1342($textBox; wk vertical align:K81:9; wk center:K81:99)

// #3: define the formulas inside the text box 

WP INSERT FORMULA:C1703($textBox; Formula:C1597(This:C1470.data.fullName); wk append:K81:179)
WP INSERT BREAK:C1413($textBox; wk paragraph break:K81:259; wk append:K81:179)
WP INSERT FORMULA:C1703($textBox; Formula:C1597(This:C1470.data.fullAddress); wk append:K81:179)

// #4: Style the content of the text box

WP SET ATTRIBUTES:C1342($textBox; wk font:K81:69; "Arial"; wk font bold:K81:68; wk true:K81:174; wk font size:K81:66; "18pt")



