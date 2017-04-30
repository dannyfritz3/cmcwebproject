<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<html>
<head>

<title>Admin Profile</title>
<%@include file="verifyLoginAdmin.jsp" %>

<% AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");
	Account u = uc.getAccount();
%>
<div class="container">
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<form method="post" action="edit_action.jsp" name="editAdmin">
				<div class="form-group">
					<label for="FirstName">First Name:</label> <input name="FirstName" value="<%= u.getFirstName() %>" required
						class="form-control">
				</div>
				<div class="form-group">
					<label for="LastName">Last Name:</label> <input name="LastName" value="<%= u.getLastName() %>" required
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Username">Username:</label> <input name="Username" value="<%= u.getUsername() %>" disabled
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Password">Password:</label> <input name="Password" value="<%= u.getPassword() %>" required
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Type">Type:</label> <input name="Type" value="<%= u.getType() %>" disabled
						class="form-control">
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
		</div>
		<div class="col-sm-4"></div>
	</div>
</div>
</body>
</html>

