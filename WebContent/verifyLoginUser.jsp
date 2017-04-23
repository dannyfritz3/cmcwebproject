<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
</head>
<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%

Integer type = (Integer)session.getAttribute("type");
if(type == null || type != 2){
	response.sendRedirect("index.jsp?Error=-4");
	return;
}


%>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="saved_schools.jsp">Choose My College</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="search.jsp">Search</a></li>
      <li><a href="saved_schools.jsp">My Saved Schools</a></li>
    </ul>
     <ul class="nav navbar-nav navbar-right">
      <li><a href="profile_user.jsp"><span class="glyphicon glyphicon-user"></span> My Profile</a></li>
      <li><a href="logout_action.jsp"><span class="glyphicon glyphicon-log-in"></span> Log-Out</a></li>
    </ul>
  </div>
</nav>
<br>