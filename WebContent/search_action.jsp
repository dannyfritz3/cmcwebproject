<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginUser.jsp" %>
<%
	UserInterface ui = (UserInterface)session.getAttribute("loggedIn");
	ArrayList<String> emphasis = new ArrayList<String>();
	/* if(request.getParameter("Emp1") != null && !request.getParameter("Emp1").equals("")){
		emphasis.add(request.getParameter("Emp1"));
	}
	if(request.getParameter("Emp2") != null && !request.getParameter("Emp2").equals("")){
		emphasis.add(request.getParameter("Emp2"));
	}
	if(request.getParameter("Emp3") != null && !request.getParameter("Emp3").equals("")){
		emphasis.add(request.getParameter("Emp3"));
	}
	if(request.getParameter("Emp4") != null && !request.getParameter("Emp4").equals("")){
		emphasis.add(request.getParameter("Emp4"));
	}
	if(request.getParameter("Emp5") != null && !request.getParameter("Emp5").equals("")){
		emphasis.add(request.getParameter("Emp5"));
	} */
	//ui.searchSchools(Double.parseDouble(request.getParameter("SATMath")), Double.parseDouble(request.getParameter("SATMath2")), Double.parseDouble(request.getParameter("Expenses")), Double.parseDouble(request.getParameter("Expenses2")), Double.parseDouble(request.getParameter("PercentFinancialAid")), Double.parseDouble(request.getParameter("PercentFinancialAid2")), Integer.parseInt(request.getParameter("NumberOfApplicants")), Integer.parseInt(request.getParameter("NumberOfApplicants2")), Double.parseDouble(request.getParameter("PercentAdmitted")), Double.parseDouble(request.getParameter("PercentAdmitted2")), Double.parseDouble(request.getParameter("PercentEnrolled")), Double.parseDouble(request.getParameter("PercentEnrolled2")),  Integer.parseInt(request.getParameter("AcademicScale")),  Integer.parseInt(request.getParameter("AcademicScale2")),  Integer.parseInt(request.getParameter("SocialScale")), Integer.parseInt(request.getParameter("SocialScale2")), Integer.parseInt(request.getParameter("QualityOfLifeScale")), Integer.parseInt(request.getParameter("QualityOfLifeScale2")), emphasis);
	String name = null;
	if(!request.getParameter("SchoolName").equals("")){
		name = request.getParameter("SchoolName").toUpperCase();
	}
	String state = null;
	if(!request.getParameter("State").equals("")){
		state = request.getParameter("State").toUpperCase();
	}
	String location = null;
	if(!request.getParameter("Location").equals("")){
		location = request.getParameter("Location").toUpperCase();
	}
	String control = null;
	if(!request.getParameter("Control").equals("")){
		control = request.getParameter("Control").toUpperCase();
	}
	int numberOfStudents = -1;
	if(!request.getParameter("NumStudents").equals("")){
		numberOfStudents = Integer.parseInt(request.getParameter("NumStudents"));
	}
	int numberOfStudents2 = -1;
	if(!request.getParameter("NumStudents2").equals("")){
		numberOfStudents2 = Integer.parseInt(request.getParameter("NumStudents2"));
	}
	double percentFemale = -1;
	if(!request.getParameter("PercentFemale").equals("")){
		percentFemale = Double.parseDouble(request.getParameter("PercentFemale"));
	}
	double percentFemale2 = -1;
	if(!request.getParameter("PercentFemale2").equals("")){
		percentFemale2 = Double.parseDouble(request.getParameter("PercentFemale2"));
	}
	double SATVerbal = -1;
	if(!request.getParameter("SATVerbal").equals("")){
		SATVerbal = Double.parseDouble(request.getParameter("SATVerbal"));
	}
	double SATVerbal2 = -1;
	if(!request.getParameter("SATVerbal2").equals("")){
		SATVerbal2 = Double.parseDouble(request.getParameter("SATVerbal2"));
	}
	double SATMath = -1;
	if(!request.getParameter("SATMath").equals("")){
		SATMath = Double.parseDouble(request.getParameter("SATMath"));
	}
	double SATMath2 = -1;
	if(!request.getParameter("SATMath2").equals("")){
		SATMath2 = Double.parseDouble(request.getParameter("SATMath2"));
	}
	double expenses = -1;
	double expenses2 = -1;
	double percentFinancialAid = -1;
	double percentFinancialAid2 = -1;
	int numberOfApplicants = -1;
	int numberOfApplicants2 = -1;
	double percentAdmitted = -1;
	double percentAdmitted2 = -1;
	double percentEnrolled = -1;
	double percentEnrolled2 = -1;
	int academicScale = -1;
	int academicScale2 = -1;
	int socialScale = -1;
	int socialScale2 = -1;
	int qualityOfLifeScale = -1;
	int qualityOfLifeScale2 = -1;
	ui.searchSchools(name, state, location, control, numberOfStudents, numberOfStudents2, percentFemale, percentFemale2, SATVerbal, SATVerbal2, SATMath, SATMath2, expenses, expenses2, percentFinancialAid, percentFinancialAid2, numberOfApplicants, numberOfApplicants2, percentAdmitted, percentAdmitted2, percentEnrolled, percentEnrolled2, academicScale, academicScale2, socialScale, socialScale2, qualityOfLifeScale, qualityOfLifeScale2, emphasis);
	response.sendRedirect("results.jsp");
%>