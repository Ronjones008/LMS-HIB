<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="beanDao" class="com.infinite.hib.EmployDAO"></jsp:useBean>
	
	<h1>Employ Deatils....</h1>
	<c:set var="emp_Id" value="${param.id}"></c:set>
	<c:if test="${emp_Id != null}">
		<c:set var="emp_Id" value="${param.id}"/>
		  <c:set var="employ" value="${beanDao.searchEmploy(emp_Id)}"/>
		  <c:if test="${employ != null}">
		  Employ No :
		  <c:out value="${employ.emp_Id}"></c:out><br/>
		  Employ Name :
		  <c:out value="${employ.emp_Name}"></c:out><br/>
		  Employ Email :
		  <c:out value="${employ.emp_mail}"></c:out><br/>
		  Employ Mobile NUmber :
		   <c:out value="${employ.emp_Mob_No}"></c:out> <br/>
		  Employ Date Of Join :
		  <c:out value="${employ.emp_Dt_Join}"></c:out><br/>
		  Employ Department :
		  <c:out value="${employ.emp_Dept}"></c:out><br/>
		 Employ Manager Id :
		 <c:out value="${employ.emp_Manager_Id}"></c:out><br/>		
		 Employ Avail Leave Bal :
		 <c:out value="${employ.emp_Avail_leave_Bal}"></c:out>  <br/><br/>
		 <c:out value="--------------------------------------------------------"/>
		  </c:if>
		  <c:set var="manid" value="${employ.emp_Manager_Id}"></c:set>
		  <h1>Manager Details....</h1>
		  <c:if test="${manid != null}">
		      <c:set var="mngid" value="${manid}"/>
		    <c:set var="employ1" value="${beanDao.searchEmploy(mngid)}"/>
		  <c:if test="${employ1 != null}">
		  Employ No :
		  <c:out value="${employ1.emp_Id}"></c:out><br/>
		  Employ Name :
		  <c:out value="${employ1.emp_Name}"></c:out><br/>
		  Employ Email :
		  <c:out value="${employ1.emp_mail}"></c:out><br/>
		  Employ Mobile NUmber :
		   <c:out value="${employ1.emp_Mob_No}"></c:out> <br/>
		  Employ Date Of Join :
		  <c:out value="${employ1.emp_Dt_Join}"></c:out><br/>
		  Employ Department :
		  <c:out value="${employ1.emp_Dept}"></c:out><br/>
		 Employ Manager Id :
		 <c:out value="${employ1.emp_Manager_Id}"></c:out><br/>		
		 Employ Avail Leave Bal :
		 <c:out value="${employ1.emp_Avail_leave_Bal}"></c:out>  <br/><br/>
		 <c:out value="--------------------------------------------------------"/>
		  </c:if>		  
		  </c:if>
		  	 <c:if test="${manid == null}">
		 	<c:out value=" No Manager For the Employ"></c:out><br/>
		 	<c:out value="--------------------------------------------------------"/>
		 </c:if>
	</c:if>
	<h1>Leave Details ....</h1>
	<c:set var="empId" value="${param.id}"></c:set>
	
	<c:if test="${empId != null}">
	  <form method="get" action="Search.jsp">
	  	<table border="3" align="center">
	  		<tr>
	  			<th>LEAVE_ID</th>
	  			<th>LEAVE_NO_OF_DAYS</th>
	  			<th>LEAVE_MNGR_COMMENTS</th>
	  			<th>EMP_ID</th>
	  			<th>LEAVE_START_DATE</th>
	  			<th>LEAVE_END_DATE</th>
	  			<th>LEAVE_TYPE</th>
	  			<th>LEAVE_STATUS</th>
	  			<th>LEAVE_REASON</th>	
	  		</tr>
	  		<c:out value="${empId}"></c:out>
      <c:forEach var="leave" items="${beanDao.searchLeave(empId)}">
	  	<tr>
	  		<td>${leave.leaveId}</td>
	  		<td>${leave.leaveNoOfDays}</td>
	  		<td>${leave.leaveMngrComments}</td>
	  		<td>${leave.empId}</td>
	  		<td>${leave.leaveStartDate}</td>
	  		<td>${leave.leaveEndDate}</td>
	  		<td>${leave.leaveType}</td>
	  		<td>${leave.leaveStatus}</td>
	  		<td>${leave.leaveReason}</td>
	  	</tr>
	  </c:forEach>
	  	</table>
	  </form>
	</c:if>
</body>
</html>