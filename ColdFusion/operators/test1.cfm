


<!--- TEST CASE 1 [START]--->
	<h3>Test 1 (interpreting positive and negative integers)</h3>
	<p>See how integers are intepreted by coldfusion</p>
	<h4>Example:</h4>
	<p>
		<pre>
		</pre>
	</p>
	
	<cfoutput>
		<!--- test 1a [START] --->
		<cfset var1 = 10>
		<h4>Test 1a [#var1#]</h4>
		#var1# interpreted as 
		<cfif var1>
			True
		<cfelse>
			False
		</cfif>
		<br /><br />
		<!--- test 1a [END] --->
		
		
		
		<!--- test 1b [START]--->
		<cfset var2 = -10>
		<h4>Test 1b [#var2#]</h4>
		#var2# interpreted as 
		<cfif var2>
			True
		<cfelse>
			False
		</cfif>
		<br /><br />
		<!--- test 1b [END] --->
		
		
		
		<!--- test 1c [START] --->
		<cfset var3 = 0>
		<h4>Test 1c [#var3#]</h4>
		#var3# interpreted as 
		<cfif var3>
			True
		<cfelse>
			False
		</cfif>
		<br /><br />
		<!--- test 1a [END] --->
		
	</cfoutput>
	
	<br />
<!--- TEST CASE 1 [END] --->
<hr />