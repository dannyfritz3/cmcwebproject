<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginUser.jsp"%>
<%
	UserInterface uc = (UserInterface) session.getAttribute("loggedIn");
	uc.saveSchool((University) session.getAttribute("university"));
	response.sendRedirect("saved_schools.jsp");
%>