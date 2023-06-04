package ConnectionProvider;

import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.entity.Students_Details;

public class DatabaseConnection {

	
	public void addToDatabase(Students_Details st)
	{
		boolean value=false;
		SessionFactory session = SessionProvider.factoryProvider();
	//	PrintWriter out = resp.getWriter();
		Session s= session.openSession();
		s.beginTransaction();
		s.save(st);

		s.getTransaction().commit();
		
		s.close();
		//out.println("<h1>" +name +"</h1><br>"+"<h3>" +email +"</h3><br>"+"<h3> ------------------  </h3><br>");
	//	return value;
	}
	
}

