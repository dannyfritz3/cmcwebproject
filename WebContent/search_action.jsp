<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginUser.jsp" %>
<%
	UserInterface ui = (UserInterface)session.getAttribute("loggedIn");
	ArrayList<String> emphasis = new ArrayList<String>();
	String e1 = request.getParameter("Emph1");
	String e2 = request.getParameter("Emph2");
	String e3 = request.getParameter("Emph3");
	String e4 = request.getParameter("Emph4");
	String e5 = request.getParameter("Emph5");
	System.out.println(e1 + e2 + e3 + e4 + e5);
	if(!e1.equals("")){
		emphasis.add(e1.toUpperCase());
	}
	if(!e2.equals("")){
		emphasis.add(e2.toUpperCase());
	}
	if(!e3.equals("")){
		emphasis.add(e3.toUpperCase());
	}
	if(!e4.equals("")){
		emphasis.add(e4.toUpperCase());
	}
	if(!e5.equals("")){
		emphasis.add(e5.toUpperCase());
	}
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
	if(!request.getParameter("Expenses").equals("")){
		expenses = Double.parseDouble(request.getParameter("Expenses"));
	}
	double expenses2 = -1;
	if(!request.getParameter("Expenses2").equals("")){
		expenses2 = Double.parseDouble(request.getParameter("Expenses2"));
	}
	double percentFinancialAid = -1;
	if(!request.getParameter("PercentFinancialAid").equals("")){
		percentFinancialAid = Double.parseDouble(request.getParameter("PercentFinancialAid"));
	}
	double percentFinancialAid2 = -1;
	if(!request.getParameter("PercentFinancialAid2").equals("")){
		percentFinancialAid2 = Double.parseDouble(request.getParameter("PercentFinancialAid2"));
	}
	int numberOfApplicants = -1;
	if(!request.getParameter("NumberOfApplicants").equals("")){
		numberOfApplicants = Integer.parseInt(request.getParameter("NumberOfApplicants"));
	}
	int numberOfApplicants2 = -1;
	if(!request.getParameter("NumberOfApplicants2").equals("")){
		numberOfApplicants2 = Integer.parseInt(request.getParameter("NumberOfApplicants2"));
	}
	double percentAdmitted = -1;
	if(!request.getParameter("PercentAdmitted").equals("")){
		percentAdmitted = Double.parseDouble(request.getParameter("PercentAdmitted"));
	}
	double percentAdmitted2 = -1;
	if(!request.getParameter("PercentAdmitted2").equals("")){
		percentAdmitted2 = Double.parseDouble(request.getParameter("PercentAdmitted2"));
	}
	double percentEnrolled = -1;
	if(!request.getParameter("PercentEnrolled").equals("")){
		percentEnrolled = Double.parseDouble(request.getParameter("PercentEnrolled"));
	}
	double percentEnrolled2 = -1;
	if(!request.getParameter("PercentEnrolled2").equals("")){
		percentEnrolled2 = Double.parseDouble(request.getParameter("PercentEnrolled2"));
	}
	int academicScale = -1;
	if(!request.getParameter("AcademicScale").equals("")){
		academicScale = Integer.parseInt(request.getParameter("AcademicScale"));
	}
	int academicScale2 = -1;
	if(!request.getParameter("AcademicScale2").equals("")){
		academicScale = Integer.parseInt(request.getParameter("AcademicScale2"));
	}
	int socialScale = -1;
	if(!request.getParameter("SocialScale").equals("")){
		socialScale = Integer.parseInt(request.getParameter("SocialScale"));
	}
	int socialScale2 = -1;
	if(!request.getParameter("SocialScale2").equals("")){
		socialScale2 = Integer.parseInt(request.getParameter("SocialScale2"));
	}
	int qualityOfLifeScale = -1;
	if(!request.getParameter("QualityOfLifeScale").equals("")){
		qualityOfLifeScale = Integer.parseInt(request.getParameter("QualityOfLifeScale"));
	}
	int qualityOfLifeScale2 = -1;
	if(!request.getParameter("QualityOfLifeScale2").equals("")){
		qualityOfLifeScale2 = Integer.parseInt(request.getParameter("QualityOfLifeScale2"));
	}
	ui.searchSchools(name, state, location, control, numberOfStudents, numberOfStudents2, percentFemale, percentFemale2, SATVerbal, SATVerbal2, SATMath, SATMath2, expenses, expenses2, percentFinancialAid, percentFinancialAid2, numberOfApplicants, numberOfApplicants2, percentAdmitted, percentAdmitted2, percentEnrolled, percentEnrolled2, academicScale, academicScale2, socialScale, socialScale2, qualityOfLifeScale, qualityOfLifeScale2, emphasis);
	response.sendRedirect("results.jsp");
%>