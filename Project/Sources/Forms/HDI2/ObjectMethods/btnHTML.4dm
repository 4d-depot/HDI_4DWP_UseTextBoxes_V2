

C_TEXT:C284($Path)

$Path:=Get 4D folder:C485(Data folder:K5:33)+"export.html"
WP EXPORT DOCUMENT:C1337(WParea2; $path; wk web page complete:K81:2; wk normal:K81:7)

ALERT:C41("For the HTML export to work properly, another text box and image must be present in the 'embedded' mode (which is the case for this document).")


OPEN URL:C673($Path)
