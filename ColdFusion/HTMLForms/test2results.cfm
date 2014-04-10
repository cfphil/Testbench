<cfsilent>
	<!--- URL --->
	<cfset urlvar = 'undefined'>
	<cfif isDefined('url')>
		<cfset urlvar = url>
	</cfif>
	
	<!--- form --->
	<cfset formvar = 'undefined'>
	<cfif isDefined('form')>
		<cfset formvar = form>
	</cfif>
	
	<!--- cgi --->
	<cfset cgivar = 'undefined'>
	<cfif isDefined('cgi')>
		<cfset cgivar = cgi>
	</cfif>

	<cfset submissionDetails = structNew()>
	<cfset submissionDetails.urlVar = urlvar>
	<cfset submissionDetails.formVar = formvar>
	<cfset submissionDetails.cgiVar = cgiVar>
			
	<cfset application.toolbox.logData(submissionDetails)>
</cfsilent>


<div style="float: left; width: 500px;">
	<cfdump var="#submissionDetails#">
</div>
<div style="width: 500px; float: right;">
	<iframe src="../_log/" style="width: 500px;height: 500px; float: right;">
</div>

