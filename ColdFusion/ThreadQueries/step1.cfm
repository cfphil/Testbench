<cfset application.threads = structNew()>

<cfquery name="threadclear" datasource="phil_dev">
	delete from
		threadingTest
</cfquery>


<cf_debuglog message="start">
<!--- fire off a load of threads to update the same row in the db (high priority) --->
<cfloop index="i" from="1" to="1000">
	<cfset priority="low">
	<cfif i mod 10>
		<cfset priority="high">
	</cfif>
	
	<cfthread name="highRequest#i#"
		threadNo="#i#"
		addPriority="#priority#"
		priority="#priority#">
		
		<cfquery name="threadUpdate" datasource="phil_dev">
			<cfloop index="i2" from="1" to="1000">
				select count(*) from threadingTest as testy;
				select * from threadingTest order by ID desc;
				select count(*) from threadingTest as testy;
				select * from threadingTest order by ID asc;
			</cfloop>
			insert into
				threadingTest
			(
				information
			)
			values
			(
				'#attributes.addPriority# updated by thread #attributes.threadNo# at #dateformat(now(),"dd/mm/yyyy")# #timeformat(now(),"HH:mm:ss")#'
			)
			;select scope_identity() as id
		</cfquery>
	</cfthread>
</cfloop>


<!---

<cflocation url="http://127.0.0.1/sketchpad/TestBench/threadQueries/main.cfm?step=step2">--->