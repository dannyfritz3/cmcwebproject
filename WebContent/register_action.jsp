<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%

Account u = new Account(request.getParameter("Username"), request.getParameter("FirstName"), request.getParameter("LastName"), request.getParameter("Password"), 'u', 'Y');
AdminInterface uc = new AdminInterface();
boolean b = uc.addUser(u);
if(b){
	response.sendRedirect("index.jsp");
}
else{
	response.sendRedirect("register.jsp?Error=-1");
}

%>