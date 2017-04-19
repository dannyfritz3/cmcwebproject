<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginUser.jsp" %>
<%
	UserInterface ui = (UserInterface)session.getAttribure("loggedIn");
	ui.searchSchools(name, state, location, control, numberOfStudents, numberOfStudents2, percentFemale, percentFemale2, SATVerbal, SATVerbal2, SATMath, SATMath2, expenses, expenses2, percentFinancialAid, percentFinancialAid2, numberOfApplicants, numberOfApplicants2, percentAdmitted, percentAdmitted2, percentEnrolled, percentEnrolled2, academicScale, academicScale2, socialScale, socialScale2, qualityOfLifeScale, qualityOfLifeScale2, emphasis)
	responce.sendRedirect("Results.jsp");
%>