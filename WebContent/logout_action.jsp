<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
	<%
	session.setAttribute("loggedIn",null);
	session.setAttribute("type",0);
	response.sendRedirect("index.jsp");
	%>