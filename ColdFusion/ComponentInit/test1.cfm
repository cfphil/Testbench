<!--- TEST CASE 1 [START]--->
	<h3>Test Case 1 ("init" not called)</h3>
	<p>Do not call the "init" method"</p>
	<h4>Example:</h4>
	<p>
		<pre>
			&lt;cfset testComponent = createObject('component','dummy')&gt;
		</pre>
	</p>
	
	<cfsilent>
		<cfset startTime = now()>
		
		<cfset testComponent = createObject('component','dummy')>
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<cfdump var="#testComponent#">
	<br />
	Duration: <cfdump var="#duration#"> seconds.
<!--- TEST CASE 1 [END] --->
<hr />