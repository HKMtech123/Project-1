<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="ConnectionProvider.SessionProvider" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="com.entity.Students_Details"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
	<%@include file="css.jsp" %>
</head>
<body>
	<h1 class="bdg-dark container navbar-light">Students details</h1>
	<a   href="addStudent.jsp" class="container btn btn-success">Add Details</a>
	<%
		
		Session s = SessionProvider.factoryProvider().openSession();
		Query q = s.createQuery("from Students_Details");
		
		List<Students_Details> list = q.list();
		
		for(Students_Details st : list){
		%>
			<div class="container">
				
				<div class="card mt-3 " style="width: max-width:100px;">
				
<!-- 			  <img class="card-img-top" src="..." alt="Card image cap"> -->
			  <div class="card-body">
			    <h5 class="card-title">Name : <%= st.getName() %></h5>
			    <p class="card-text">Description : <%= st.getDescription() %></p>
			    <p class="card-text">Email : <%= st.getEmail() %></p>
			    <p class="card-text">Date : <%= st.getDate() %></p>
			    <a  href="DeleteDetails?id=<%= st.getId() %>" class="btn btn-danger">Delete</a>
			    <a  href="updateDetails.jsp?id=<%= st.getId() %>" class="btn btn-success">Edit</a>
			  </div>
			</div>
			
			</div>
		<%}
			s.close();
		%>
<!-- 			out.println("<h1>Name: " +st.getName()+" " +"</h1>"+"<h3>Description: " +st.getDescription() +"</h3><br>"+"<h3> ------------------  </h3><br>"); -->
<!--  	%> -->
</body>
</html>