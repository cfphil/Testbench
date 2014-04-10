<cfsilent>
	<cfset loopLimit = 1450000>
</cfsilent>
<h2>Component Initialisation Testing</h2>

<a href="?test=test1" <cfif url.test neq 'test1'>style="font-weight: bold;</cfif>">Test 1 (without explicit call to "init" method)</a> |
<a href="?test=test2" <cfif url.test neq 'test2'>style="font-weight: bold;</cfif>">Test 2 (with an explicit call to "init" method)</a>

<hr />

<cfif len(url.test)>
	<cfinclude template="#url.test#.cfm">
<cfelse>
	Pick a test from the list above.
</cfif>
