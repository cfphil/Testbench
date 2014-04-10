<cfsilent>
	<cfset loopLimit = 600>
</cfsilent>
<h2>Struct Access Testing</h2>

<a href="?test=test1" <cfif url.test neq 'test1'>style="font-weight: bold;</cfif>">Test 1 (using structKeyExists() followed by the actual access)</a> |
<a href="?test=test2" <cfif url.test neq 'test2'>style="font-weight: bold;</cfif>">Test 2 (placing a try/catch around the actual access snippet)</a>

<hr />


<cfif len(url.test)>
	<cfinclude template="#url.test#.cfm">
<cfelse>
	Pick a test from the list above.
</cfif>
