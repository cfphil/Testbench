<!--- TEST CASE 1 [START]--->
	<h3>Test 1 (wrap the whole code in CFOUTPUT)</h3>
	<p>See what is faster - wrapping whole output with CFOUTPUT or only the necessary parts</p>
		
	<cfset variable1 = 'Parkside Middle School'>
	<cfset variable2 = 'Year 6'>
	<cfset variable3 = 'Class 6L'>
	<cfset variable4 = 'm'>
	<cfset variable5 = 'Gender is:'>
	<cfset variable6 = 'This correct?'>
	<cfset variable7 = 'http://DummyURL.com'>
	<cfset variable8 = 'No'>
	<cfset variable9 = 'Yes'>
	
	<cfset startTime = now()>
	<cfloop index="loop_i" from="1" to="#loopLimit#">
		<cfoutput>
			<cfif loop_i mod 2>
				<cfset variable4 = 'f'>
			</cfif>
			<div id="confirmIdentity">
				<div id="question">
					#variable2#, #variable2#, #variable3#<br />
					<br />
					<!--- if this is gender specific...--->
					<cfif (variable4 eq 'm') or (variable4 eq 'f')>
						 #variable5# = #variable4#<br /><br />
					</cfif>
					#variable6#
						
				</div>
				
				<form action="#variable7#" method="post">
					<input type="submit" value="#variable8#" name="no" class="button" id="no" />
					<input type="submit" value="#variable9#" name="yes" class="button" id="yes" />
				</form>
				
				<div class="clearHidden">&nbsp;</div>
			</div>
		</cfoutput>
	</cfloop>	 
	
	<cfset endtime = now()>
	<cfset duration = DateDiff("s", startTime, endtime)>
	
	<br />
	Duration: <cfdump var="#duration#"> seconds.	
	<br />
<!--- TEST CASE 1 [END] --->
<hr />