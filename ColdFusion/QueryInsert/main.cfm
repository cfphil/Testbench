<cfsilent>
	<cfset loopLimit = 1450000>
	
	<!--- get the array of persons from the app scope --->
	<cfset persons = application.commonVars.persons>	
</cfsilent>


<h2>Query Insert Testing</h2>

<a href="?test=test1" <cfif url.test neq 'test1'>style="font-weight: bold;</cfif>">Test 1 (inserting many rows of data across multiple "&lt;cfquery&gt;" tags)</a> |
<a href="?test=test2" <cfif url.test neq 'test2'>style="font-weight: bold;</cfif>">Test 2 (insert many rows of data within one "&lt;cfquery&gt;" tag)</a>

<hr />


<cfif len(url.test)>
	<cfinclude template="#url.test#.cfm">
<cfelse>
	Pick a test from the list above.
</cfif>
