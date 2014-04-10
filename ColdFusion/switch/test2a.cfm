<!--- TEST CASE 1 [START]--->
	<h3>Test Case 2a (20 conditions in a switch statement)</h3>
	<p>How long a switch statement takes to handle 20 conditions</p>
	
	
	<cfsilent>
		<cfset startTime = now()>
		<cfset testCount = 0>
		<cfset testVar = ''>
		<cfset testArray = arrayNew(1)>
		<cfset arrayAppend(testArray,'a')>
		<cfset arrayAppend(testArray,'b')>
		<cfset arrayAppend(testArray,'c')>
		<cfset arrayAppend(testArray,'d')>
		<cfset arrayAppend(testArray,'e')>
		<cfset arrayAppend(testArray,'f')>
		<cfset arrayAppend(testArray,'g')>
		<cfset arrayAppend(testArray,'h')>
		<cfset arrayAppend(testArray,'i')>
		<cfset arrayAppend(testArray,'j')>
		<cfset arrayAppend(testArray,'k')>
		<cfset arrayAppend(testArray,'l')>
		<cfset arrayAppend(testArray,'m')>
		<cfset arrayAppend(testArray,'n')>
		<cfset arrayAppend(testArray,'o')>
		<cfset arrayAppend(testArray,'p')>
		<cfset arrayAppend(testArray,'q')>
		<cfset arrayAppend(testArray,'r')>
		<cfset arrayAppend(testArray,'s')>
		<cfset arrayAppend(testArray,'t')>
		<cfset arrayAppend(testArray,'u')>
		
		<cfloop index="loop_i" from="1" to="#loopLimit#">
			<cfset testVariable = testArray[randRange(1,5)]>
			
			<cfswitch expression="#testVariable#">
				<cfcase value="a">
					<cfset testVar = testVar & 'a '>
				</cfcase>
				
				<cfcase value="b">
					<cfset testVar = testVar & 'b '>
				</cfcase>
				
				<cfcase value="c">
					<cfset testVar = testVar & 'c '>
				</cfcase>
				
				<cfcase value="d">
					<cfset testVar = testVar & 'd '>
				</cfcase>
				
				<cfcase value="e">
					<cfset testVar = testVar & 'e '>
				</cfcase>
				
				<cfcase value="f">
					<cfset testVar = testVar & 'f '>
				</cfcase>
				
				<cfcase value="g">
					<cfset testVar = testVar & 'g '>
				</cfcase>
				
				<cfcase value="h">
					<cfset testVar = testVar & 'h '>
				</cfcase>
				
				<cfcase value="i">
					<cfset testVar = testVar & 'i '>
				</cfcase>
				
				<cfcase value="j">
					<cfset testVar = testVar & 'j '>
				</cfcase>
				
				<cfcase value="k">
					<cfset testVar = testVar & 'k '>
				</cfcase>
				
				<cfcase value="l">
					<cfset testVar = testVar & 'l '>
				</cfcase>
				
				<cfcase value="m">
					<cfset testVar = testVar & 'm '>
				</cfcase>
				
				<cfcase value="n">
					<cfset testVar = testVar & 'n '>
				</cfcase>
				
				<cfcase value="o">
					<cfset testVar = testVar & 'o '>
				</cfcase>
				
				<cfcase value="p">
					<cfset testVar = testVar & 'p '>
				</cfcase>
				
				<cfcase value="q">
					<cfset testVar = testVar & 'q '>
				</cfcase>
				
				<cfcase value="r">
					<cfset testVar = testVar & 'r '>
				</cfcase>
				
				<cfcase value="s">
					<cfset testVar = testVar & 's '>
				</cfcase>
				
				<cfcase value="t">
					<cfset testVar = testVar & 't '>
				</cfcase>
				
				<cfcase value="u">
					<cfset testVar = testVar & 'u '>
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