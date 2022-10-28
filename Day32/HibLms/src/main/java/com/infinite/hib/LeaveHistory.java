package com.infinite.hib;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@NamedQueries(  
	    {  
	    	
	    	 @NamedQuery(  
	    		        name = "searchLeave",  
	    		        query = "from LeaveHistory where empId = :empId"  
	    		        )
	    		    
	    }
	)

@Entity
@Table(name="LeaveHistory")
public class LeaveHistory {
	
	@Id
	@Column(name="LEAVE_ID")
    private int leaveId;
	
	@Column(name="leave_No_Of_Days")
	private int leaveNoOfDays;
	
	@Column(name="leave_Mngr_Comments")
	private String leaveMngrComments;
	
	@Column(name="emp_Id")
	private int empId;
	
	@Column(name="leave_Start_Date")
	private Date leaveStartDate;
	
	@Column(name="leave_End_Date")
	private Date leaveEndDate ;
	
	
	@Enumerated(EnumType.STRING)
	@Column(name="leave_Type")
	private LeaveType  leaveType;
	
	@Enumerated(EnumType.STRING)
	@Column(name="leave_Status")
	private LeaveStatus leaveStatus;
	
	@Column(name="leave_Reason")
	private String leaveReason;

	public int getLeaveId() {
		return leaveId;
	}

	public void setLeaveId(int leaveId) {
		this.leaveId = leaveId;
	}

	public int getLeaveNoOfDays() {
		return leaveNoOfDays;
	}

	public void setLeaveNoOfDays(int leaveNoOfDays) {
		this.leaveNoOfDays = leaveNoOfDays;
	}

	public String getLeaveMngrComments() {
		return leaveMngrComments;
	}

	public void setLeaveMngrComments(String leaveMngrComments) {
		this.leaveMngrComments = leaveMngrComments;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public Date getLeaveStartDate() {
		return leaveStartDate;
	}

	public void setLeaveStartDate(Date leaveStartDate) {
		this.leaveStartDate = leaveStartDate;
	}

	public Date getLeaveEndDate() {
		return leaveEndDate;
	}

	public void setLeaveEndDate(Date leaveEndDate) {
		this.leaveEndDate = leaveEndDate;
	}

	public LeaveType getLeaveType() {
		return leaveType;
	}

	public void setLeaveType(LeaveType leaveType) {
		this.leaveType = leaveType;
	}

	public LeaveStatus getLeaveStatus() {
		return leaveStatus;
	}

	public void setLeaveStatus(LeaveStatus leaveStatus) {
		this.leaveStatus = leaveStatus;
	}

	public String getLeaveReason() {
		return leaveReason;
	}

	public void setLeaveReason(String leaveReason) {
		this.leaveReason = leaveReason;
	}

}
