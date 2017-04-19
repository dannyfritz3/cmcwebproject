<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>

<html>
<head>
<title>Search</title>
<%@include file="verifyLoginUser.jsp"%>
<%
	UserInterface uc = (UserInterface) session.getAttribute("loggedIn");
%>
<div class="container">
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<form method="post" action="Add_action.jsp" name="addUser" class="form-horizontal">
				<div class="form-group">
					<label class="control-label col-sm-3"  for="SchoolName">by School Name</label> <div class="col-sm-9"> <input name="SchoolName"
						class="form-control"> </div>
				</div>
				<div class="form-group">
					<label for="SchoolName">by State</label> <input name="State"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="SchoolName">by Location</label> <input name="Location"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="SchoolName">by Control</label> <input name="Conrtol"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="SchoolName">by School Name</label> <input name="SchoolName"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="SchoolName">by School Name</label> <input name="SchoolName"
						class="form-control">
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
