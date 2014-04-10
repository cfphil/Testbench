<!--- TEST CASE 2 [START]--->
	<h3>Test Case 2 (converting WDDX to CFML only once)</h3>
	<p>Convert WDDX into CFML the first time is is needed - then re-reference the original conversion.</p>
	
	
	<cfsilent>
		<cfset startTime = now()>
		<cfset wddxString1 = "<wddxPacket version='1.0'><header/><data><array length='1'><struct><var name='Norway|prodref'><string>pt-ptyreww____EU</string></var><var name='Norway'><string>760</string></var><var name='Europe|prodref'><string>pt-ptyreww____EU</string></var><var name='Sweden|prodref'><string>pt-ptyreww____EU</string></var><var name='United Kingdom|prodref'><string>pt-ptyreww____UK</string></var><var name='United States of America|prodref'><string>pt-ptyreww____USA</string></var><var name='Rest of the world|prodref'><string>pt-ptyreww____NZ</string></var><var name='Australia'><number>1088.0</number></var><var name='New Zealand'><string>332</string></var><var name='New Zealand|prodref'><string>pt-ptyreww____NZ</string></var><var name='Australia|prodref'><string>pt-ptyreww____AUS</string></var><var name='Canada'><number>347.0</number></var><var name='IDLIST'><string>white wall,-</string></var><var name='Sweden'><string>760</string></var><var name='United States of America'><number>332.0</number></var><var name='Rest of the world'><string>332</string></var><var name='Canada|prodref'><string>pt-ptyreww____USA</string></var><var name='Europe'><string>760</string></var><var name='United Kingdom'><number>394.0</number></var></struct></array></data></wddxPacket>">
		<cfset wddxString2 = "<wddxPacket version='1.0'><header/><data><array length='1'><struct><var name='Norway|prodref'><string>pt-ptyreww____EU</string></var><var name='Norway'><string>760</string></var><var name='Europe|prodref'><string>pt-ptyreww____EU</string></var><var name='Sweden|prodref'><string>pt-ptyreww____EU</string></var><var name='United Kingdom|prodref'><string>pt-ptyreww____UK</string></var><var name='United States of America|prodref'><string>pt-ptyreww____USA</string></var><var name='Rest of the world|prodref'><string>pt-ptyreww____NZ</string></var><var name='Australia'><number>1088.0</number></var><var name='New Zealand'><string>332</string></var><var name='New Zealand|prodref'><string>pt-ptyreww____NZ</string></var><var name='Australia|prodref'><string>pt-ptyreww____AUS</string></var><var name='Canada'><number>347.0</number></var><var name='IDLIST'><string>white wall,-</string></var><var name='Sweden'><string>760</string></var><var name='United States of America'><number>332.0</number></var><var name='Rest of the world'><string>332</string></var><var name='Canada|prodref'><string>pt-ptyreww____USA</string></var><var name='Europe'><string>760</string></var><var name='United Kingdom'><number>394.0</number></var></struct></array></data></wddxPacket>">
		<cfset commonStruct = structNew()>
		
		<cfloop index="loop_i" from="1" to="#loopLimit#">
			<cfset newVariable1 = loop_i & '_newVar'>
			<cfset commonStruct[newVariable1] = wddxString1>
			
			
			<cfset newVariable2 = loop_i & '_newVar'>
			<cfset commonStruct[newVariable2] = wddxString2>
			
			<cfwddx action="wddx2cfml" input="#commonStruct[newVariable1]#" output="wddx1">
			<cfset commonStruct['wddx_#loop_i#'] = wddx1>
			<cfset newOutput1 = commonStruct['wddx_#loop_i#']>
			<cfset newOutput2 = commonStruct['wddx_#loop_i#']>
		</cfloop>	 
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>
	<br />
	Duration: <cfdump var="#duration#"> seconds.
<!--- TEST CASE 2 [END] --->
<hr />