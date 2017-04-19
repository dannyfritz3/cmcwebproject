<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
	<%
		AdminInterface uc = (AdminInterface) session.getAttribute("loggedIn");
		uc.logout();
		response.sendRedirect("index.jsp");
	%>