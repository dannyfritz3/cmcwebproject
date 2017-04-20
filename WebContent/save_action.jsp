<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginUser.jsp"%>
<%
	UserInterface uc = (UserInterface) session.getAttribute("loggedIn");
	University uni = uc.viewUniversity(request.getParameter("University"));
	uc.saveSchool(uni);
	response.sendRedirect("saved_schools.jsp");
%>