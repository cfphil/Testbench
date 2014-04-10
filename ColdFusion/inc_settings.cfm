<!--- COMMON VARS [START] --->

	<cfset variables.commonVars = structNew()>

	<!--- general variables that are commonly used --->
	<cfset variables.commonVars.validChars = 'abcdefghijklmnopqrstuvwxyz0123456789'>

	<!--- create an array of persons [START] --->
		<cfset variables.commonVars.persons = arrayNew(1)>
		<cffunction name="addPerson">
			<cfargument name="firstname">
			<cfargument name="lastname">
			
			<cfset var person = structNew()>
			<cfset person.firstname = arguments.firstname>
			<cfset person.lastname = arguments.lastname>
			
			<cfset arrayAppend(variables.commonVars.persons,person)>
		</cffunction>
		
		<cfscript>
			addPerson('andy','Allen');
			addPerson('abel','Abel');
			addPerson('anne','Maggison');
			addPerson('barry','Bowyer');
			addPerson('barbara','Winsor');
			addPerson('charles','Dance');
			addPerson('christine','Hamelton');
			addPerson('charly','Chalk');
			addPerson('colin','Chapman');
			addPerson('carly','Simon');
			addPerson('carol','Cake');
			addPerson('donald','Pleasance');
			addPerson('denise','Donut');
			addPerson('doug','Ramsbottom');
			addPerson('diane','Thyholdt');
			addPerson('donny','Osmond');
			addPerson('daniel','Carter');
			addPerson('eliott','Gold');
			addPerson('ellie','Samson');
			addPerson('elspeth','O hara');
			addPerson('edward','Monkton');
			addPerson('ellen','de Genres');
			addPerson('frank','Floor');
			addPerson('francis','Gravy');
			addPerson('finley','Quaye');
			addPerson('graeme','Walton');
			addPerson('graham','Savage');
			addPerson('gary','Gates');
			addPerson('gail','Abbot');
			addPerson('gaby','Logan');
			addPerson('Harold','Kennedy');
			addPerson('harry','Oswaldson');
			addPerson('Harriet','Simon');
			addPerson('Holly','Routledge');
			addPerson('Ian','Harper');
			addPerson('Iain','Harrison');
			addPerson('Imogen','Heap');
			addPerson('Juliet','Binoche');
			addPerson('Julie','Walters');
			addPerson('John','Kristiansen');
			addPerson('Jonathon','Trantor');
			addPerson('James','Mason');
			addPerson('Jim','Reeves');
			addPerson('Jennifer','Cornell');
			addPerson('Jacqueline','Peterson');
			addPerson('Kris','Kross');
			addPerson('Liam','Napier');
			addPerson('Lucy','Walson');
			addPerson('Liam','Chambers');
			addPerson('Neil','Bovey');
			addPerson('Norman','Potts');
			addPerson('Niall','Stephens');
			addPerson('Oscar','Peters');
			addPerson('Oswald','Noverton');
			addPerson('Oliver','Willis');
			addPerson('Ollie','Murs');
			addPerson('Peter','Potts');
			addPerson('Phillip','Green');
			addPerson('Paul','Okey');
			addPerson('Pete','Postlethwaite');
			addPerson('Quentin','Blake');
			addPerson('Robert','Maximus');
			addPerson('Raoul','Thockley');
			addPerson('Roxanne','Reese');
			addPerson('Rowan','Atkinson');
			addPerson('Stephen','Haste');
			addPerson('Steve','Mersey');
			addPerson('Simon','Tyne');
			addPerson('Simone','Wensleydale');
			addPerson('Sally','Lawson');
			addPerson('Tony','Mason');
			addPerson('Tamzin','Outhwaite');
			addPerson('Tania','Muttley');
			addPerson('Thomas','Gibson');
			addPerson('Tom','Waits');
			addPerson('Tilly','Thompson');
			addPerson('Umwin','George');
			addPerson('Victor','Meldrew');
			addPerson('William','O Hara');
			addPerson('Will','xxxxx');
			addPerson('Wilomina','Shoes');
			addPerson('Yogi','Bear');
			addPerson('Yasmin','Grateson');
			addPerson('Zak','De La Rocha');
		</cfscript>
	<!--- Create an array of persons [END] --->
	
	
	<!--- copy the common vars to the application scope --->
	<cfset application.commonVars = structCopy(variables.commonVars)>
<!--- COMMON VARS [END] --->


<!--- SETTING [START] --->
	<cfset application.db = 'testDB'>
	<cfset application.rootURL = 'http://127.0.0.1/sketchpad/TestBench/'>
	<cfset application.threads = structNew()>
<!--- SETTINGS [END] --->