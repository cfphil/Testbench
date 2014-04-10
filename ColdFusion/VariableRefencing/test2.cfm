<!--- TEST CASE 2 [START]--->
	<h3>Test 2 (Originating from Application)</h3>
	<p>See how a variable that is created based upon an application variable handles it. Does it create a reference to the Application variable, or
	does it create a copy of that variable?</p>
	<h4>Example:</h4>
	<p>
		<pre>
		</pre>
	</p>
	
	<cfset startTime = now()>
	
	<!--- create a struct to pass into the struct --->
	<cfset character = structNew()>
	<cfset character.firstname = 'Bruce'>
	<cfset character.lastname = 'Wayne'>
	<cfset character.address = 'Wayne Mansion'>
	
	<!--- copy the struct to the session --->
	<cflock scope="session" timeout="5" type="exclusive">
		<cfset session.person = character>
	</cflock>
	
	<!--- assign the session var to the variabl scope --->
	<cflock scope="session" timeout="5" type="readonly">
		<cfset variables.dayTimeRole = session.person>
	</cflock>
	
	<!--- modify the session variable --->
	<cflock scope="session" timeout="5" type="exclusive">
		<cfset session.person.firstname = 'Bat'>
		<cfset session.person.lastname = 'Man'>
		<cfset session.person.address = 'Batcave'> 
	</cflock>
	
	<!--- display the differences --->
	<cfset daytime = '#variables.dayTimeRole.firstname# #variables.dayTimeRole.lastname#, #variables.dayTimeRole.address#'>
	<cfset nightTime = '#session.person.firstname# #session.person.lastname#, #session.person.address#'>
	
	<cfif dayTime EQ nightTime>
		<cfset outcome = 'REFENCED!'>
	<cfelse>
		<cfset outcome = 'Copied'>
	</cfif>
	
	<cfoutput>
		By daytime, he is: #daytime#<br />
		<br />
		By night-time, he is: #nightTime#<br />
		<br />
		<strong>Outcome: #outcome#</strong>
	</cfoutput>
	
	<cfset endtime = now()>
	<cfset duration = DateDiff("s", startTime, endtime)>
	
	<br />
<!--- TEST CASE 1 [END] --->
<hr />