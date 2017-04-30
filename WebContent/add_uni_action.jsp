<%@page language="java" import="interfaces.*, baseclasses.*, controllers.* ,java.util.*"%>
<%@include file="verifyLoginAdmin.jsp" %>
<% 
AdminInterface uc = (AdminInterface)session.getAttribute("loggedIn");
ArrayList<String> ems = new ArrayList<String>();
ems.add(request.getParameter("em1"));
ems.add(request.getParameter("em2"));
ems.add(request.getParameter("em3"));
DBController.getMaxMinValues();
uc.addUniversity(request.getParameter("Name"), request.getParameter("State"), request.getParameter("Location"), request.getParameter("Control"), (request.getParameter("Students").equals("")) ? -1 : Integer.parseInt(request.getParameter("Students")), (request.getParameter("Female").equals("")) ? -1 : Double.parseDouble(request.getParameter("Female")), (request.getParameter("Verbal").equals("")) ? -1 : Double.parseDouble(request.getParameter("Verbal")), (request.getParameter("Math").equals("")) ? -1 : Double.parseDouble(request.getParameter("Math")),(request.getParameter("Expenses").equals("")) ? -1 : Double.parseDouble(request.getParameter("Expenses")),(request.getParameter("FinancialAid").equals("")) ? -1 : Double.parseDouble(request.getParameter("FinancialAid")),(request.getParameter("Applicants").equals("")) ? -1 : Integer.parseInt(request.getParameter("Applicants")),(request.getParameter("Admitted").equals("")) ? -1 : Double.parseDouble(request.getParameter("Admitted")),(request.getParameter("Enrolled").equals("")) ? -1 : Double.parseDouble(request.getParameter("Enrolled")),(request.getParameter("Academic").equals("")) ? -1 : Integer.parseInt(request.getParameter("Academic")),(request.getParameter("Social").equals("")) ? -1 : Integer.parseInt(request.getParameter("Social")),(request.getParameter("Quality").equals("")) ? -1 : Integer.parseInt(request.getParameter("Quality")), ems);
response.sendRedirect("manage_schools.jsp");
%>