<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.nc.beans.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
</head>
<body>

	<h4 style="color: red">${errMsg}</h4>
	<form method="post">
		<table>
			<tr>
				<td>Username</td>
				<td><input type="text" name="username"
					value="${param.username }" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="password"
					value="${param.password }" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="login" value="Login" /></td>
			</tr>
		</table>
	</form>
	<c:if test="${not empty param.login}">
		<jsp:useBean id="user" class="com.nc.beans.User" scope="session"></jsp:useBean>
		<jsp:setProperty property="username" name="user" value="${param.username}"/>
		<jsp:setProperty property="password" name="user" value="${param.password}"/>
		<c:if test="${user.username eq 'tom' and user.password eq 'cat' }">
			<jsp:forward page="Success.jsp">
				<jsp:param name="msg1" value="Message 1" />
				<jsp:param name="msg2" value="Message 2" />
			</jsp:forward>
		</c:if>
	</c:if>
</body>
</html>