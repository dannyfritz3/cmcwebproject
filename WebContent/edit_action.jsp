<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginAdmin.jsp" %>
<% 
Account u = new Account(request.getParameter("Username"), request.getParameter("FirstName"), request.getParameter("LastName"), request.getParameter("Password"), request.getParameter("Type").charAt(0), request.getParameter("Status").charAt(0));
AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");
uc.editProfile(u);
if(u.getStatus() == 'N')
{
	response.sendRedirect("deactivate_ation.jsp");
}
response.sendRedirect("manage_users.jsp");
%>