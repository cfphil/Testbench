<!--- TEST CASE 1 [START]--->
	<h3>Test 1 (referencing remote images)</h3>
	<p>See if there is any delay in loading a page that references an image on a slow server</p>
	<h4>Example:</h4>
	<p>
		<pre>
		</pre>
	</p>
	
	<cfset startTime = now()>
	
	<table width="100%" border="1">
		<tr>
			<td colspan="3"><h4>TITLE HERE</h4></td>
		</tr>
		<tr>
			<td width="150" align="center"><img src="red_leicester_bw.jpg" width="100px" /></td>
			<td width="150" align="center"><img src="http://127.0.0.1/sketchpad/General/slowImageLoader.cfm" /></td>
			<td width="150" align="center"><img src="red_leicester_co.jpg" width="100px" /></td>
		</tr>
		<tr>
			<td colspan="3"><h6>FOOTER HERE</h6></td>
		</tr>
	</table>
			 
		
	<cfset endtime = now()>
	<cfset duration = DateDiff("s", startTime, endtime)>
	
	<br />
<!--- TEST CASE 1 [END] --->
<hr />