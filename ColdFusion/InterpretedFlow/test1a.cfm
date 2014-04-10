<!--- TEST CASE 1 [START]--->
	<h3>Test 1a (with brackets)</h3>
	<p>How well Coldfusion can interpret cf logic without brackets</p>
	
	<cfset testArray = arrayNew(1)>
	
<cfscript>

/* single if statement */
testVar1 = '0';
if(3 lte 2){
	testVar1 = listAppend(testVar1,'1');
}
testVar1 = listAppend(testVar1,'2');

</cfscript>
<cfdump var="#testVar1#">

<div>
	<cfoutput>TestVar1: #testVar1#</cfoutput>
</div>	

<!--- TEST CASE 1 [END] --->
<hr />