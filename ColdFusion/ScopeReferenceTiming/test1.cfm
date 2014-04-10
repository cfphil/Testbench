<cfset form = structNew()>
<cfset form.testVar1 = 'first var'>

<!--- TEST CASE 1 [START]--->
	<h3>Test 1 (Scoped Variable Lookup)</h3>
	<p>See how quick variable lookup can perform when it is unscoped and has to look up the scope tree.</p>
	<h4>Example:</h4>

	<cfset startTime = now()>
	<cfloop index="loop_i" from="1" to="#loopLimit#">
		<cfset form.testVar = randrange(1000,9999) & randRange(100,9999)>
		<cfset randomLookup = form.testVar>
		<cfoutput>#randomLookup#<br/></cfoutput>
	</cfloop>	 
	
	<cfset endtime = now()>
	<cfset duration = DateDiff("s", startTime, endtime)>
<br />
Duration: <cfdump var="#duration#"> seconds.
<!--- TEST CASE 1 [END] --->
<hr />