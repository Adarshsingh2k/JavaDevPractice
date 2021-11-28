<html>


<head> <title> Submit Confirmed </title> </head>

<body>
    
    The Submission is confirmed: ${param.fName} ${param.sName}
    
    <br><br>
    The country is: ${param.country}
    <br><br>
    The Favorite subject is: ${param.rBut}
    <!-- HAndling Checkboxes -->
    <br><br>
    Person is Interested in:
    <ul>
    	<%
    	
    	String[] lang= request.getParameterValues("cbox");
    	if (lang != null){
    	for(String i: lang){
    		out.println("<li>"+i+"</li>");
    	}}
    	
    	%>
    
    </ul> 
        
     

</body>

</html>