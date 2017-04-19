<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
</head>
<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%

Integer type = (Integer)session.getAttribute("type");
if(type == null || type != 1){
	response.sendRedirect("index.jsp?Error=-4");
	return;
}

%>
<body>
