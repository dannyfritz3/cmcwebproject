<html>
	<head>

		<title>Login Form</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
	</head>
	<body>
		<br>
<% 
if(request.getParameter("Error") != null){
	if(request.getParameter("Error").equals("-1")){
		out.println("Username is invalid");
	} else if(request.getParameter("Error").equals("-2")){
		out.println("Password is invalid");
	} else {
		out.println("There was an error when accessing the database");
	}
}
%>
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
							<label for="Password">Password</label>
							<input type="password" name="Password" class="form-control">
						</div>
						<div class="btn-group btn-group-justified">
							<div class="btn-group">
								<input value="Log in" name="Log in" type="submit" class="btn btn-default">
							</div>
							<div class="btn-group">
								<input value="Reset" name="Reset" type="reset" class="btn btn-danger">
							</div>						
						</div>
					</form>
				</div>
				<div class="col-sm-4"></div>
			</div>
		</div>

	</body>
</html>