<cfsilent>
	<cfset loopLimit = 50000>
</cfsilent>

<h2>CFOUTPUT Testing</h2>

<a href="?test=test1" <cfif url.test neq 'test1'>style="font-weight: bold;"</cfif>>Test 1 (wrapping the whole code in CFOUTPUT)</a> |
<a href="?test=test2" <cfif url.test neq 'test1'>style="font-weight: bold;"</cfif>>Test 2 (wrapping selective code in CFOUTPUT)</a>

<hr />


<cfif len(url.test)>
	<cfinclude template="#url.test#.cfm">
<cfelse>
	Pick a test from the list above.
</cfif>
