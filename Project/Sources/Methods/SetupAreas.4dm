//%attributes = {}
$page:=FORM Get current page:C276

WParea1:=Form:C1466.documents[$page-1].comments
WParea2:=Form:C1466.documents[$page-1].sample


Form:C1466.people:=ds:C1482.People.all().orderBy("lastname asc")
WP SET DATA CONTEXT:C1786(WParea2; Form:C1466.people[0])
WP COMPUTE FORMULAS:C1707(WParea2)
LISTBOX SELECT ROW:C912(*; "LB"; 1)
