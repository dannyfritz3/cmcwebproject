<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginAdmin.jsp"%>
<%
	AdminInterface uc = (AdminInterface) session.getAttribute("loggedIn");
	Account a = uc.viewUser(request.getParameter("Username"));
	uc.deactivate(a);
	response.sendRedirect("index.jsp");
%>