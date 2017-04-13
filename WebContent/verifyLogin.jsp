<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
</head>
<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%
AdminInterface uc2 = (AdminInterface)session.getAttribute("loggedIn");
if(uc2 == null || !uc2.getAccount().getLoggedIn()){
	response.sendRedirect("index.jsp?Error=-4");
	return;
}

%>
<body>
