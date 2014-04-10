<!--- TEST CASE 2 [START]--->
	<h3>Test 2 (using 'ImageScaleToFit()')</h3>
	<p>What how long ImageScaleToFit() takes to perform</p>
	
	<cfsilent>	
		<cfset startTime = now()>
		<cfset imageStore = structNew()>
		<cfset imageWidth = 300>
		<cfset imageHeight = 150>
		
		<!--- loop the desired number of times --->
		<cfloop index="i" from="1" to="#loopLimit#">
			
			<!--- loop through each of the 10 images (each image should have a different place in memory to prevent caching) --->
			<cfloop index="images_i" from="1" to="10">
				<cfset currentImageName = 'round#i#_image#images_i#'>
				<cfset imageVar = imageRead('image#images_i#.jpg')>
				<cfset ImageScaleToFit(imageVar,imageWidth,imageHeight,'highestPerformance')>
				<cfset imageStore[currentImageName] = imageVar>
				<cfset ImageWrite(imageVar,'files/#currentImageName#.jpg',1)>
			</cfloop>
		</cfloop>
		
		<cfset endtime = now()>
		<cfset duration = DateDiff("s", startTime, endtime)>
	</cfsilent>	
	
	<cfdump var="#duration#">
	
	<br />
<!--- TEST CASE 1 [END] --->
<hr />