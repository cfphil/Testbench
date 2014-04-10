<!--- TEST PART 1 [START]--->
	<h3>Test Part 1 (Creating a thread called "testThread")</h3>
	<!--- <p>
		This remotely (via HTTP) invokes a thread called "testThread". It should be invoked simultaneously across multiple browsers
		(to ensure multiple sessions). Once multiple threads have been invoked and a re running, check "Test Part 2" to observe how
		the threads are being handled (as they all share the same name, although are invoked by different "users").
	</p> --->
	<h4>Example:</h4>
	<p>
		<pre>
		&lt;cfthread name="test1" action="run" priority="low"&gt;
			&lt;cfset thread.testy = application.toolbox.delay(30)&gt;
		&lt;/cfthread&gt;</pre>
	</p>
	
	<cfsilent>
		<cfthread name="test1_thread" action="run" priority="low">
			<cf_debuglog message="thread invoked..." append="true">
			<cf_debuglog message="#cgi#" append="true">
			<cfset thread.testy = application.toolbox.delay(150)>
		</cfthread>
		
		<cfthread name="test3_thread" action="run" priority="low">
			<cf_debuglog message="thread invoked..." append="true">
			<cf_debuglog message="#cgi#" append="true">
			<cfset thread.testy = application.toolbox.delay(150)>
		</cfthread>
		
		<!--- assign the thread to the application scope --->
		<cfset application.threads['test1_thread'& createUUID()] = test1_thread>
	</cfsilent>

<cfdump var="#test1_thread#">
<cfdump var="#CFthread#">
<!--- TEST PART 1 [END] --->	
<hr />