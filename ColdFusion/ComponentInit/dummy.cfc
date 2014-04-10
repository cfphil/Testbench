<cfcomponent>

	<cfset this.methodCalled = ''>
	<cfset this.initialised = false>
	
	<cffunction name="init" access="public" output="false">
		<cfset this.methodCalled = 'init'>
		<cfset this.initialised = true>
		<cfreturn this />
	</cffunction>
	
	<cffunction name="dummy" access="public" output="false">
		<cfset this.methodCalled = 'dummy'>
		<cfset this.initialised = true>
		<cfreturn this />
	</cffunction>
	
	
</cfcomponent>