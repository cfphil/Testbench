<cfset application.threads = structNew()>

<cfset uniqueID = randRange(1000,9000)>

<!--- fire off a load of threads to update the same row in the db (high priority) --->
<cfthread name="cfhttpTest"
	priority="low"
	uniqueID="#uniqueID#">
	
	<cfhttp url="http://127.0.0.1/sketchpad/TestBench/ThreadCFHTTP/cfhttpScript.cfm"
		method="post">
		<cfhttpparam type="formField" name="uniqueID" value="#attributes.uniqueID#">
	</cfhttp>
	
</cfthread>

<cfset application.threads['thread#uniqueID#'] = cfThread['cfhttpTest']>


<cflocation url="http://127.0.0.1/sketchpad/TestBench/threadCFHTTP/main.cfm?step=step2">