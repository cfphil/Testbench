<!--- TEST CASE 1 [START]--->
	<h3>Test Case 2 (submtting via form post)</h3>

	<h4>Some example text to copy</h4>
	<pre>
Lithuanian Chars: AĄBCČDEĘĖFGHIĮYJKLMNOPRSŠTUŲŪVZŽ / aąbcčdeęėfghiįyjklmnoprsštuųūvzž
Norwegian: øåæ
Chinese: 電佛佛氷虫
Urdu: س ض چ ع
	
	</pre>
	
	<form action="" method="post">
		Enter Text:<br />
		<textarea name="charTest"></textarea>
		<br />
		<input type="submit" value="submit" />
	</form>
	
	<cfif isDefined('form.charTest')>
		Dumped Content:
		<div style="width: 300px; border: 1px solid #000; background-color: #ddd; height: 300px;">
			<pre>
<cfoutput>#form.charTest#</cfoutput>
			</pre>
		</div>
	</cfif>
	
	
	
<!--- TEST CASE 1 [END] --->
<hr />


<cf_debuglog message="AĄBCČDEĘĖFGHIĮYJKLMNOPRSŠTUŲŪVZŽ">
		<cf_debuglog message="#arguments.event.getArgs()#" append="true">
		
		<cfset local.test_control = arguments.event.getArg('title')>
		<cf_debuglog message="c: #local.test_control#" append="true">
		
		<cfset local.test1 = BinaryDecode(arguments.event.getArg('title_1'),'base64')>
		<cf_debuglog message="1: #local.test1#" append="true">	
		<cf_debuglog message="1: #CharsetEncode(local.test1, 'utf-8 ')#" append="true">		
		
		<cfset local.test1 = BinaryDecode(arguments.event.getArg('title_2'),'base64')>
		<cf_debuglog message="1: #local.test1#" append="true">	
		<cf_debuglog message="1: #CharsetEncode(local.test1, 'utf-8 ')#" append="true">	
		