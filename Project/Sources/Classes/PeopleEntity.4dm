Class extends Entity

Function get fullName()->$fullname : Text
	
	If (This:C1470.title#"")
		$fullname:=$fullname+This:C1470.title+" "
	End if 
	
	If (This:C1470.firstname#"")
		$fullname:=$fullname+This:C1470.firstname+" "
	End if 
	
	If (This:C1470.lastname#"")
		$fullname:=$fullname+This:C1470.lastname
	End if 
	
	
	
Function get fullAddress()->$fullAddress : Text
	
	If (This:C1470.address#"")
		$fullAddress:=$fullAddress+This:C1470.address+"\r"
	End if 
	
	If (This:C1470.zipCode#"")
		$fullAddress:=$fullAddress+This:C1470.zipCode+" "
	End if 
	
	If (This:C1470.city#"")
		$fullAddress:=$fullAddress+This:C1470.city
	End if 
	