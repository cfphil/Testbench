<!---
	Filename: application.cfc
	Created By: Phil Munro
	Purpose: Sets constant variables and stores them in application scope.
--->
<cfcomponent output="false">
	<cfcontent type="text/html; charset=utf-8" />
	<cfset setencoding("FORM", "utf-8")>
	<cfset setencoding("URL", "utf-8")>
	
	<cfscript>
		this.name="TestBench";
		this.mappings["/local"] = getDirectoryFromPath(getCurrentTemplatePath());
		this.applicationTimeout = createTimeSpan(0,12,0,0);
		this.clientManagement=false;
		this.sessionManagement=true;
		this.sessionTimeout=createTimeSpan(0,1,0,0);
	</cfscript>

	<!--- this runs the first time the application is started as is available to all (regardless of which client requested it) --->
	<cffunction name="onApplicationStart" returntype="boolean" output="false">
		<cfset startApplication()>		
		<cfreturn true>
	</cffunction>


	<!--- this runs when a user session starts --->
	<cffunction name="onSessionStart" returntype="void">
		<cfset startSession()>
	</cffunction>
	
	
	<!--- this runs on every request --->
	<cffunction name="onRequestStart" returntype="void" output="true">
		<cfargument name="targetPage" type="String" required="true">
		
		<!--- reload app/session --->
		<cfif isDefined('url.reload')>
			<cfset startApplication()>
			<cfset startSession()>
		</cfif>
		
		<cfset commonVars = application.commonVars>
		
		<cfinclude template="inc_templateStart.cfm">
		<!--- include the index page --->
		<!--- <cfinclude template="index.cfm"> --->
	</cffunction>
	
	
	<!--- this runs on every request --->
	<cffunction name="onRequestEnd" returntype="void" output="true">
		<cfargument name="targetPage" type="String" required="true">
		
		<cfinclude template="inc_templateEnd.cfm">
		
	</cffunction>
	
	
	<!--- PRIVATE METHODS [START] --->
		<!--- define the application settings/variables --->
		<cffunction name="startApplication" access="private">
			<!--- include the common settings and general site config --->
			<cfinclude template="inc_settings.cfm">
			
			<cfset application.toolbox = createObject('component','cfc.toolbox')>
		</cffunction>
		
		
		<!--- define the session settings/variables --->
		<cffunction name="startSession" access="private">
			
		</cffunction>
		
	<!--- PRIVATE METHODS [END] --->
	
</cfcomponent>
