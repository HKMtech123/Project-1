<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME PAGE</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>

<title>Add Details</title>
</head>
<body>
	 <%@include  file="navbar.jsp"%>
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
                <h1 style="text-align:center" class="bg-warning text-white">LOGIN FORM</h1><br><br>
                
                <form class="form bg-light" method="post" action="Insert_Details">
                    <div class="form-group">
                    <label><strong>Name</label></strong><br>
                    <div class="icon"style="display:flex;">
                    <input class=form-control type="text"required name="name" placeholder="name"autocomplete="on"><br><br> 
                    <span style="margin-left:20px"><i class="fas fa-user fa-1x"></i></span>
                    </div></div>
                    <div class="form-group"> 
                    <label><strong>email</label></strong>
                    <div class="icon"style="display:flex;">
                    <input type="text" class="form-control"required name="email" placeholder="password"autocomplete="on"><br>
                    <span style="margin-left:20px"><i class="fas fa-lock fa-1x"></i></span>
                    </div></div><br>
                    <div class="form-group"> 
                    <label><strong>Date</label></strong>
                    <div class="icon"style="display:flex;">
                    <input type="date" class="form-control"required name="date" placeholder="date"autocomplete="on"><br>
                    <span style="margin-left:20px"><i class="fas fa-lock fa-1x"></i></span>
                    </div></div><br>
                    <div class="form-group"> 
                    <label><strong>Description</label></strong>
                    <div class="icon"style="display:flex;">
                    <textarea class="form-control"required name="description" placeholder="Description">
                    	
                    </textarea>
                    <span style="margin-left:20px"><i class="fas fa-lock fa-1x"></i></span>
                    </div></div><br>
                    <input id="btn"type="submit" value="LOGIN"name="Save Details" class="btn btn-primary">
                </form><br><br>
                <a id="caccount" href="showDetails.jsp">click here to see Details</a>
                </th></tr>
                </tbody>



            </table>
    </div>
    </div>
    </div>
</body>
</html>