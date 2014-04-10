<cfsilent>
	<cfset loopLimit = 300000000>
</cfsilent>
<h2>String Comparison</h2>

<a href="?test=test1" <cfif url.test neq 'test1'>style="font-weight: bold;"</cfif>>Test 1</a>
<a href="?test=test2" <cfif url.test neq 'test2'>style="font-weight: bold;"</cfif>>Test 2</a>
<a href="?test=test3" <cfif url.test neq 'test3'>style="font-weight: bold;"</cfif>>Test 3</a>

<hr />

<cfif len(url.test)>
	<cfinclude template="#url.test#.cfm">
<cfelse>
	Pick a test from the list above.
</cfif>
