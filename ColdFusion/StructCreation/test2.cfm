<!--- TEST CASE 2 [START]--->
	<h3>Test Case 2 (implicit)</h3>
	<p>Define the struct contents upon defining the struct.</p>
	<h4>Example:</h4>
	<p>
		<pre>
			&lt;cfset newStruct1 = {
						testVar1 = 'blue'
						,testVar2 = 'red'
						,testVar3 = 'green'
					}&gt;</pre>
	</p>
	
	<cfsilent>
		<cfset startTime = now()>
		<cfloop index="tCase1.loop_i" from="1" to="#loopLimit#">
			<cfset newStruct1 = {
						testVar1 = application.toolbox.randomString()
						,testVar2 = application.toolbox.randomString()
						,testVar3 = application.toolbox.randomString()
						,testVar4 = application.toolbox.randomString()
						,testVar5 = application.toolbox.randomString()
						,testVar6 = application.toolbox.randomString()
						,testVar7 = application.toolbox.randomString()
						,testVar8 = application.toolbox.randomString()
						,testVar9 = application.toolbox.randomString()
						,testVar10 = application.toolbox.randomString()
					}>
		</cfloop>	 
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<br />
	Duration: <cfdump var="#duration#"> seconds.
<!--- TEST CASE 2 [END] --->
<hr />