<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%
AdminInterface uc2 = (AdminInterface)session.getAttribute("loggedIn");
if(uc2 == null || !uc2.getAccount().getLoggedIn()){
	response.sendRedirect("index.jsp?Error=-4");
	return;
}

%>