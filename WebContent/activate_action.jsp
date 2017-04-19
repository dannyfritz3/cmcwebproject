<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<% AdminInterface uc = (AdminInterface) session.getAttribute("loggedIn");
	Account a = uc.viewUser(request.getParameter("Username"));
	uc.activate(a);
	response.sendRedirect("manage_users.jsp");
%>