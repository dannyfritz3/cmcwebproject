<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
	<%@include file="verifyLogin.jsp"%>
	<%
		AdminInterface uc = (AdminInterface) session.getAttribute("loggedIn");
		uc.logout();
		response.sendRedirect("index.jsp");
	%>