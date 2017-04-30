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
					<label for="FirstName">First Name:</label> <input name="FirstName" value="<%= u.getFirstName() %>" required
						class="form-control">
				</div>
				<div class="form-group">
					<label for="LastName">Last Name:</label> <input name="LastName" value="<%= u.getLastName() %>" required
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Username">Username:</label> <input name="Username" value="<%= u.getUsername() %>" readonly
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Password">Password:</label> <input name="Password" value="<%= u.getPassword() %>" required
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Type">Type:</label> <select name="Type" class="form-control" value="<%= u.getType() %>">
						<option <%if(u.getType() == 'a') out.print("selected=\"selected\""); %>value="a">Admin</option>
						<option <%if(u.getType() == 'u') out.print("selected=\"selected\""); %>	value="u">User</option></select>
				</div>
				<div class="form-group">
					<label for="Status">Status:</label> <select name="Status" class="form-control">
						<option <%if(u.getStatus() == 'Y') out.print("selected=\"selected\""); %>value="Y">Activated</option>
						<option <%if(u.getStatus() == 'N') out.print("selected=\"selected\""); %>value="N">Deactivated</option></select>
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

