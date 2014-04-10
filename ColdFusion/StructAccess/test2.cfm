<!--- TEST CASE 2 [START]--->
	<h3>Test Case 2 (use "cftry" to access a variable using the struct prefix)</h3>
	<p>Create a new, empty struct with "structNew()" then populate it by referencing its name, followed by the key"</p>
	<h4>Example:</h4>
	<p>
		<pre>
		&lt;cfset newStruct1 = structNew()&gt;
		&lt;cfset newStruct1.testVar1 = 'blue'&gt;
		&lt;cfset newStruct1.testVar2 = 'red'&gt;
		&lt;cfset newStruct1.testVar3 = 'green'&gt;</pre>
	</p>
	
	<cfsilent>
		<cfset startTime = now()>
		<cfloop index="loop_i" from="1" to="#loopLimit#">
			<cfset newStruct1 = structNew()>
			<cfset newStruct1.testVar1 = application.toolbox.randomString()>
			
			<cfset handle1 = ''>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar1>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar2>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar3>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar4>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar5>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar6>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar7>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar8>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar9>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar10>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar11>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar12>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar13>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar14>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar15>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar16>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar17>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar18>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar19>
				<cfcatch type="any"> </cfcatch>
			</cftry>
			
			<cftry>
				<cfset handle1 = newStruct1.testVar20>
				<cfcatch type="any"> </cfcatch>
			</cftry>		
			
		</cfloop>	 
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<br />
	Duration: <cfdump var="#duration#"> seconds.
<!--- TEST CASE 2 [END] --->
<hr />