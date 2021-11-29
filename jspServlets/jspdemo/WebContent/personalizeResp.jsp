<html>

<head><title>Confirmation</title></head>
<body>

<%
	// read form Data
	String lang=request.getParameter("favLang");

	// create Cookie
	Cookie NuCook=new Cookie("FavLAnguage",lang);
	
	// set the life span of cookie
	NuCook.setMaxAge(60*60*24*365);
	
	// sendCokie to the browser
	response.addCookie(NuCook);
	
	

%>

Thanks! We set your Favourite language to: ${param.favLang}
<a href="Homepage.jsp">Return to homepage</a>

</body>
</html>