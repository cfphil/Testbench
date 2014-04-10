<!--- TEST CASE 2 [START]--->
	<h3>Test Case 2 (listToArray())</h3>
	<p>Use the "listToArray()" method with to split a string into an array of parts. Originally not possible, but with the new
	"multiCharacterDelimiter" parameter this is now possible.</p>
	<h4>Example:</h4>
	<p>
		<pre>
		&lt;cfset documentPages = listToArray(documentSource,'&lt;!-- pagebreak --&gt;',true,true)&gt;
		</pre>
	</p>
	
	<cfsilent>
		<cfset startTime = now()>
		<cfloop index="loop_i" from="1" to="#loopLimit#">
			<cfset documentPages = listToArray(sourceHTML,'<!-- pagebreak -->',true,true)>
		</cfloop>
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<cfdump var="#documentPages#">
	<br />
	Duration: <cfdump var="#duration#"> seconds.
<!--- TEST CASE 1 [END] --->
<hr />