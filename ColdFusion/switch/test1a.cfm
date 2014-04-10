<!--- TEST CASE 1 [START]--->
	<h3>Test Case 1a (5 conditions in a switch statement)</h3>
	<p>How long a switch statement takes to handle 5 conditions</p>
	
	
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
			
			<cfswitch expression="#testVariable#">
				<cfcase value="red">
					<cfset testVar = testVar & 'R '>
				</cfcase>
				
				<cfcase value="blue">
					<cfset testVar = testVar & 'B '>
				</cfcase>
				
				<cfcase value="green">
					<cfset testVar = testVar & 'G '>
				</cfcase>
				
				<cfcase value="yellow">
					<cfset testVar = testVar & 'Y '>
				</cfcase>
				
				<cfcase value="pink">
					<cfset testVar = testVar & 'P '>
				</cfcase>
			</cfswitch>
		</cfloop>
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<br />
	Duration: <cfdump var="#duration#"> seconds.<br />
	Count: <cfdump var="#testVar#">
<!--- TEST CASE 1 [END] --->
<hr />