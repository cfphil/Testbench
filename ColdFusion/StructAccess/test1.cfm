<!--- TEST CASE 1 [START]--->
	<h3>Test Case 1 (structKeyExists())</h3>
	<p>use the "structKeyExists" method to check for a struct key, then assign it to a variable.</p>
	<h4>Example:</h4>
	<p>
		<pre>
		&lt;cfif structKeyExists(newStruct1,'testVar1')&gt;
			&lt;cfset handle1 = newStruct1.testVar1&gt;
		&lt;/cfif&gt;</pre>
	</p>
	
	<cfsilent>
		<cfset startTime = now()>
		<cfloop index="loop_i" from="1" to="#loopLimit#">
			<cfset newStruct1 = structNew()>
			<cfset newStruct1.testVar1 = application.toolbox.randomString()>
			
			<cfset handle1 = ''>
			
			<cfif structKeyExists(newStruct1,'testVar1')>
				<cfset handle1 = newStruct1.testVar1>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar2')>
				<cfset handle1 = newStruct1.testVar2>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar3')>
				<cfset handle1 = newStruct1.testVar3>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar4')>
				<cfset handle1 = newStruct1.testVar4>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar5')>
				<cfset handle1 = newStruct1.testVar5>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar6')>
				<cfset handle1 = newStruct1.testVar6>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar7')>
				<cfset handle1 = newStruct1.testVar7>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar8')>
				<cfset handle1 = newStruct1.testVar8>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar9')>
				<cfset handle1 = newStruct1.testVar9>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar10')>
				<cfset handle1 = newStruct1.testVar10>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar11')>
				<cfset handle1 = newStruct1.testVar11>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar12')>
				<cfset handle1 = newStruct1.testVar12>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar13')>
				<cfset handle1 = newStruct1.testVar13>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar14')>
				<cfset handle1 = newStruct1.testVar14>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar15')>
				<cfset handle1 = newStruct1.testVar15>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar16')>
				<cfset handle1 = newStruct1.testVar16>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar17')>
				<cfset handle1 = newStruct1.testVar17>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar18')>
				<cfset handle1 = newStruct1.testVar18>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar19')>
				<cfset handle1 = newStruct1.testVar19>
			</cfif>
			<cfif structKeyExists(newStruct1,'testVar20')>
				<cfset handle1 = newStruct1.testVar20>
			</cfif>
			
		</cfloop>	 
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<br />
	Duration: <cfdump var="#duration#"> seconds.
<!--- TEST CASE 1 [END] --->
<hr />