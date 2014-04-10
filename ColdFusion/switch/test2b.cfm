<!--- TEST CASE 1 [START]--->
	<h3>Test Case 2a (20 conditions in a cfif format)</h3>
	<p>How long cfif/cfelse takes to handle 20 conditions</p>
	
	
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
			
			<cfif testVariable eq "a">
				<cfset testVar = testVar & 'a '>
			<cfelseif testVariable eq "b">
				<cfset testVar = testVar & 'b '>
			<cfelseif testVariable eq "c">
				<cfset testVar = testVar & 'c '>
			<cfelseif testVariable eq "d">
				<cfset testVar = testVar & 'd '>
			<cfelseif testVariable eq "e">
				<cfset testVar = testVar & 'e '>
			<cfelseif testVariable eq "f">
				<cfset testVar = testVar & 'f '>
			<cfelseif testVariable eq "g">
				<cfset testVar = testVar & 'g '>
			<cfelseif testVariable eq "h">
				<cfset testVar = testVar & 'h '>
			<cfelseif testVariable eq "i">
				<cfset testVar = testVar & 'i '>
			<cfelseif testVariable eq "j">
				<cfset testVar = testVar & 'j '>
			<cfelseif testVariable eq "k">
				<cfset testVar = testVar & 'k '>
			<cfelseif testVariable eq "l">
				<cfset testVar = testVar & 'l '>
			<cfelseif testVariable eq "m">
				<cfset testVar = testVar & 'm '>
			<cfelseif testVariable eq "n">
				<cfset testVar = testVar & 'n '>
			<cfelseif testVariable eq "o">
				<cfset testVar = testVar & 'o '>
			<cfelseif testVariable eq "p">
				<cfset testVar = testVar & 'p '>
			<cfelseif testVariable eq "q">
				<cfset testVar = testVar & 'q '>
			<cfelseif testVariable eq "r">
				<cfset testVar = testVar & 'r '>
			<cfelseif testVariable eq "s">
				<cfset testVar = testVar & 's '>
			<cfelseif testVariable eq "t">
				<cfset testVar = testVar & 't '>
			<cfelseif testVariable eq "u">
				<cfset testVar = testVar & 'u '>
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