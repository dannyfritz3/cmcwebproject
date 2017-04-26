<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>

<html>
<head>
<title></title>
<%@include file="verifyLoginAdmin.jsp"%>
<%
	AdminInterface uc = (AdminInterface) session.getAttribute("loggedIn");
	University university = uc.viewUniversity(request.getParameter("University"));
%>
<!-- 
				</div>
				<div class="btn-group btn-group-justified">
					<div class="btn-group">
						<input value="Edit Admin" name="Edit Admin" type="submit"
							class="btn btn-success">
					</div>
					<div class="btn-group">
						<input value="Reset" name="Reset" type="reset"
							class="btn btn-danger">
					</div>
				</div>
			</form>
 -->



<div class="container">
	<form method="post" action="edit_university_action.jsp" name="editAdmin">
		<table class="table table-bordered table-striped">
			<tbody>
				<tr>
					<td style="vertical-align: top;">School</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Name" value="<%=university.getName()%>"
						class="form-control"></td>
				</div>
					
				</tr>
				<tr>
					<td style="vertical-align: top;">State</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="State" value="<%=university.getState()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Location</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					
					<select name="Location"	class="form-control">
							<option></option>
							<option <%if(university.getLocation() == "Urban") out.print("selected=\"selected\""); %>value="Urban">Urban</option>
							<option <%if(university.getLocation() == "Suburban") out.print("selected=\"selected\""); %>value="Suburban">Suburban</option>
							<option <%if(university.getLocation() == "Rural") out.print("selected=\"selected\""); %>value="Rural">Rural</option>
						</select>

				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Control</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Control" value="<%=university.getControl()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Number of Students</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Students" value="<%=university.getNumberOfStudents()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Percent Female</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Female" value="<%=university.getPercentFemale()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">SAT Verbal</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Verbal" value="<%=university.getSATVerbal()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">SAT Math</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Math" value="<%=university.getSATMath()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Expenses</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Expenses" value="<%=university.getExpenses()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Percent Financial Aid</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="FinancialAid" value="<%=university.getPercentFinancialAid()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Number of Applicants</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Applicants" value="<%=university.getNumberOfApplicants()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Percent Admitted</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Admitted" value="<%=university.getPercentAdmitted()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Percent Enrolled</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Enrolled" value="<%=university.getPercentEnrolled()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Academic Scale (1-5)</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Academic" value="<%=university.getAcademicScale()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Social Scale (1-5)</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Social" value="<%=university.getSocialScale()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Quality of Life Scale (1-5)</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Quality" value="<%=university.getQualityOfLifeScale()%>"
						class="form-control"></td>
				</div>
				</tr>
				<tr>
					<td style="vertical-align: top;">Emphases</td>
					<div class="form-group">
					<td style="vertical-align: top;">
					 <input name="Emphases" value="<%=university.getEmphasis()%>"
						class="form-control"></td>
				</div>
				</tr>
				</tbody>
		</table>
				<div class="btn-group btn-group-justified">
					<div class="btn-group">
						<input value="Edit" name="Edit" type="submit"
							class="btn btn-success">
					</div>
					<div class="btn-group">
						<input value="Reset" name="Reset" type="reset"
							class="btn btn-danger">
					</div>
				</div>
				
			
	</form>
</div>
</body>
</html>