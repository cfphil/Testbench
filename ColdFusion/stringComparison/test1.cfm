<!--- TEST CASE 1 [START]--->
	<h3>Test Case 1 (using &lt;cfif&gt; logic)</h3>
	<p>Assign a variable a boolean value based upon the comparison of 2 variables</p>
	
	
	<cfsilent>
		<cfset startTime = now()>
		
		
		<cfset comparison_var = 555>
		<cfset comparisonResult = false>
		
		<cfloop index="i_loop" from="1" to="#loopLimit#">
			<cfset test_var = randrange(100,999)>
			
			<cfif test_var eq comparison_var>
				<cfset comparisonResult = true>
			<cfelse>
				<cfset comparisonResult = false>
			</cfif>
		</cfloop>
		
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<br />
	Duration: <cfdump var="#duration#"> seconds to run 
<!--- TEST CASE 1 [END] --->
<hr />