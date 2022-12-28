var $textBox : Object


If (WP Get elements:C1550(WParea2; wk type text box:K81:372).length<=0)
	ALERT:C41("No text box in this document!")
Else 
	$textBox:=WP Get elements:C1550(WParea2; wk type text box:K81:372)[0]
	ALERT:C41(JSON Stringify:C1217($textBox; *))
End if 
