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
					<label for="Type">Type:</label> <select name="Type"
						class="form-control">
						<option value="a">Admin</option>
						<option value="u">User</option></select>
						
				</div>
				<div class="form-group">
					<label for="Status">Status:</label> <select name="Status"
						class="form-control">
						<option value="Y">Activated</option>
						<option value="N">Deactivated</option></select>
				</div>
				<%
					if (request.getParameter("Error") != null && request.getParameter("Error").equals("-1")) {
						%><div><label class="text-danger">This username already exists</label></div><%
					}
				%>
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

