<!--- TEST CASE 2 [START]--->
	<h3>Test Case 2 ("init" explicitly called)</h3>
	<p>Call the "init" method as part of the object creation</p>
	<h4>Example:</h4>
	<p>
		<pre>
			&lt;cfset testComponent = createObject('component','dummy').init()&gt;
		</pre>
	</p>
	
	<cfsilent>
		<cfset startTime = now()>
		
		<cfset testComponent = createObject('component','dummy').init()>
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<cfdump var="#testComponent#">
	<br />
	Duration: <cfdump var="#duration#"> seconds.
<!--- TEST CASE 2 [END] --->
<hr />