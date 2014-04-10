<cfsilent>
	<cfset loopLimit = 150000>
</cfsilent>
<h2>Thread Calling CFHTTP Testing</h2>

<a href="?step=step1" <cfif url.step neq 'step1'>style="font-weight: bold;</cfif>">Test 1 </a>

<hr />

<p>This tests to see if cfhttp can be used within cfthread blocks.</p>
<p>UPDATE: Yep - this is possible.</p>

<cfif len(url.step)>
	<cfinclude template="#url.step#.cfm">
<cfelse>
	Pick a test from the list above.
</cfif>
