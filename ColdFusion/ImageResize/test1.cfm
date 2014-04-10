<!--- TEST CASE 1 [START]--->
	<h3>Test 1 (using &lt;cfimage&gt;)</h3>
	<p>How long cfimage takes to perform</p>
	
	<cfsilent>	
		<cfset startTime = now()>
		<cfset imageStore = structNew()>
		
		<!--- loop the desired number of times --->
		<cfloop index="i" from="1" to="#loopLimit#">
			
			<!--- loop through each of the 10 images (each image should have a different place in memory to prevent caching) --->
			<cfloop index="images_i" from="1" to="10">
				<cfset currentImageName = 'imageStore.round#i#_image#images_i#'>
				<cfimage source="image#images_i#.jpg" name="#currentImageName#" action="resize" width="200" height="100" destination="files/#currentImageName#.jpg" overwrite="yes">
			</cfloop>
		
		</cfloop>
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>	
	
	<cfdump var="#duration#">
	
	<br />
<!--- TEST CASE 1 [END] --->
<hr />