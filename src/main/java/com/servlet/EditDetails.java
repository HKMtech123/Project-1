package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Students_Details;

import ConnectionProvider.SessionProvider;

/**
 * Servlet implementation class EditDetails
 */
public class EditDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int id = Integer.parseInt(request.getParameter("id"));
//		PrintWriter out = response.getWriter();
//		out.println("<h1>" +id +"</h1><br>"+"<h3>");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String description = request.getParameter("description");
		String date = request.getParameter("date");
		
	    
		SessionFactory factory = SessionProvider.factoryProvider();
		
		Session s = factory.openSession();
		Transaction tx = s.beginTransaction();
		Students_Details st = (Students_Details)s.get(Students_Details.class, id) ;
		st.setDate(date);
		st.setDescription(description);
		st.setEmail(email);
		st.setName(name);
		s.update(st);
//		//st.get
//		s.up
		tx.commit();
		s.close();
		response.sendRedirect("showDetails.jsp");
	}



}
