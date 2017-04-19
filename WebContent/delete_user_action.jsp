<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginAdmin.jsp" %>
<%
    out.println("delete user : " + request.getParameter("Username"));
	AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");
	Account u = uc.viewUser(request.getParameter("Username"));
	uc.deleteUser(u);
	response.sendRedirect("manage_users.jsp");
%>