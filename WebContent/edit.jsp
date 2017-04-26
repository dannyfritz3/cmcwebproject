<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>

<html>
<head>

<title>Edit User Form</title>
<%@include file="verifyLoginAdmin.jsp" %>

<% AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");
	Account u = uc.viewUser(request.getParameter("Username"));
%>
<div class="container">
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<form method="post" action="edit_action.jsp" name="editUser">
				<div class="form-group">
					<label for="FirstName">First Name:</label> <input name="FirstName" value="<%= u.getFirstName() %>"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="LastName">Last Name:</label> <input name="LastName" value="<%= u.getLastName() %>"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Username">Username:</label> <input name="Username" value="<%= u.getUsername() %>" disabled
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Password">Password:</label> <input name="Password" value="<%= u.getPassword() %>"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Type">Type:</label> <select name="Type" class="form-control" value="<%= u.getType() %>">
						<option value=null></option>
						<option value="a">a</option>
						<option value="u">u</option></select>
				</div>
				<div class="form-group">
					<label for="Status">Type:</label> <select name="Status" class="form-control">
						<option value=null></option>
						<option value="Y">Y</option>
						<option value="N">N</option></select>
				</div>
				<div class="btn-group btn-group-justified">
					<div class="btn-group">
						<input value="Edit User" name="Edit User" type="submit"
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

