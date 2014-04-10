<cfsilent>
	<cfset loopLimit = 145000000>
</cfsilent>
<h2>Character Encoding</h2>

<a href="?test=test1" <cfif url.test neq 'test1'>style="font-weight: bold;"</cfif>>Test 1</a>
<a href="?test=test2" <cfif url.test neq 'test2'>style="font-weight: bold;"</cfif>>Test 2</a>

<hr />

<cfif len(url.test)>
	<cfinclude template="#url.test#.cfm">
<cfelse>
	Pick a test from the list above.
</cfif>
