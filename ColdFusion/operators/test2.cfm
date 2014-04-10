


<!--- TEST CASE 2 [START]--->
	<h3>Test 2 ('boolean' responses)</h3>
	<p>See what 'boolean' results are returned from some in-built CF methods</p>
	
	<cfoutput>
		<!--- test 2a [START] --->
		<cfset var1 = 'text string abc123'>
		<cfset var2 = now()>
		<h4>Test 2a [isDate() method</h4>
		
		[#var1#] interpreted as [#isDate(var1)#]<br/ >
		<br/ >
		[#var2#] interpreted as [#isDate(var2)#]<br/ >
		<br /><br />
		<!--- test 2a [END] --->
		
		
	</cfoutput>
	
	<br />
<!--- TEST CASE 2 [END] --->
<hr />