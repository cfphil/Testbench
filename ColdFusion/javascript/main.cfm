<cfsilent>
	<cfset loopLimit = 150000>
</cfsilent>
<h2>Javascript</h2>

<a href="?test=test1" <cfif url.test neq 'test1'>style="font-weight: bold;</cfif>">Test 1 (testing var scope)</a>


<hr />


<cfif len(url.test)>
	<cfinclude template="#url.test#.cfm">
<cfelse>
	Pick a test from the list above.
</cfif>
