package com.zoosite.test;

import org.hibernate.SessionFactory;
 import org.hibernate.cfg.Configuration;
 

public class HibernateUtil {
	private static SessionFactory sef;
public HibernateUtil() {
	// TODO Auto-generated constructor stub
}
public static synchronized SessionFactory getInstance() { 
	if(sef == null) { 
		Configuration con = new Configuration().configure();
		sef = con.buildSessionFactory();
	}
	return sef;
}
}
