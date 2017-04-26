<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginAdmin.jsp" %>
<%
AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");
Account u = new Account(request.getParameter("Username"), request.getParameter("FirstName"), request.getParameter("LastName"), request.getParameter("Password"), request.getParameter("Type").charAt(0), request.getParameter("Status").charAt(0));
System.out.println(uc.viewUser("admin").getFirstName());
uc.editProfile(u);
response.sendRedirect("manage_users.jsp");
%>