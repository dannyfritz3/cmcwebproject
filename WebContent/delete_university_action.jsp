<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginAdmin.jsp"%>
<%
	AdminInterface uc = (AdminInterface) session.getAttribute("loggedIn");
	System.out.println(request.getParameter("Name"));
	uc.deleteUniversity(request.getParameter("Name"));
	response.sendRedirect("manage_schools.jsp");
%>