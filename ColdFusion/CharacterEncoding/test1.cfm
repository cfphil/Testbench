<!--- TEST CASE 1 [START]--->
<h3>Test Case 1 (submtting via form post)</h3>

<h4>Some example text to copy</h4>

Lithuanian Chars: AĄBCČDEĘĖFGHIĮYJKLMNOPRSŠTUŲŪVZŽ / aąbcčdeęėfghiįyjklmnoprsštuųūvzž<br />
Norwegian: øåæ<br />
Chinese: 電佛佛氷虫<br />
Urdu: <br />س ض چ ع
<br />
	
	<form action="" method="post">
		Enter Text:<br />
		<textarea name="charTest"></textarea>
		<br />
		<input type="submit" value="submit" />
	</form>
	
	<cftry>
		<cfset testString1 = 'Lithuanian%20Chars%3A%20A%u0104BC%u010CDE%u0118%u0116FGHI%u012EYJKLMNOPRS%u0160TU%u0172%u016AVZ%u017D%20/%20a%u0105bc%u010Dde%u0119%u0117fghi%u012Fyjklmnoprs%u0161tu%u0173%u016Bvz%u017E%20Norwegian%3A%20%F8%E5%E6%20Chinese%3A%20%u96FB%u4F5B%u4F5B%u6C37%u866B%20Urdu%3A%20%u0633%20%u0636%20%u0686%20%u0639%20%09 '>
		<cfset testString2 = 'TGl0aHVhbmlhbiBDaGFyczogQQRCQwxERRkWRkdISS5ZSktMTU5PUFJTFRV2pWW30gLyBhWJjWRlRdmZ2hp3lqa2xtbm9wcnNhdHVz3Z6iBOb3J3ZWdpYW46IPjl5iBDaGluZXNlOi73yBVcmR1OiYzIYgiY5IAk= '>
		<cfset testString3 = 'TGl0aHVhbmlhbiBDaGFyczogQQEEQkMBDERFARgBFkZHSEkBLllKS0xNTk9QUlMBYFRVAXIBalZaAX0gLyBhAQViYwENZGUBGQEXZmdoaQEveWprbG1ub3BycwFhdHUBc6ixdnoBfiBOb3J3ZWdpYW46IPjl5iBDaGluZXNlOiCW+7fwt/BsN7PmIFVyZHU6IAYzIAY2IAaGIAY5IAk= '>
		
		<!--- <cfset test1 = BinaryDecode(testString1,'base64')> --->
		<cfset test2 = BinaryDecode(testString2,'base64')>
		<cfset test3 = BinaryDecode(testString3,'base64')>
		<cfoutput>
			<!--- <h5>test1</h5>
			#test1#<br/>
			#CharsetEncode(test1, 'utf-8')#<br/>
			 --->
			<hr />
			
			<h5>test2</h5>
			<cfdump var="#test2#"><br/>
			<cfset test2a = CharsetEncode(test2, 'utf-8') >
			<cf_debuglog message="dasfgsdfg">
			<!---
			<hr />
			
			<h5>test3</h5>
			<cfdump var="#test3#"><br/>
			<cf_debuglog message="#CharsetEncode(test3, 'utf-8')#">
			--->
		</cfoutput>
		
		<cfcatch type="any">
			<cfdump var="#cfcatch#">
		</cfcatch>
	</cftry>
	
	
<!--- TEST CASE 1 [END] --->
<hr />

