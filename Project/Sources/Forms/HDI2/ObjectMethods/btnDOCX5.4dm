var $file : 4D:C1709.File
var $options : Object

If (Form:C1466.trace)
	TRACE:C157
End if 


$file:=File:C1566(Folder:C1567(fk resources folder:K87:11).path+"textbox.docx")
If ($file.exists)
	
	$options:=New object:C1471
	Case of 
		: (Form:C1466.tbIgnoreImport)
			$options.anchoredTextAreas:="ignore"  // textboxes are NOT imported
		: (Form:C1466.tbTextInLine)
			$options.anchoredTextAreas:="inline"  // textboxes are imported (once) as inline text
		: (Form:C1466.tbAsTextBoxes)
			$options.anchoredTextAreas:="anchored"  // textboxes are imported as textboxes
	End case 
	
	WParea2:=WP Import document:C1318($file.platformPath; $options)
	
Else 
	ALERT:C41("The textbox.docx can't be foud in the resources folder. Sorry.")
End if 