If (Form:C1466.trace)
	TRACE:C157
End if 

If (Form:C1466.currentPeople#Null:C1517)
	WP SET DATA CONTEXT:C1786(WParea2; Form:C1466.currentPeople)  //Form.currentPeople is the currently selected item in the list box
	WP COMPUTE FORMULAS:C1707(WParea2)
End if 
