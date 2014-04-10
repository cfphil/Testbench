<h2>HTML Form Testing</h2>

<a href="?test=test1" <cfif url.test neq 'test1'>style="font-weight: bold;"</cfif>>Test 1 (resetting pre-populated forms)</a> |
<a href="?test=test2" <cfif url.test neq 'test2'>style="font-weight: bold;"</cfif>>Test 2 (a basic form to examine submission scope)</a> |

<hr />


<cfif len(url.test)>
	<cfinclude template="#url.test#.cfm">
<cfelse>
	Pick a test from the list above.
</cfif>
