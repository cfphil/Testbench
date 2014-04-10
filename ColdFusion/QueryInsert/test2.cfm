<!--- TEST CASE 2 [START]--->
	<h3>Test Case 2 (1 &lt;cfquery&gt; for the whole insert)</h3>
	<p>Insert multiple rows, but all within the same "&lt;cfquery&gt;" tag.</p>
	
	
	<cfsilent>
		<cfset startTime = now()>
		
		<cfquery name="query" datasource="#application.db#">
			<cfloop index="persons_i" from="1" to="#arrayLen(persons)#">
			<cfset currentPerson = persons[persons_i]>
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
			</cfloop>
		</cfquery>
		
			
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<br />
	Duration: <cfdump var="#duration#"> seconds to insert (<cfoutput>#arrayLen(persons)#</cfoutput>)
<!--- TEST CASE 1 [END] --->
<hr />