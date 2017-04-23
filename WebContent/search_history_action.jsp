<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginUser.jsp" %>
<%
	UserInterface ui = (UserInterface)session.getAttribute("loggedIn");
	ui.reSearch(Integer.parseInt(request.getParameter("searchID")));
	response.sendRedirect("results.jsp");
%>