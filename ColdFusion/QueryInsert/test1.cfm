<!--- TEST CASE 1 [START]--->
	<h3>Test Case 1 (1 &lt;cfquery&gt; for each row)</h3>
	<p>Insert multiple rows, each with its own "&lt;cfquery&gt;" tag.</p>
	
	
	<cfsilent>
		<cfset startTime = now()>
		
		<cfloop index="persons_i" from="1" to="#arrayLen(persons)#">
			<cfset currentPerson = persons[persons_i]>
			<cfquery name="query" datasource="#application.db#">
				insert into
					person
				(
					firstname
					,lastname
					,date_created
				)
				values
				(
					<cfqueryparam cfsqltype="cf_sql_varchar" value="#currentPerson.firstname#">
					,<cfqueryparam cfsqltype="cf_sql_varchar" value="#currentPerson.lastname#">
					,<cfqueryparam cfsqltype="cf_sql_date" value="#now()#">
				)
			</cfquery>
		</cfloop>
		
			
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<br />
	Duration: <cfdump var="#duration#"> seconds to insert (<cfoutput>#arrayLen(persons)#</cfoutput>)
<!--- TEST CASE 1 [END] --->
<hr />