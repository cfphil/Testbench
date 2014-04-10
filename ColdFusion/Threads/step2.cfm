<!--- TEST PART 2 [START]--->
	<h3>Test Part 2 (Observing the thread called "testThread")</h3>
	<p>
		As the thread called "testThread" has been created, we can now call it and observe it to see how it is performing.
		This should also demonstrate any conflicts with other threads that have been invoked with the same name.
	</p>
	<h4>Example:</h4>
	<p>
		<pre>
		&lt;cfthread name="test1" action="run" priority="low"&gt;
			&lt;cfset thread.testy = application.toolbox.delay(30)&gt;
		&lt;/cfthread&gt;</pre>
	</p>
	
	<cfdump var="#application.threads#">
<!--- TEST PART 1 [END] --->	
<hr />
	<!--- 
	<cfset testMeta = getMetaData('test1_thread', true)>
	
	<h4>test1_thread Scope:</h4><br />
	<cfdump var="#test1_thread#">
	
	<h4>URL Scope:</h4><br />
	<cfdump var="#url#">
	
	<h4>FORM Scope:</h4><br />
	<cfdump var="#form#">
	
	<h4>VARIABLES Scope:</h4><br />
	<cfdump var="#variables#">
	
	<h4>SESSION Scope:</h4><br />
	<cfdump var="#session#">
	
	<h4>REQUEST Scope:</h4><br />
	<cfdump var="#REQUEST#">
	
	<h4>SERVER Scope:</h4><br />
	<cfdump var="#SERVER#">
	
	<h4>APPLICATION Scope:</h4><br />
	<cfdump var="#APPLICATION#"> --->
<!---	<cfsilent>
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
<!--- TEST CASE 1 [END] --->--->