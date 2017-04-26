<%@page language="java" import="java.util.*"%>


<html>
<head>

<title>Add University Form</title>
<%@include file="verifyLoginAdmin.jsp"%>

<div class="container">
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<form method="post" action="add_uni_action.jsp" name="addUniversity">
				<div class="form-group">
					<label for="Name">Name:</label> <input name="Name"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="State">State:</label> <input name="State"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Location">Location:</label> <select name="Username"
						class="form-control">
							<option value="Urban">Urban</option>
							<option value="Suburban">Suburban</option>
							<option value="Rural">Rural</option>
						</select>
				</div>
				<div class="form-group">
					<label for="Control">Control:</label> <select name="Username"
						class="form-control">
							<option value=null
							<option value="Public">Public</option>
							<option value="Private">Private</option>
						</select>
				</div>
				<div class="form-group">
					<label for="Students">Number Of Students:</label> <input name="Students"
						class="form-control" type="number" min="0">
				</div>
				<div class="form-group">
						<label for="Female">Percent Female:</label> <input name="Female"
							class="form-control" type="number" min="0" max="100">
				</div>
				<div class="form-group">
						<label for="Verbal">SAT Verbal:</label> <input name="Verbal"
							class="form-control" type="number" min="200" max="800">
				</div>
				<div class="form-group">
						<label for="Math">SAT Math:</label> <input name="Math"
							class="form-control" type="number" min="200" max="800">
				</div>
				<div class="form-group">
					<label for="Expenses">Expenses:</label> <input name="Expenses"
						class="form-control" type="number" min="0">
				</div>
				<div class="form-group">
						<label for="FinancialAid">Percent Financial Aid:</label> <input name="FinancialAid"
							class="form-control" type="number" min="0" max="100">
				</div>
				<div class="form-group">
						<label for="Applicants">Number of Applicants:</label> <input name="Applicants"
							class="form-control" type="number" min="0">
				</div>
				<div class="form-group">
						<label for="Admitted">Percent Admitted:</label> <input name="Admitted"
							class="form-control" type="number" min="0">
				</div>
				<div class="form-group">
					<label for="Enrolled">Percent Enrolled:</label> <input name="Enrolled"
						class="form-control" type="number" min="0">
				</div>
				<div class="form-group">
						<label for="Academic">Academic Scale(1-5):</label> <input name="Academic"
							class="form-control" type="number" max="5" min="1">
				</div>
				<div class="form-group">
						<label for="Social">Social Scale(1-5)::</label> <input name="Social"
							class="form-control" type="number" max="5" min="1">
				</div>
				<div class="form-group">
						<label for="Quality">Quality of Life Scale(1-5):</label> <input name="Quality"
							class="form-control" type="number" max="5" min="1">
				</div>
				<div class="form-group">
						<label for="em1">Emphasis(es):</label> <input name="em1"
							class="form-control">
				</div>
				<div class="form-group">
						<label for="em2"></label> <input name="em2"
							class="form-control">
				</div>
				<div class="form-group">
						<label for="em3"></label> <input name="em3"
							class="form-control">
				</div>				
				<div class="btn-group btn-group-justified">
					<div class="btn-group">
						<input value="Add University" name="Add User" type="submit"
							class="btn btn-success">
					</div>
					<div class="btn-group">
						<input value="Reset" name="Reset" type="reset"
							class="btn btn-danger">
					</div>
				</div>
			</form>
		</div>
		<div class="col-sm-4"></div>
	</div>
</div>
</body>
</html>