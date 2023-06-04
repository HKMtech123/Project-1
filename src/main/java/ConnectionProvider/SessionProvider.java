package ConnectionProvider;


import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class SessionProvider {

	public static SessionFactory factory;
	
	public static SessionFactory factoryProvider() {
		Configuration cfg = new Configuration();	
	    cfg.configure("hibernate.cfg.xml");
	    factory = cfg.buildSessionFactory();
	    
		return factory;
	}
	public static void sessionClose()
	{
		if(factory!=null)
			factory.close();
	}
}
