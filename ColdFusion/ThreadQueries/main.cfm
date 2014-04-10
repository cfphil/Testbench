<cfsilent>
	<cfset loopLimit = 150000>
</cfsilent>
<h2>Thread Query Testing</h2>

<a href="?step=step1" <cfif url.step neq 'step1'>style="font-weight: bold;</cfif>">Test 1 </a>

<hr />

<p>This tests if the Cfthread Priority is passed over and influences the priority of a db query. Is it only Coldfusion
resources that the priority applies to, or does it include external resources.</p>
<p>UPDATE: After testing it seems that threads are prioritised based upon the CF logic only. No priority is passed over to the
actual SQL queries and are passed over to SQL as soon as CF finds resources to perform the request. There is no real facility
to prioritise SQL queries within MS SQL other than the MAXDOP setting within a query but this just limits the number of processors
that can be used by one query - not prioritising resources')</p>

<cfif len(url.step)>
	<cfinclude template="#url.step#.cfm">
<cfelse>
	Pick a test from the list above.
</cfif>
