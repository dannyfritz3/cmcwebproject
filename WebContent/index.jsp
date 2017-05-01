<html>
	<head>

		<title>Login Form</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
	</head>
	<body>
		<br>

		<div class="container well">
			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
				<form method="post" action="login_action.jsp" name="Login">
						<div class="form-group">
							<label for="Username">Username</label>
							<input name="Username" class="form-control">
						</div>
					<div class="form-group">
						<label for="Password">Password</label> <input type="password"
							name="Password" class="form-control">
					</div>
					<%
						if (request.getParameter("Error") != null) {
							%>
							<div>
							<%
							if (request.getParameter("Error").equals("-4")) {
								out.println("You do not have the permissions to access this page.");
							} else if(request.getParameter("Error").equals("-3")){
								out.println("This account has been deactivated");
							} else {
								out.println(request.getParameter("Error"));
							}
							%>
							</div>
							<%
						}
					%>
					<div class="btn-group btn-group-justified">
							<div class="btn-group">
								<input value="Log in" name="Log in" type="submit" class="btn btn-default">
							</div>
							<div class="btn-group">
								<input value="Reset" name="Reset" type="reset" class="btn btn-danger">
							</div>						
						</div>
					</form>
					<a href="register.jsp" class="btn btn-block btn-info">Register</a>
				</div>
				<div class="col-sm-4"></div>
			</div>
			
		</div>

	</body>
</html>