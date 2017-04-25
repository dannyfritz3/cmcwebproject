<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<html>
<head>
<%@include file="verifyLoginAdmin.jsp" %>
<title>Manage Schools</title>

<% AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");
	Account u = uc.getAccount();
%>

<div>
					<a class="btn btn-success btn-block" href="add_university.jsp"> <span class="glyphicon glyphicon-plus"></span> Add New University</a>
	<table class="table table-bordered table-striped">
		<tbody>

			<tr>
				<td style="vertical-align: top;">School</td>
				<td style="vertical-align: top; text-align: center;">State
				</td>
				<td style="vertical-align: top; text-align: center;">Location</td>
				<td style="vertical-align: top; text-align: center;">Control</td>
				<td style="vertical-align: top; text-align: center;"># of Students</td>
				<td style="vertical-align: top; text-align: center;">% females</td>
				<td style="vertical-align: top; text-align: center;">SAT Verbal</td>
				<td style="vertical-align: top; text-align: center;">SAT Math</td>
				<td style="vertical-align: top; text-align: center;">Expenses</td>
				<td style="vertical-align: top; text-align: center;">% with Financial Aid</td>
				<td style="vertical-align: top; text-align: center;"># of Applicants</td>
				<td style="vertical-align: top; text-align: center;">% Admitted</td>
				<td style="vertical-align: top; text-align: center;">% Enrolled</td>
				<td style="vertical-align: top; text-align: center;">Academic Scale (1-5)</td>
				<td style="vertical-align: top; text-align: center;">Social Scale (1-5)</td>
				<td style="vertical-align: top; text-align: center;">Quality of Life Scale (1-5)</td>
				<td style="vertical-align: top;"></td>
			</tr>
			<% ArrayList<University> savedSchools = uc.viewAllSchools();
				for(University uni : savedSchools) {
			%>
			<tr>
				<td style="vertical-align: top;"><%=uni.getName()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getState()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getLocation()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getControl()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getNumberOfStudents()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getPercentFemale()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getSATVerbal()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getSATMath()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getExpenses()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getPercentFinancialAid()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getNumberOfApplicants()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getPercentAdmitted()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getPercentEnrolled()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getAcademicScale()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getSocialScale()%>
				</td>
				<td style="vertical-align: top;"><%=uni.getQualityOfLifeScale()%>
				</td>
				<td style="vertical-align: top;">
					<form method="post" action="view_school_admin.jsp" name="view">
						<input class="btn btn-primary" name="view" value="Edit" type="submit">
						 <input	name="University" value="<%=uni.getName()%>" type="hidden">
					</form>
				</td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</div>
</body>
</html>