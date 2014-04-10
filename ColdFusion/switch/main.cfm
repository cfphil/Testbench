<cfsilent>
	<cfset loopLimit = 150000>
</cfsilent>
<h2>Switch Statement / CFIF comparison</h2>

<a href="?test=test1a" <cfif url.test neq 'test1a'>style="font-weight: bold;</cfif>">Test 1a (5 conditions in a switch statement)</a> |
<a href="?test=test1b" <cfif url.test neq 'test1b'>style="font-weight: bold;</cfif>">Test 1b (5 conditions in a cfif format)</a> |
<a href="?test=test2a" <cfif url.test neq 'test2a'>style="font-weight: bold;</cfif>">Test 2a (20 conditions in a switch statement)</a>
<a href="?test=test2b" <cfif url.test neq 'test2b'>style="font-weight: bold;</cfif>">Test 2b (20 conditions in a cfif format)</a>

<hr />


<cfif len(url.test)>
	<cfinclude template="#url.test#.cfm">
<cfelse>
	Pick a test from the list above.
</cfif>
