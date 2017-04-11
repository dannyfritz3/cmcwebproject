<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLogin.jsp" %>
<%
    out.println("delete user : " + request.getParameter("Username"));
	AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");
	Account u = uc.viewUser(request.getParameter("Username"));
	uc.deleteUser(u);
	response.sendRedirect("Menu.jsp");
%>