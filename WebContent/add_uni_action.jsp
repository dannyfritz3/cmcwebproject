<%@page language="java" import="interfaces.*, baseclasses.*,java.util.*"%>
<%@include file="verifyLoginAdmin.jsp" %>
<% 
AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");
ArrayList<String> ems = new ArrayList<String>();
ems.add(request.getParameter("em1"));
ems.add(request.getParameter("em2"));
ems.add(request.getParameter("em3"));
uc.addUniversity(request.getParameter("Name"), request.getParameter("State"), request.getParameter("Location"), request.getParameter("Control"), Integer.parseInt(request.getParameter("Students")), Double.parseDouble(request.getParameter("Female")), Double.parseDouble(request.getParameter("Verbal")), Double.parseDouble(request.getParameter("Math")),Double.parseDouble(request.getParameter("Expenses")),Double.parseDouble(request.getParameter("FinancialAid")),Integer.parseInt(request.getParameter("Applicants")),Double.parseDouble(request.getParameter("Admitted")),Double.parseDouble(request.getParameter("Enrolled")),Integer.parseInt(request.getParameter("Academic")),Integer.parseInt(request.getParameter("Social")),Integer.parseInt(request.getParameter("Quality")), ems);
response.sendRedirect("manage_schools.jsp");
%>