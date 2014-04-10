<!--- TEST CASE 1 [START]--->
	<h3>Test Case 1b (5 conditions in a cfif format)</h3>
	<p>How long cfif/cfelse takes to handle 5 conditions</p>
	
	
	<cfsilent>
		<cfset startTime = now()>
		<cfset testCount = 0>
		<cfset testVar = ''>
		<cfset testArray = arrayNew(1)>
		<cfset arrayAppend(testArray,'red')>
		<cfset arrayAppend(testArray,'blue')>
		<cfset arrayAppend(testArray,'green')>
		<cfset arrayAppend(testArray,'yellow')>
		<cfset arrayAppend(testArray,'pink')>
		
		<cfloop index="loop_i" from="1" to="#loopLimit#">
			<cfset testVariable = testArray[randRange(1,5)]>
			
			<cfif testVariable eq "red">
				<cfset testVar = testVar & 'R '>
			
			<cfelseif testVariable eq "blue">
				<cfset testVar = testVar & 'B '>
			
			<cfelseif testVariable eq "green">
				<cfset testVar = testVar & 'G '>
				
			<cfelseif testVariable eq "yellow">
				<cfset testVar = testVar & 'Y '>
			
			<cfelseif testVariable eq "pink">
				<cfset testVar = testVar & 'P '>
			</cfif>
			
		</cfloop>
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<br />
	Duration: <cfdump var="#duration#"> seconds.<br />
	Count: <cfdump var="#testVar#">
<!--- TEST CASE 1 [END] --->
<hr />