var $path : Text
var $options : Object

If (Form:C1466.trace)
	TRACE:C157
End if 


$options:=New object:C1471
$options[wk visible background:K81:289]:=Form:C1466.tbExport  // true or false

$path:=Get 4D folder:C485(Data folder:K5:33)+"export.docx"
WP EXPORT DOCUMENT:C1337(WParea2; $path; wk docx:K81:277; $options)

OPEN URL:C673($Path)
