<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PaySlip</title>
</head>
<body>

<jsp:useBean id="beanDao" class="com.infinite.pay.EmployDAO"></jsp:useBean>
		<h1>PaySlip</h1>
		<form method="get" action="FinalSlip.jsp">
			Enter Empno :
			<input type="number" name="empno" /><br/><br/>
		    <input type="submit" value="Submit">
		</form>
		<c:if test="${param.empno != null}">
		
		<c:forEach var="employ" items="${beanDao.searchEmploy(param.empno)}">
		<c:forEach var="leave" items="${beanDao.searchLeave(param.empno)}">

		   <table>
		   <tr>
		      <th></th>
		      <th></th>
		   </tr> 
		   <tr>
		   <th><b>Employ No :</b>
		   &nbsp
		   <td><c:out value="${employ.empno}"></c:out></td>
		   &nbsp&nbsp&nbsp&nbsp&nbsp
		   <th><b>Employ Name :</b>
		   &nbsp
		   <td><c:out value="${employ.ename}"/></td>
		   </tr>
		   </table>
		   <hr>
		   <tr>
		   <th><h3>Earnings</h3>  </th>
		   </tr>
		   <br/>
		   <tr>
		   <th><b>Basic :</b></th> &nbsp&nbsp&nbsp&nbsp<td></td><c:out value="${employ.salary}"/><br/>
		   <th><b>HRA :</b></th> &nbsp&nbsp&nbsp&nbsp<td><c:out value="${employ.hra}"/></td><br/>
		   <th><b>DA :</b></th> &nbsp&nbsp&nbsp&nbsp<td><c:out value="${employ.da}"/></td><br/>
		   <th><b>TA :</b></th> &nbsp&nbsp&nbsp&nbsp<td><c:out value="${employ.ta}"/></td><br/>
		   </br>
		   <th></th>
		   <th><b>Total Earnings</b></th>&nbsp&nbsp&nbsp&nbsp<td><c:out value="${employ.gross}"/></td><br/>
		   </tr>
		   <hr>
		      <tr>
		  
		   <th><h3>Deduction</h3>  </th>
		   </tr>
		   <br/>
		   <tr>
		   <th><b>PF :</b></th> &nbsp&nbsp&nbsp&nbsp<td><c:out value="${employ.pf}"/></td><br/>
		   <th><b>Tax :</b></th> &nbsp&nbsp&nbsp&nbsp<td><c:out value="${employ.tax}"/></td><br/>
		   <th><b>LOSS OF PAY :</b></th> &nbsp&nbsp&nbsp&nbsp<td></td><c:out value="${leave.lossOfPay}"/><br/>
		   </br>
		   <th></th>
		   
		   <c:set var="ded" value="${leave.lossOfPay + employ.pf + employ.tax }"></c:set>
		   <th><b>Total Deduction</b></th>&nbsp&nbsp&nbsp&nbsp<td><c:out value="${ded}"></c:out></td><br/>
		   </tr>
		   <hr>
		   
		   <tr>
		   <c:set var="ta" value="${employ.netPay - ded}"></c:set>
		   <th><b>TakeHome = </b></tr> &nbsp&nbsp&nbsp&nbsp <td><c:out value="${ta}"></c:out></td>
		   <br/><br/>
		   <th><b>Net Pay = </b></tr> &nbsp&nbsp&nbsp&nbsp <td><c:out value="${employ.netPay}"/></td>
		   
		   </c:forEach>
		   </c:forEach>
		   </c:if>
		
		
		

</body>
</html>