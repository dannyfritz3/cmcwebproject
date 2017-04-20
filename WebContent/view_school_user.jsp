<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>

<html>
<head>
<title></title>
<%@include file="verifyLoginUser.jsp"%>
<%
	UserInterface uc = (UserInterface) session.getAttribute("loggedIn");
	University university = uc.viewUniversity(request.getParameter("University"));
	
	
	//University uni = uc.viewUniversity(request.getParameter("University"));
	//uc.saveSchool(uni);
	//response.sendRedirect("saved_schools.jsp");
	

%>
<div></div>
<div class="container">
	<%//<form method="post" action="save_action.jsp" name="Save">
		//<input class="btn btn-success btn-block" name="Save" value="Save"
			//type="submit"> <input name="University"
			//value="<%=university.getName()" type="hidden">
	//</form>%>

	<%
					if(!uc.viewSavedSchools().contains(university)) {
						%>
	<td style="vertical-align: top;">
		<form method="post" action="save_action.jsp" name="Save">
			<input size=10 class="btn btn-info" name="Save" value="Save"
				type="submit"> <input name="University"
				value="<%=university.getName()%>" type="hidden">
		</form>
	</td>
	<%}else{%>
	<td style="vertical-align: top;">
		<form method="post" action="remove_action.jsp" name="Remove">
			<input class="btn btn-danger" name="Remove" value="Remove"
				type="submit"> <input name="University"
				value="<%=university.getName()%>" type="hidden">
		</form>
	</td>
	<% } %>
	<table class="table table-bordered table-striped">
		<tbody>
			<tr>
				<td style="vertical-align: top;">School</td>
				<td style="vertical-align: top;"><%=university.getName()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">State</td>
				<td style="vertical-align: top;"><%=university.getState()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Location</td>
				<td style="vertical-align: top;"><%=university.getLocation() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Control</td>
				<td style="vertical-align: top;"><%=university.getControl() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Students</td>
				<td style="vertical-align: top;"><%=university.getNumberOfStudents() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Female</td>
				<td style="vertical-align: top;"><%=university.getPercentFemale() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT Verbal</td>
				<td style="vertical-align: top;"><%=university.getSATVerbal() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT Math</td>
				<td style="vertical-align: top;"><%=university.getSATMath() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Expenses</td>
				<td style="vertical-align: top;"><%=university.getExpenses() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Financial Aid</td>
				<td style="vertical-align: top;"><%=university.getPercentFinancialAid() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Applicants</td>
				<td style="vertical-align: top;"><%=university.getNumberOfApplicants() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Admitted</td>
				<td style="vertical-align: top;"><%=university.getPercentAdmitted() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Enrolled</td>
				<td style="vertical-align: top;"><%=university.getPercentEnrolled() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Academic Scale (1-5)</td>
				<td style="vertical-align: top;"><%=university.getAcademicScale() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Social Scale (1-5)</td>
				<td style="vertical-align: top;"><%=university.getSocialScale() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Quality of Life Scale (1-5)</td>
				<td style="vertical-align: top;"><%=university.getQualityOfLifeScale() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Emphases</td>
				<td style="vertical-align: top;"><%=university.getEmphasis() %></td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>