<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginAdmin.jsp"%>
<%
	AdminInterface uc = (AdminInterface) session.getAttribute("loggedIn");
	uc.deleteUniversity((University) session.getAttribute("university"));
	response.sendRedirect("saved_schools.jsp");
%>