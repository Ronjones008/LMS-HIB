package com.infinite.hib;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@NamedQueries(  
	    {  
	        @NamedQuery(  
	        name = "showEmploy",  
	        query = "from Employee"  
	        ),
	        @NamedQuery(  
	     	name="searchEmploy",
        	query="from Employee where emp_Id=:emp_Id"
        ),
	        @NamedQuery(  
	    	     	name="searchMan",
	            	query="from Employee where emp_Manager_Id=:emp_Manager_Id"
	            ),
	       
	    }  
	) 
@Entity
@Table(name="employee")
public class Employee {
	
	
	@Id
	@Column(name="emp_Id")
	private int emp_Id;
	
	@Column(name="emp_Name")
	private String emp_Name;
	
	@Column(name="emp_mail")
	private String emp_mail;
	
	@Column(name="emp_Mob_No")
	private long emp_Mob_No;
	
	@Column(name="emp_Dt_Join")
	private Date emp_Dt_Join;
	
	@Column(name="emp_Dept")
	private String emp_Dept;
	
	@Column(name="emp_Manager_Id")
	private Integer emp_Manager_Id;
	
	@Column(name="emp_Avail_leave_Bal")
	private int emp_Avail_leave_Bal;

	public int getEmp_Id() {
		return emp_Id;
	}

	public void setEmp_Id(int emp_Id) {
		this.emp_Id = emp_Id;
	}

	public String getEmp_Name() {
		return emp_Name;
	}

	public void setEmp_Name(String emp_Name) {
		this.emp_Name = emp_Name;
	}

	public String getEmp_mail() {
		return emp_mail;
	}

	public void setEmp_mail(String emp_mail) {
		this.emp_mail = emp_mail;
	}

	public long getEmp_Mob_No() {
		return emp_Mob_No;
	}

	public void setEmp_Mob_No(long emp_Mob_No) {
		this.emp_Mob_No = emp_Mob_No;
	}

	public Date getEmp_Dt_Join() {
		return emp_Dt_Join;
	}

	public void setEmp_Dt_Join(Date emp_Dt_Join) {
		this.emp_Dt_Join = emp_Dt_Join;
	}

	public String getEmp_Dept() {
		return emp_Dept;
	}

	public void setEmp_Dept(String emp_Dept) {
		this.emp_Dept = emp_Dept;
	}

	public Integer getEmp_Manager_Id() {
		return emp_Manager_Id;
	}

	public void setEmp_Manager_Id(Integer emp_Manager_Id) {
		this.emp_Manager_Id = emp_Manager_Id;
	}

	public int getEmp_Avail_leave_Bal() {
		return emp_Avail_leave_Bal;
	}

	public void setEmp_Avail_leave_Bal(int emp_Avail_leave_Bal) {
		this.emp_Avail_leave_Bal = emp_Avail_leave_Bal;
	}
	
	
}
