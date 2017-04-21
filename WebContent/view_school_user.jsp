<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>

<html>
<head>
<title></title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@include file="verifyLoginUser.jsp"%>
<%
	UserInterface uc = (UserInterface) session.getAttribute("loggedIn");
	University university = uc.viewUniversity(request.getParameter("University"));

	//University uni = uc.viewUniversity(request.getParameter("University"));
	//uc.saveSchool(uni);
	//response.sendRedirect("saved_schools.jsp");
%>
<<<<<<< HEAD

=======
<div></div>
>>>>>>> branch 'master' of https://github.com/nullpm/cmcwebproject.git
<div class="container">
<<<<<<< HEAD
	<%
		if (!uc.viewSavedSchools().contains(university)) {
	%>
	<form method="post" action="save_action.jsp" name="Save">
		<input class="btn btn-success btn-block" name="Save" value="Save"
			type="submit"> <input name="University"
			value="<%=university.getName()%>" type="hidden">

	</form>
	<%
		} else {
	%>
	<td style="vertical-align: top;">
		<form method="post" action="remove_action.jsp" name="Remove">
			<input class="btn btn-danger btn-block" name="Remove" value="Remove"
				type="submit"> <input name="University"
				value="<%=university.getName()%>" type="hidden">
		</form>
	</td>
	<%
		}
	%>
=======
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
>>>>>>> branch 'master' of https://github.com/nullpm/cmcwebproject.git
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
				<td style="vertical-align: top;"><%=university.getLocation()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Control</td>
				<td style="vertical-align: top;"><%=university.getControl()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Students</td>
				<td style="vertical-align: top;"><%=university.getNumberOfStudents()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Female</td>
				<td style="vertical-align: top;"><%=university.getPercentFemale()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT Verbal</td>
				<td style="vertical-align: top;"><%=university.getSATVerbal()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT Math</td>
				<td style="vertical-align: top;"><%=university.getSATMath()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Expenses</td>
				<td style="vertical-align: top;"><%=university.getExpenses()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Financial Aid</td>
				<td style="vertical-align: top;"><%=university.getPercentFinancialAid()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Applicants</td>
				<td style="vertical-align: top;"><%=university.getNumberOfApplicants()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Admitted</td>
				<td style="vertical-align: top;"><%=university.getPercentAdmitted()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Enrolled</td>
				<td style="vertical-align: top;"><%=university.getPercentEnrolled()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Academic Scale (1-5)</td>
				<td style="vertical-align: top;"><%=university.getAcademicScale()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Social Scale (1-5)</td>
				<td style="vertical-align: top;"><%=university.getSocialScale()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Quality of Life Scale (1-5)</td>
				<td style="vertical-align: top;"><%=university.getQualityOfLifeScale()%></td>
			</tr>
			<tr>	<div class="container">
	<a href="#demo" class="btn btn-info" data-toggle="collapse">Simple collapsible</a>
  <div id="demo" class="collapse">
				<td style="vertical-align: top;">Emphases</td>
				<td style="vertical-align: top;"><%=university.getEmphasis()%></td>
			</tr>
		</tbody>
	</table>
	<h2>Here are some similar schools to look at:</h2>
	<% ArrayList<University> savedSchools = uc.viewSchoolWRec(university);
				for(University uni : savedSchools) {
			%>
	<table class="table table-bordered table-striped">
		<tbody>
			<tr>
			<td>
				<form method="post" action="save_action.jsp" name="Save">
					<input class="btn btn-success btn-block" name="Save" value="Save"
						type="submit"> <input name="University"
						value="<%=uni.getName()%>" type="hidden">
				</form></td>
								
				<td style="vertical-align: top;">
					<form method="post" action="view_school_admin.jsp" name="View">
						<input class="btn btn-primary btn-block" name="View" value="View"
							type="submit"> <input name="University"
							value="<%=uni.getName()%>" type="hidden">
					</form>
				</td>	
				
				
				</tr>
				<tr>
				<td style="vertical-align: top;">School</td>
				<td style="vertical-align: top;"><%=uni.getName()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">State</td>
				<td style="vertical-align: top;"><%=uni.getState()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Location</td>
				<td style="vertical-align: top;"><%=uni.getLocation()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Control</td>
				<td style="vertical-align: top;"><%=uni.getControl()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Students</td>
				<td style="vertical-align: top;"><%=uni.getNumberOfStudents()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Female</td>
				<td style="vertical-align: top;"><%=uni.getPercentFemale()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT Verbal</td>
				<td style="vertical-align: top;"><%=uni.getSATVerbal()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">SAT Math</td>
				<td style="vertical-align: top;"><%=uni.getSATMath()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Expenses</td>
				<td style="vertical-align: top;"><%=uni.getExpenses()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Financial Aid</td>
				<td style="vertical-align: top;"><%=uni.getPercentFinancialAid()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Number of Applicants</td>
				<td style="vertical-align: top;"><%=uni.getNumberOfApplicants()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Admitted</td>
				<td style="vertical-align: top;"><%=uni.getPercentAdmitted()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Percent Enrolled</td>
				<td style="vertical-align: top;"><%=uni.getPercentEnrolled()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Academic Scale (1-5)</td>
				<td style="vertical-align: top;"><%=uni.getAcademicScale()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Social Scale (1-5)</td>
				<td style="vertical-align: top;"><%=uni.getSocialScale()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Quality of Life Scale (1-5)</td>
				<td style="vertical-align: top;"><%=uni.getQualityOfLifeScale()%></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">Emphases</td>
				<td style="vertical-align: top;"><%=uni.getEmphasis()%></td>
			</tr>
			</tbody>
			</table>

			<%
				}
			%>
		
</div>
</body>
</html>