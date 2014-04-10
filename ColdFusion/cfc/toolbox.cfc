<cfcomponent output="false">

	<!--- performs an "infinite loop" for x amount of seconds, to incur a delay (an alternative to "sleep")--->
	<cffunction name="delay">
		<cfargument name="seconds" required="true" type="numeric">
		<cfset var endTime = dateAdd('s',arguments.seconds,now())>
		
		<!--- now do a loop waiting for the desired time to pass --->
		<cfloop condition="1 eq 1">
			<cfif endTime lte now()>
				<cfbreak>
			</cfif>
		</cfloop>
		
		<cfreturn endtime>
	</cffunction>
	
	<cffunction name="logData">
		<cfargument name="theVariable" required="true" type="any">
		
		<cfset var lcl = structNew()>
		
		<!--- create the content --->
		<cfsavecontent variable="lcl.logContent">
			<cfdump var="#arguments.theVariable#">
		</cfsavecontent>
		
		<!--- write the path of the folder --->
		<cfset lcl.filename = dateformat(now(),'yyyymmdd') &'_'& timeformat(now(),'HHmmss') &'_'>
		<cfset lcl.filePath = expandPath('../_log/')>
		
		<cfset lcl.createFile_maxAttempts = 10>
		
			
		<cfloop index="attempt_i" from="1" to="#lcl.createFile_maxAttempts#">
			<cfset lcl.temp_filename = lcl.filename & randRange(1000,9999) & '.html'>
			<cfif not(fileExists('#lcl.filePath##lcl.temp_filename#'))>
				<cfset lcl.filename = lcl.temp_filename>
				<cfbreak>
			</cfif>
		</cfloop>
		
	
		<cffile
			action="write"
			file="#lcl.filePath##lcl.filename#"
			output="#lcl.logContent#">
			
	</cffunction>
	
	<cffunction name="randomString" output="false" returntype="string">
		<cfargument name="minLength" required="false" type="numeric" default="8" />
		<cfargument name="maxLength" required="false" type="numeric" default="#arguments.minLength#" />
		
		<cfset var local = structNew()>
		
		<cfset local.validChars = application.commonVars.validChars>
		<cfset local.lengthOfValidChars = len(local.validChars)>
		
		<cfif (not arguments.minLength OR not arguments.maxLength) OR
				(arguments.maxLength LT arguments.minLength)>
			<cfthrow message="Component Toolbox, Method RandomString - Error with arguments">
		</cfif>
		
		<cfset local.StringLength = randRange(arguments.minLength, arguments.maxLength)>
		
		<!--- loop to create the string --->
		<cfset local.stringGenerated = ''>
		<cfloop index="local.chars_i" from="1" to="#local.stringLength#">
			<cfset local.newCharPosition = randRange(1,local.lengthOfValidChars)>
			<cfset local.newChar = mid(local.validChars,local.newCharPosition,1)>
			<cfset local.stringGenerated = local.stringGenerated & local.newChar>
		</cfloop>
		
		<cfreturn local.stringGenerated>
	</cffunction>

</cfcomponent>