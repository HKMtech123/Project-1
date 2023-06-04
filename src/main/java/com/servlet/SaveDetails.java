package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.Students_Details;

public class SaveDetails extends HttpServlet {

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
		
		Students_Details st = new Students_Details();
		st.setName(name);
		st.setEmail(email);
		st.setDescription(description);
		st.setDate(date);
		
		
	}
	
	

}
