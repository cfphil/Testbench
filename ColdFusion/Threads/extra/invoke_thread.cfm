<cfsilent>
	<cfthread name="test1_thread" action="run" priority="low">
		<cf_debuglog message="thread invoked..." append="true">
		<cf_debuglog message="#cgi#" append="true">
		<cfset thread.testy = application.toolbox.delay(60)>
	</cfthread>
</cfsilent>