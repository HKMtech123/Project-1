package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.entity.Students_Details;

import ConnectionProvider.DatabaseConnection;
import ConnectionProvider.SessionProvider;

/**
 * Servlet implementation class Insert_Details
 */
public class Insert_Details extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name;
		String description;
		String email;
		String date;
		
		name = req.getParameter("name");
		email = req.getParameter("email");
		description = req.getParameter("description");
		date = req.getParameter("date");
		
		PrintWriter out = resp.getWriter();
	//	out.println("<h1>" +name +"</h1><br>"+"<h3>" +email +"</h3><br>"+"<h3> ------------------  </h3><br>");
     
		Students_Details st = new Students_Details();
		st.setName(name);
		st.setEmail(email);
		st.setDescription(description);
		st.setDate(date);
		
		DatabaseConnection db = new DatabaseConnection();
		db.addToDatabase(st);
		out.println("<h1> Added Successfully </h1>");
	//	out.println(value);
		
		out.println("<a href='showDetails.jsp'> Show Details </a>");
	}
	

}
