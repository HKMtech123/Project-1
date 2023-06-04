<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="ConnectionProvider.SessionProvider" %>
<%@ page import="org.hibernate.Session, org.hibernate.Transaction,org.hibernate.SessionFactory,com.entity.Students_Details" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Details</title>
	<%@ include file="css.jsp"%>
</head>
<body>
	 <%@include  file="navbar.jsp"%>
	 <% 
	 	int id = Integer.parseInt(request.getParameter("id"));
	 	SessionFactory factory = SessionProvider.factoryProvider();		
		Session s = factory.openSession();
		Transaction tx = s.beginTransaction();
		Students_Details st = (Students_Details)s.get(Students_Details.class, id) ;
	 %>
	        <div class="container-fluid col-lg-12 col-md-12 col-sm-8 col-8">
        <h1 class="m-auto bg-dark text-white" style="text-align:center;padding:10px">HKM TECHWORLD</h1>
    <br>
    <div class="container-fluid col-lg-12 col-md-12 col-sm-8 col-8">
        <div class="table">
            <table class="table">
                <tbody>
                <tr>
                <th width="50%" id="th1" class="text-center">
                <img src="image/Image.png"width="60%" height="80%" class="rounded-circle"></th>
                <th>
                <h1 style="text-align:center" class="bg-warning text-white">Update Details</h1><br><br>
                
                <form class="form bg-light" method="post" action="EditDetails?id=<%= st.getId()%>">
                    <div class="form-group">
                    <label><strong>Name</label></strong><br>
                    <div class="icon"style="display:flex;">
                    <input class=form-control type="text"required name="name" placeholder="name" value=<%=st.getName() %>><br><br> 
                    <span style="margin-left:20px"><i class="fas fa-user fa-1x"></i></span>
                    </div></div>
                    <div class="form-group"> 
                    <label><strong>email</label></strong>
                    <div class="icon"style="display:flex;">
                    <input type="text" class="form-control"required name="email" placeholder="password"value=<%=st.getEmail() %>><br>
                    <span style="margin-left:20px"><i class="fas fa-lock fa-1x"></i></span>
                    </div></div><br>
                    <div class="form-group"> 
                    <label><strong>Date</label></strong>
                    <div class="icon"style="display:flex;">
                    <input type="date" class="form-control"required name="date" placeholder="date"value=<%=st.getDate() %>><br>
                    <span style="margin-left:20px"><i class="fas fa-lock fa-1x"></i></span>
                    </div></div><br>
                    <div class="form-group"> 
                    <label><strong>Description</label></strong>
                    <div class="icon"style="display:flex;">
                    <textarea class="form-control"required name="description" placeholder="Description"><%=st.getDescription() %></textarea>
                    <span style="margin-left:20px"><i class="fas fa-lock fa-1x"></i></span>
                    </div></div><br>
                    <input id="btn"type="submit" value="Update"name="Save Details" class="btn btn-primary">
                </form><br><br>
                </th></tr>
                </tbody>



            </table>
    </div>
    </div>
    </div>
</body>
</html>