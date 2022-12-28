C_TEXT:C284($path)
C_LONGINT:C283($page)
C_PICTURE:C286($pict)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.documents:=ds:C1482.Documents.all().orderBy("pageNumber")
		
		Form:C1466.tabControl:=New object:C1471
		Form:C1466.tabControl.values:=Form:C1466.documents.toCollection("title").extract("title")
		Form:C1466.tabControl.index:=0
		
		WParea1:=Form:C1466.documents[0].comments
		WParea2:=Form:C1466.documents[0].sample
		
		WP SET VIEW PROPERTIES:C1648(WParea2; New object:C1471(wk formula highlight:K81:350; wk never:K81:352; wk formula highlight color:K81:351; "Yellow"; wk visible references:K81:286; False:C215))
		
		Form:C1466.displayValues:=True:C214
		Form:C1466.modePage:=True:C214
		
		Form:C1466.trace:=False:C215
		
		Form:C1466.tbIgnore:=True:C214
		Form:C1466.tbTextInLine:=False:C215
		Form:C1466.tbAsTextBoxes:=False:C215
		
	: (Form event code:C388=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
	: (Form event code:C388=On Page Change:K2:54)
		
		SetupAreas
		
		
End case 