<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>

<html>
<head>
<title>Search</title>
<%@include file="verifyLoginUser.jsp"%>
<%
	UserInterface uc = (UserInterface) session.getAttribute("loggedIn");
%>
<div class="container">
	<h1 class="text-center">Search Menu</h1>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<form method="post" action="search_action.jsp" name="search_action" class="form-horizontal">
				<div class="form-group">
					<label class="control-label col-sm-3"  for="SchoolName">School Name: </label>
					<div class="col-sm-9"> 
						<input name="SchoolName" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="State">State: </label>
					<div class="col-sm-9"> 
						<input name="State" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="Location">Location: </label>
					<label class="control-label col-sm-5"  for="Location">(Suburban, Urban, Small-City) </label>
					<div class="col-sm-4"> 
						<input name="Location" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="Control">Control: </label>
					<label class="control-label col-sm-5"  for="Control">(Private, State, City) </label>
					<div class="col-sm-4"> 
						<input name="Control" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="NumStudents">Number of Students: </label>
					<label class="control-label col-sm-2"  for="NumStudents"> between </label>
					<div class="col-sm-3"> 
					<input name="NumStudents" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="NumStudents2"> and </label>
					<div class="col-sm-3"> 
					<input name="NumStudents2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="PercentFemale">% Female: </label>
					<label class="control-label col-sm-2"  for="PercentFemale"> between </label>
					<div class="col-sm-3"> 
					<input name="PercentFemale" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="PercentFemale2"> and </label>
					<div class="col-sm-3"> 
					<input name="PercentFemale2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="SATVerbal">SAT Verbal: </label>
					<label class="control-label col-sm-2"  for="SATVerbal"> between </label>
					<div class="col-sm-3"> 
					<input name="SATVerbal" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="SATVerbal2"> and </label>
					<div class="col-sm-3"> 
					<input name="SATVerbal2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="SATMath">SAT Math: </label>
					<label class="control-label col-sm-2"  for="SATMath"> between </label>
					<div class="col-sm-3"> 
					<input name="SATMath" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="SATMath2"> and </label>
					<div class="col-sm-3"> 
					<input name="SATMath2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="Expenses">Expenses: </label>
					<label class="control-label col-sm-2"  for="Expenses"> between </label>
					<div class="col-sm-3"> 
					<input name="Expenses" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="Expenses2"> and </label>
					<div class="col-sm-3"> 
					<input name="Expenses2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="PercentFinancialAid">% Financial Aid: </label>
					<label class="control-label col-sm-2"  for="PercentFinancialAid"> between </label>
					<div class="col-sm-3"> 
					<input name="PercentFinancialAid" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="PercentFinancialAid2"> and </label>
					<div class="col-sm-3"> 
					<input name="PercentFinancialAid2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="NumberOfApplicants">Number Of Applicants: </label>
					<label class="control-label col-sm-2"  for="NumberOfApplicants"> between </label>
					<div class="col-sm-3"> 
					<input name="NumberOfApplicants" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="NumberOfApplicants2"> and </label>
					<div class="col-sm-3"> 
					<input name="NumberOfApplicants2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="PercentAdmitted">% Admitted: </label>
					<label class="control-label col-sm-2"  for="PercentAdmitted"> between </label>
					<div class="col-sm-3"> 
					<input name="PercentAdmitted" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="PercentAdmitted2"> and </label>
					<div class="col-sm-3"> 
					<input name="PercentAdmitted2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="PercentEnrolled">% Enrolled: </label>
					<label class="control-label col-sm-2"  for="PercentEnrolled"> between </label>
					<div class="col-sm-3"> 
					<input name="PercentEnrolled" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="PercentEnrolled2"> and </label>
					<div class="col-sm-3"> 
					<input name="PercentEnrolled2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="AcademicScale">Academic Scale<br>(1- 5): </label>
					<label class="control-label col-sm-2"  for="AcademicScale"> between </label>
					<div class="col-sm-3"> 
					<input name="AcademicScale" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="AcademicScale2"> and </label>
					<div class="col-sm-3"> 
					<input name="AcademicScale2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="SocialScale">Social Scale<br>(1- 5): </label>
					<label class="control-label col-sm-2"  for="SocialScale"> between </label>
					<div class="col-sm-3"> 
					<input name="SocialScale" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="SocialScale2"> and </label>
					<div class="col-sm-3"> 
					<input name="SocialScale2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="QualityOfLifeScale">Quality Of Life Scale (1- 5): </label>
					<label class="control-label col-sm-2"  for="QualityOfLifeScale"> between </label>
					<div class="col-sm-3"> 
					<input name="QualityOfLifeScale" class="form-control">
					</div>
					<label class="control-label col-sm-1"  for="QualityOfLifeScale2"> and </label>
					<div class="col-sm-3"> 
					<input name="QualityOfLifeScale2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="Emphases">Emphases: </label>
					<label class="control-label col-sm-3"  for="Emphases">contains either</label>
					<div class="control-label col-sm-6"></div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="Emph1"> </label>
					<div class="col-sm-9"> 
						<input name="Emph1" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="Emph2"> </label>
					<div class="col-sm-9"> 
						<input name="Emph2" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="Emph3"> </label>
					<div class="col-sm-9"> 
						<input name="Emph3" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="Emph4"> </label>
					<div class="col-sm-9"> 
						<input name="Emph4" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"  for="Emph5"> </label>
					<div class="col-sm-9"> 
						<input name="Emph5" class="form-control">
					</div>
				</div>
				<div class="btn-group btn-group-justified">
					<div class="btn-group">
						<input value="Search" name="Search" type="submit"
							class="btn btn-success">
					</div>
					<div class="btn-group">
						<input value="Reset" name="Reset" type="reset"
							class="btn btn-danger">
					</div>
				</div>
			</form>
		</div>
		<div class="col-sm-2"></div>
	</div>
</div>

</body>
</html>
