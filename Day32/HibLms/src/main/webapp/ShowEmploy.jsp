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
<form method="get" action="ShowEmploy.jsp">
 <table border="3" align="center">
 
 	<tr>
 		<th>EmpID</th>
 		<th>EmpNAME</th>
 		<th>EmpMAIL</th>
 		<th>EmpMobNo</th>
 		<th>EmpDtJoin</th>
 		<th>EmpDept</th>
 		<th>EmpMangerId</th>
 		<th>EmpAvailLeaveBal</th>
 	</tr>
 	<c:forEach var="employ" items="${beanDao.showEmploy()}">
 	 <tr>
 	  	<td>${employ.emp_Id}</td>
 	  	<td>${employ.emp_Name}</td>
 	  	<td>${employ.emp_mail}</td>
 	  	<td>${employ.emp_Mob_No}</td>
 	  	<td>${employ.emp_Dt_Join}</td>
 	  	<td>${employ.emp_Dept}</td>
 	  	<td>${employ.emp_Manager_Id}</td>
 	  	<td>${employ.emp_Avail_leave_Bal}</td>
 	  	<td><a href="Search.jsp?id=${employ.emp_Id}">Search Items</a></td>
 	  </tr>
 	</c:forEach>
 </table>

</form>
</body>
</html>