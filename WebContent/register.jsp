<html>
	<head>

		<title>Register Form</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
	</head>
	<body>
		<br>

		<div class="container well">
			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
				<form method="post" action="register_action.jsp" name="register">
				<%
					if (request.getParameter("Error") != null && request.getParameter("Error").equals("-1")) {
						%><div><label class="text-danger">This username already exists</label></div><%
					}
				%>
				<div class="form-group">
					<label for="FirstName">First Name:</label> <input name="FirstName" value="" required
						class="form-control">
				</div>
				<div class="form-group">
					<label for="LastName">Last Name:</label> <input name="LastName" value="" required
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Username">Username:</label> <input name="Username" value="" required
						class="form-control">
				</div>
				<div class="form-group">
					<label for="Password">Password:</label> <input name="Password" type="Password" value="" required
						class="form-control">
				</div>
				<div class="btn-group btn-group-justified">
					<div class="btn-group">
						<input value="Register" name="Register" type="submit"
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