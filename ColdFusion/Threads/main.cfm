<cfsilent>
	<cfset loopLimit = 150000>
</cfsilent>
<h2>Thread Creation Testing</h2>

<a href="?step=step1" <cfif url.step neq 'step1'>style="font-weight: bold;</cfif>">Step 1 (Invoke a thread)</a> |
<a href="?step=step2" <cfif url.step neq 'step2'>style="font-weight: bold;</cfif>">Step 2 (observe the threads)</a>

<hr />


<cfif len(url.step)>
	<cfinclude template="#url.step#.cfm">
<cfelse>
	This test is different. It is based upon multiple steps. Request Step 1 from multiple browsers, then open "Step 2"
	in any one of them after requesting step 1 across multiple browsers.
</cfif>
