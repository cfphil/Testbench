<!--- TEST CASE 1 [START]--->
	<h3>Test 1 (Originating from Session)</h3>
	<p>See how a variable that is created based upon a session variable handles it. Does it create a reference to the session variable, or
	does it create a copy of that variable?</p>
	<h4>Example:</h4>
	<p>
		<pre>
		</pre>
	</p>
	
	<cfset startTime = now()>
	
	<!--- STRUCTS [START] --->
		<!--- create a struct to pass into the session --->
		<cfset character = structNew()>
		<cfset character.firstname = 'Bruce'>
		<cfset character.lastname = 'Wayne'>
		
		<!--- copy the struct to the session --->
		<cflock scope="session" timeout="5" type="exclusive">
			<cfset session.person = character>
		</cflock>
		
		<!--- assign the session var to the variable scope --->
		<cflock scope="session" timeout="5" type="readonly">
			<cfset variables.dayTimeRole = session.person>
		</cflock>
		
		<!--- modify the session variable --->
		<cflock scope="session" timeout="5" type="exclusive">
			<cfset session.person.firstname = 'Bat'>
			<cfset session.person.lastname = 'Man'>
		</cflock>
		
		<!--- display the differences --->
		<cfset daytime = '#variables.dayTimeRole.firstname# #variables.dayTimeRole.lastname#'>
		<cfset nightTime = '#session.person.firstname# #session.person.lastname#'>
		
		<cfif dayTime EQ nightTime>
			<cfset outcome = 'REFENCED!'>
		<cfelse>
			<cfset outcome = 'COPIED!'>
		</cfif>
		
		<cfoutput>
			<h3>Struct Handling</h3>
			By daytime, he is: #daytime#<br />
			<br />
			By night-time, he is: #nightTime#<br />
			<br />
			<strong>Outcome: #outcome#</strong>
		</cfoutput>
	<!--- STRUCTS [END] --->
	
	<hr />
	
	<!--- VARIABLE [START] --->
	
		<!--- create a variable to pass into the session --->
		<cfset place = 'Wayne Mansion'>
		
		<!--- copy the variable to the session --->
		<cflock scope="session" timeout="5" type="exclusive">
			<cfset session.abode = place>
		</cflock>
		
		<!--- assign the session var to the variable scope --->
		<cflock scope="session" timeout="5" type="readonly">
			<cfset variables.home = session.abode>
		</cflock>
		
		<!--- modify the session variable --->
		<cflock scope="session" timeout="5" type="exclusive">
			<cfset session.abode = 'Batcave'>
		</cflock>
		
		<!--- display the differences --->
		<cfset daytime = '#variables.home#'>
		<cfset nightTime = '#session.abode#'>
		
		<cfif dayTime EQ nightTime>
			<cfset outcome = 'REFENCED!'>
		<cfelse>
			<cfset outcome = 'COPIED!'>
		</cfif>
		
		<cfoutput>
			<h3>Simple Variable Handling</h3>
			By daytime, he lives at: #daytime#<br />
			<br />
			By night-time, he lives at: #nightTime#<br />
			<br />
			<strong>Outcome: #outcome#</strong>
		</cfoutput>
	<!--- VARIABLE [END] --->
	
	<hr />
	
	<!--- CHANGING TYPE1 [START] --->
	
		<!--- create a variable to pass into the session --->
		<cfset place = 'Wayne Mansion'>
		
		<!--- copy the variable to the session --->
		<cflock scope="session" timeout="5" type="exclusive">
			<cfset session.abode = place>
		</cflock>
		
		<!--- create a struct to verride the basic variable in the session --->
		<cfset address = structNew()>
		<cfset address.house = 'Wayne Mansion'>
		<cfset address.street = 'Bat Street'>
		<cfset address.town = 'Battown'>
		<cfset address.city = 'Gotham City'>
		
		
		<!--- assign the session var to the variable scope --->
		<cflock scope="session" timeout="5" type="readonly">
			<cfset variables.home = session.abode>
		</cflock>
		
		<!--- modify the session variable --->
		<cflock scope="session" timeout="5" type="exclusive">
			<cfset session.abode = address>
		</cflock>
		
		<!--- display the differences --->
		<cfset daytime = '#variables.home#'>
		<cfset nightTime = session.abode>
		
		<!---<cfif dayTime EQ nightTime>
			<cfset outcome = 'REFENCED!'>
		<cfelse>
			<cfset outcome = 'COPIED!'>
		</cfif>--->
		
		<cfoutput>
			<h3>String-to-struct Variable Handling</h3>
			By daytime, he lives at: #daytime#<br />
			<br />
			By night-time, he lives at: <cfdump var="#nightTime#"><br />
			<br />
			<!---<strong>Outcome: #outcome#</strong>--->
		</cfoutput>
	<!--- CHANGING TYPE1 [END] --->

	
		<hr />
	
	<!--- CHANGING TYPE2 [START] --->
	
		<!--- create a struct to verride the basic variable in the session --->
		<cfset address = structNew()>
		<cfset address.house = 'Wayne Mansion'>
		<cfset address.street = 'Bat Street'>
		<cfset address.town = 'Battown'>
		<cfset address.city = 'Gotham City'>
		
		<!--- copy the variable to the session --->
		<cflock scope="session" timeout="5" type="exclusive">
			<cfset session.abode = address>
		</cflock>
		
		
		<!--- assign the session var to the variable scope --->
		<cflock scope="session" timeout="5" type="readonly">
			<cfset variables.home = session.abode>
		</cflock>
		
		<!--- create a variable to pass into the session --->
		<cfset place = 'Wayne Mansion'>
		
		<!--- modify the session variable --->
		<cflock scope="session" timeout="5" type="exclusive">
			<cfset session.abode = place>
		</cflock>
		
		<!--- display the differences --->
		<cfset daytime = variables.home>
		<cfset nightTime = session.abode>
		
		<!---<cfif dayTime EQ nightTime>
			<cfset outcome = 'REFENCED!'>
		<cfelse>
			<cfset outcome = 'COPIED!'>
		</cfif>--->
		
		<cfoutput>
			<h3>Struct-to-String Variable Handling</h3>
			By daytime, he lives at: <cfdump var="#daytime#"><br />
			<br />
			By night-time, he lives at: <cfdump var="#nightTime#"><br />
			<br />
			<!---<strong>Outcome: #outcome#</strong>--->
		</cfoutput>
	<!--- CHANGING TYPE2 [END] --->
	
	<cfset endtime = now()>
	<cfset duration = DateDiff("s", startTime, endtime)>
	
	<br />
<!--- TEST CASE 1 [END] --->
<hr />