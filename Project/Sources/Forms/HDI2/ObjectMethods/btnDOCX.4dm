var $path : Text


$path:=Get 4D folder:C485(Data folder:K5:33)+"export.docx"
WP EXPORT DOCUMENT:C1337(WParea2; $path; wk docx:K81:277)

OPEN URL:C673($Path)
