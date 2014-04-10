<script type="text/javascript">

var globalVar = 'I am a global var';
var globalVar_test1 = 'I am the GLOBAL var 1 - not local';
var globalVar_test2 = 'I am the GLOBAL var 2 - not local';

var step1 = 	function(){
					/* create a local variable for this function */
					var step1_local = 'I am a local var inside the method';
					
					/* create a local variable with same name as global */
					var globalVar_test1 = 'I am the LOCAL var 1 - not global';
					
					/* create a local var - unscoped - with same name as global */
					globalVar_test2 = 'I am the LOCAL var 2 - not global';
					
					var globalVar_test3 = 'I am the LOCAL var 3 - not global';
					
					globalVar_test4 = 'I am the LOCAL var 4 - not global';
	
	
	
					console.log('STEP 1 >>>>>>>>>>>');
					
					/* dump the global var */
					console.log('"globalVar": ['+ globalVar +']');
					
					/* dump the vars */
					console.log('"step1_local": ['+ step1_local +']');
					console.log('"globalVar_test1": ['+ globalVar_test1 +']');
					console.log('"globalVar_test2": ['+ globalVar_test2 +']');
					console.log('"globalVar_test3": ['+ globalVar_test3 +']');
					console.log('"globalVar_test4": ['+ globalVar_test4 +']');
					
					console.log('<<<<<<<<<<< STEP 1');
					console.log('');
					
				};
				
				
var step2 = 	function(){
					console.log('STEP 2 >>>>>>>>>>>');
					
					/* dump the global var */
					console.log('"globalVar": ['+ globalVar +']');
					
					/* dump the vars */
					//step1_local
					if(typeof(step1_local) === 'undefined'){
						console.log('"step1_local": undefined');	
					}
					else{
						console.log('"step1_local": ['+ step1_local +']');
					}
					
					//globalVar_test1
					if(typeof(globalVar_test1) === 'undefined'){
						console.log('"globalVar_test1": undefined');	
					}
					else{
						console.log('"globalVar_test1": ['+ globalVar_test1 +']');
					}
					
					//globalVar_test2
					if(typeof(globalVar_test2) === 'undefined'){
						console.log('"globalVar_test2": undefined');	
					}
					else{
						console.log('"globalVar_test2": ['+ globalVar_test2 +']');
					}
					
					//globalVar_test3
					if(typeof(globalVar_test3) === 'undefined'){
						console.log('"globalVar_test3": undefined');	
					}
					else{
						console.log('"globalVar_test3": ['+ globalVar_test3 +']');
					}
					
					//globalVar_test4
					if(typeof(globalVar_test4) === 'undefined'){
						console.log('"globalVar_test4": undefined');	
					}
					else{
						console.log('"globalVar_test4": ['+ globalVar_test4 +']');
					}
					
					console.log('<<<<<<<<<<< STEP 2');
					
				};
				
				
var invoker = 	function(){
					/* create the local variables needed */
					step1();
					
					/* try an access the previous variables */
					step2();
}

invoker();
</script>

NOTE: You need the debugger console enabled for this test - hit "F12".