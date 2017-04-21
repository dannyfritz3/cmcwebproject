<%@page language="java" import="java.util.*"%>


<html>
<head>

<title>Add User Form</title>
<%@include file="verifyLoginAdmin.jsp"%>

<div class="container">
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<form method="post" action="add_action.jsp" name="addUser">
				<div class="form-group">
					<label for="FirstName">First Name:</label> <input name="FirstName"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="LastName">Last Name:</label> <input name="LastName"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Username">Username:</label> <input name="Username"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Password">Password:</label> <input name="Password"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Type">Type:</label> <input name="Type"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Status">Status:</label> <input name="Status"
						class="form-control">
				</div>
				<div class="btn-group btn-group-justified">
					<div class="btn-group">
						<input value="Add User" name="Add User" type="submit"
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

