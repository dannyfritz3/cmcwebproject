<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginAdmin.jsp" %>
<%
AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");

String username = request.getParameter("Username");
if(username.equals("")){
	response.sendRedirect("edit.jsp?Error=1");
}
String fName = request.getParameter("FirstName");
if(fName.equals("")){
	response.sendRedirect("edit.jsp?Error=2");
}
String lName = request.getParameter("LastName");
if(lName.equals("")){
	response.sendRedirect("edit.jsp?Error=3");
}
String password = request.getParameter("Password");
if(password.equals("")){
	response.sendRedirect("edit.jsp?Error=4");
}
String t = request.getParameter("Type");
char t2 = 'x';
if(t.equals("")){
	response.sendRedirect("edit.jsp?Error=5");
} else {
	t2 = t.charAt(0);
}
String status = request.getParameter("Status");
char status2 = 'x';
if(status.equals("")){
	response.sendRedirect("edit.jsp?Error=6");
} else {
	status2 = status.charAt(0);
}
Account u = new Account(username, fName, lName, password, t2, status2);
System.out.println(uc.viewUser("admin").getFirstName());
uc.editProfile(u);
response.sendRedirect("manage_users.jsp");
%>