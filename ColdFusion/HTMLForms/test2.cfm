<!--- TEST CASE 2 [START]--->
	<h3>Test 2 (Form Submission)</h3>
	<p>A basic form to use for testing form submission from various methods (e.g. clicking button, hitting enter, etc)</p>
	
	<!--- send to a solid action - this will allow us to look at sending url vars etc etc --->
	<form action="test2results.cfm" method="post">
	
		<div style="clear: both;">&nbsp;</div>
				
		<!--- left div --->
		<div style="float:left; width: 85%">
			<label for="field1" style="font-weight: bold;">Field 1</label><br />
			<input type="text" name="field1" id="field1" value="field1 value" />
			<hr />
			
			
			<label for="field2" style="font-weight: bold;">Field 2</label><br />
			<textarea name="field2" id="field2">field2 value</textarea>
			<hr />
			
			
			<span style="font-weight: bold;">Field 3</span><br />
			<input type="radio" name="field3" id="field3a" value="3a" />
			<label for="field3a">Field 3a</label><br />
			
			<input type="radio" name="field3" id="field3b" value="3b" />
			<label for="field3b">Field 3b</label><br />
			
			<input type="radio" name="field3" id="field3c" value="3c" />
			<label for="field3c">Field 3c</label><br />
			
			<input type="radio" name="field3" id="field3d" value="3d" />
			<label for="field3d">Field 3d</label><br />
			<hr />
			
			
			<span style="font-weight: bold;">Field 4</span><br />
			<input type="checkbox" name="field4" id="field4a" value="4a" />
			<label for="field4a">Field 4a</label><br />
			
			<input type="checkbox" name="field4" id="field4b" value="4b" />
			<label for="field4b">Field 4b</label><br />
			
			<input type="checkbox" name="field4" id="field4c" value="4c" />
			<label for="field4c">Field 4c</label><br />
			
			<input type="checkbox" name="field4" id="field4d" value="4d" />
			<label for="field4d">Field 4d</label><br />
			<hr />
			
			
			<label for="field5" style="font-weight: bold;">Field 5</label><br />
			<select name="field5" id="field5">
				<option value="5a">5a text</option>
				<option value="5b">5b text</option>
				<option value="5c">5c text</option>
				<option value="5d">5d text</option>
				<option value="5e">5e text</option>
			</select>
			<hr />
		
		</div>
		
		<div style="clear: both;">&nbsp;</div>
		<!--- right div --->
		<div style="float:right; width: 10%;">
			<input type="submit" value="Click Me 1"><br />
			<br />
			<input type="submit" value="Click Me 2">
		</div>
		
	</form>
	
	<br />
<!--- TEST CASE 1 [END] --->
<hr />