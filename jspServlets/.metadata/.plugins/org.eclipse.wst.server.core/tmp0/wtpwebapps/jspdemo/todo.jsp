<%@ page import="java.util.*" %>

<html>
<body>

<!-- Step 1 Create HTML Form -->
<form action="todo.jsp">
	Add New Item : <input type="text" name="item">
	
	<input type="submit" value="Submit">
	
</form>

<br> <br>
<%-- Item Entered:  ${param.item} --%>

<!-- Step 2 Add New item in Todo List -->
<%
	// get the items from session
	List<String> items= (List<String>) session.getAttribute("todoList");
	
	// if the TO DO item dosent exist, then create a new one
	
	   if (items == null) {
        items = new ArrayList<String>();
        session.setAttribute("todoList", items);
    }
	
	// see if there is form data to Add
	
	String theItem = request.getParameter("item");
    /* if ( (theItem != null) && (!theItem.trim().equals("")) ) {
        items.add(theItem);
    } */
    
        	boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
    	boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());
    	
    	if (isItemNotEmpty && isItemNotDuplicate) {    		
    		items.add(theItem.trim());    		
    	}


%>


<!-- Step 3 Display all "To Do Item for Session" -->
	<hr>
<b>To List Items:</b> <br/>

<ol>
<%
    for (String temp : items) {
        out.println("<li>" + temp + "</li>");
    }
%>
</ol>


</body>

</html>