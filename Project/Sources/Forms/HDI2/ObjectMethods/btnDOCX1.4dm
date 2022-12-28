

var $file : 4D:C1709.File

$file:=File:C1566(Folder:C1567(fk resources folder:K87:11).path+"textbox.docx")
If ($file.exists)
	
	$o:=New object:C1471
	Case of 
		: (Form:C1466.tbIgnore)
			$o.anchoredTextAreas:="ignore"  // textboxes are NOT imported
		: (Form:C1466.tbTextInLine)
			$o.anchoredTextAreas:="inline"  // textboxes are imported (once) as inline text
		: (Form:C1466.tbAsTextBoxes)
			$o.anchoredTextAreas:="textbox"  // textboxes are imported as textboxes
	End case 
	
	WParea2:=WP Import document:C1318($file.platformPath; $o)
	
Else 
	ALERT:C41("The textbox.docx can't be foud in the resources folder. Sorry.")
End if 

//$Path:=Get 4D folder(Data folder)+"export.docx"
//WP EXPORT DOCUMENT(WParea2; $path; wk docx)

//OPEN URL($Path)
