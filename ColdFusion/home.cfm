<a href="cf_output/main.cfm">Cfoutput effeciency</a> |
<a href="cfchart/main.cfm">Charts</a> |
<a href="structCreation/main.cfm">Struct Creation Methods</a> |
<a href="structAccess/main.cfm">Struct Key accessing Methods</a> | 
<a href="switch/main.cfm">Switch / cfif compare</a> | 
<a href="componentInit/main.cfm">Component Initiliasation</a> | 
<a href="operators/main.cfm">Logic operators</a> | 
<a href="RemoteImages/main.cfm">Remote Images</a> | 
<a href="HTMLForms/main.cfm">HTML Forms</a> | 
<a href="VariableRefencing/main.cfm">Variable Referencing</a> | 
<a href="QueryInsert/main.cfm">Query Insert</a> | 
<a href="SplittingStrings/main.cfm">Splitting Strings</a> | 
<a href="CharacterEncoding/main.cfm">Character Encoding</a> | 
<a href="stringComparison/main.cfm">String Comparison</a> |  
<a href="threads/main.cfm">Threads</a> | 
<a href="threadQueries/main.cfm">Thread Queries</a> | 
<a href="threadCFHTTP/main.cfm">Thread CFHTTP</a> | 
<a href="WDDX/main.cfm">WDDX</a> | 
<a href="InterpretedFlow/main.cfm">Interpreted Flow</a> | 
<a href="imageResize/main.cfm">Image Resize</a> | 
<a href="ScopeReferenceTiming/main.cfm">Scope Reference Timing</a> | 
<a href="Javascript/main.cfm">Javascript Testing</a> |

<br /><br/><br/>
<cfset duration = 125>
<cfset minutes = int(duration / 60)>
<cfset seconds = duration - (minutes * 60)>
<cfoutput>
Duration: #numberFormat(minutes,'0')#:#numberFormat(seconds,'00')#

</cfoutput>