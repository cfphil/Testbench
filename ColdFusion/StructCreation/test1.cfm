<!--- TEST CASE 1 [START]--->
	<h3>Test Case 1 (structNew())</h3>
	<p>Create a new, empty struct with "structNew()" then populate it by referencing its name, followed by the key"</p>
	<h4>Example:</h4>
	<p>
		<pre>
		&lt;cfset newStruct1 = structNew()&gt;
		&lt;cfset newStruct1.testVar1 = 'blue'&gt;
		&lt;cfset newStruct1.testVar2 = 'red'&gt;
		&lt;cfset newStruct1.testVar3 = 'green'&gt;</pre>
	</p>
	
	<cfsilent>
		<cfset startTime = now()>
		<cfloop index="loop_i" from="1" to="#loopLimit#">
			<cfset newStruct1 = structNew()>
			<cfset newStruct1.testVar1 = application.toolbox.randomString()>
			<cfset newStruct1.testVar2 = application.toolbox.randomString()>
			<cfset newStruct1.testVar3 = application.toolbox.randomString()>
			<cfset newStruct1.testVar4 = application.toolbox.randomString()>
			<cfset newStruct1.testVar5 = application.toolbox.randomString()>
			<cfset newStruct1.testVar6 = application.toolbox.randomString()>
			<cfset newStruct1.testVar7 = application.toolbox.randomString()>
			<cfset newStruct1.testVar8 = application.toolbox.randomString()>
			<cfset newStruct1.testVar9 = application.toolbox.randomString()>
			<cfset newStruct1.testVar10 = application.toolbox.randomString()>
		</cfloop>	 
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<br />
	Duration: <cfdump var="#duration#"> seconds.
<!--- TEST CASE 1 [END] --->
<hr />