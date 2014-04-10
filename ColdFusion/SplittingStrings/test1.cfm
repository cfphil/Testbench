<!--- TEST CASE 1 [START]--->
	<h3>Test Case 1 (split())</h3>
	<p>Use the "split()" method with Regex to split a string into an array of parts</p>
	<h4>Example:</h4>
	<p>
		<pre>
		&lt;cfset documentPages = documentSource.split('&lt;!-- pagebreak --&gt;')&gt;
		</pre>
	</p>
	
	<cfsilent>
		<cfset startTime = now()>
		<cfloop index="loop_i" from="1" to="#loopLimit#">
			<cfset documentPages = sourceHTML.split('<!-- pagebreak -->')>
		</cfloop>
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<cfdump var="#documentPages#">
	<br />
	Duration: <cfdump var="#duration#"> seconds.
<!--- TEST CASE 1 [END] --->
<hr />