<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginUser.jsp"%>
<%
	UserInterface uc = (UserInterface) session.getAttribute("loggedIn");
	//out.print(request.getParameter("University"));
	University uni = uc.viewUniversity(request.getParameter("University"));
	//out.print(uni.getName());
	uc.saveSchool(uni);
	response.sendRedirect("saved_schools.jsp");
%>