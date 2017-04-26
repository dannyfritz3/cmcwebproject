<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginUser.jsp" %>
<%
UserInterface uc = (UserInterface)session.getAttribute("loggedIn");
char status = uc.getAccount().getStatus();
Account u = new Account(request.getParameter("Username"), request.getParameter("FirstName"), request.getParameter("LastName"), request.getParameter("Password"), request.getParameter("Type").charAt(0), status);
uc.editProfile(u);
response.sendRedirect("home_user.jsp");
%>