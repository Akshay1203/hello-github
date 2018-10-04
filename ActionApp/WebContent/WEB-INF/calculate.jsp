<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="post">
<table>
	<tr>
		<td> First Number:</td>
		<td><input type="text" name="fnum" value="${param.fnum }"/></td>
	</tr>
	<tr>
		<td> Second Number:</td>
		<td><input type="text" name="snum" value="${param.snum }"/></td>
	</tr>
	<tr>
		<td> Operations:</td>
		<td><select name="op" /></td>
	</tr>
	


</table>


</form>
<c:if test="${not empty param.calc }">
<c:choose>
	<c:when test="${param.op eq '+' }">
	Result:${param.fnum + param.snum }
	</c:when>
	<c:when test="${param.op eq '-' }">
	Result:${param.fnum - param.snum }
	</c:when>
	<c:when test="${param.op eq '/' }">
	Result:${param.fnum / param.snum }
	</c:when>
	<c:when test="${param.op eq '*' }">
	Result:${param.fnum * param.snum }
	</c:when>
	</c:choose>
	

</c:if>
</body>
</html>