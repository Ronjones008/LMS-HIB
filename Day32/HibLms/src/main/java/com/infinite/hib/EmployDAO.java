package com.infinite.hib;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


public class EmployDAO {
	
	
	
	SessionFactory sessionFactory;
	
	public List<Employee> showEmploy(){	
		sessionFactory = SessionHelper.getSession();
		Session session = sessionFactory.openSession();
		Query query =  session.getNamedQuery("showEmploy");
		List<Employee> emplist = query.list();
		return emplist;
	}
	
	public Employee searchEmploy(int emp_Id) {
		sessionFactory = SessionHelper.getSession();
  	    Session session=sessionFactory.openSession();  
		Query query = session.getNamedQuery("searchEmploy");
		query.setParameter("emp_Id",emp_Id);   
		List<Employee> employList = query.list();
		if (employList.size()==0) {
			return null;
		} 
		return employList.get(0);
	}
	
	public LeaveHistory searchLeave(int empId) {
		sessionFactory = SessionHelper.getSession();
  	    Session session=sessionFactory.openSession();  
		Query query = session.getNamedQuery("searchLeave");
		query.setParameter("empId",empId);   
		List<LeaveHistory> leaveList = query.list();
		if (leaveList.size()==0) {
			return null;
		} 
		return leaveList.get(0);
	}
}
