<!--- TEST CASE 3 [START]--->
	<h3>Test Case 3 (structInsert())</h3>
	<p>define the struct then populate the struct using the "structInsert" method".</p>
	<h4>Example:</h4>
	<p>
		<pre>
			&lt;cfset newStruct1 = structNew()&gt;
			&lt;cfset structinsert(newStruct1,'testVar1','red')&gt;
			&lt;cfset structinsert(newStruct1,'testVar1','blue')&gt;
			&lt;cfset structinsert(newStruct1,'testVar1','green')&gt;
		</pre>
	</p>
	<cfsilent>
		<cfset startTime = now()>
		<cfloop index="loop_i" from="1" to="#loopLimit#">
			<cfset newStruct1 = structNew()>
			<cfset structinsert(newStruct1,'testVar1',application.toolbox.randomString())>
			<cfset structinsert(newStruct1,'testVar2',application.toolbox.randomString())>
			<cfset structinsert(newStruct1,'testVar3',application.toolbox.randomString())>
			<cfset structinsert(newStruct1,'testVar4',application.toolbox.randomString())>
			<cfset structinsert(newStruct1,'testVar5',application.toolbox.randomString())>
			<cfset structinsert(newStruct1,'testVar6',application.toolbox.randomString())>
			<cfset structinsert(newStruct1,'testVar7',application.toolbox.randomString())>
			<cfset structinsert(newStruct1,'testVar8',application.toolbox.randomString())>
			<cfset structinsert(newStruct1,'testVar9',application.toolbox.randomString())>
			<cfset structinsert(newStruct1,'testVar10',application.toolbox.randomString())>
		</cfloop>	 
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<br />
	Duration: <cfdump var="#duration#"> seconds.
<!--- TEST CASE 3 [END] --->
<hr />