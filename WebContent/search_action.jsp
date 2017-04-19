<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginUser.jsp" %>
<%
	UserInterface ui = (UserInterface)session.getAttribute("loggedIn");
	ArrayList<String> emphasis = new ArrayList<String>();
	if(request.getParameter("Emp1") != null){
		emphasis.add(request.getParameter("Emp1"));
	}
	if(request.getParameter("Emp2") != null){
		emphasis.add(request.getParameter("Emp2"));
	}
	if(request.getParameter("Emp3") != null){
		emphasis.add(request.getParameter("Emp3"));
	}
	if(request.getParameter("Emp4") != null){
		emphasis.add(request.getParameter("Emp4"));
	}
	if(request.getParameter("Emp5") != null){
		emphasis.add(request.getParameter("Emp5"));
	}
	ui.searchSchools(request.getParameter("SchoolName"), request.getParameter("State"), request.getParameter("Location"), request.getParameter("Control"), Integer.parseInt(request.getParameter("NumStudents")), Integer.parseInt(request.getParameter("NumStudents2")), Double.parseDouble(request.getParameter("PercentFemale")), Double.parseDouble(request.getParameter("PercentFemale2")), Double.parseDouble(request.getParameter("SATVerbal")), Double.parseDouble(request.getParameter("SATVerbal2")), Double.parseDouble(request.getParameter("SATMath")), Double.parseDouble(request.getParameter("SATMath2")), Double.parseDouble(request.getParameter("Expenses")), Double.parseDouble(request.getParameter("Expenses2")), Double.parseDouble(request.getParameter("PercentFinancialAid")), Double.parseDouble(request.getParameter("PercentFinancialAid2")), Integer.parseInt(request.getParameter("NumberOfApplicants")), Integer.parseInt(request.getParameter("NumberOfApplicants2")), Double.parseDouble(request.getParameter("PercentAdmitted")), Double.parseDouble(request.getParameter("PercentAdmitted2")), Double.parseDouble(request.getParameter("PercentEnrolled")), Double.parseDouble(request.getParameter("PercentEnrolled2")),  Integer.parseInt(request.getParameter("AcademicScale")),  Integer.parseInt(request.getParameter("AcademicScale2")),  Integer.parseInt(request.getParameter("SocialScale")), Integer.parseInt(request.getParameter("SocialScale2")), Integer.parseInt(request.getParameter("QualityOfLifeScale")), Integer.parseInt(request.getParameter("QualityOfLifeScale2")), emphasis);
	response.sendRedirect("Results.jsp");
%>