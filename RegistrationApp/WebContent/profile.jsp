<%@ page import="com.nc.model.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Success</title>
</head>
<body>
<h2>Registration Details</h2>
<table border="1">
<tr>
<td>First Name</td>
<td>${ profile.firstname}</td>
</tr>

<tr>
<td>Last Name</td>
<td>${ profile.lastname}</td>
</tr>

<tr>
<td>User name</td>
<td>${profile.username}</td>
</tr>

<tr>
<td>Gender</td>
<td>${profile.gender}</td>
</tr>

<tr>
<td>Hobbies</td>
<td>${profile.hobbies}</td>
</tr>



</table>
</body>
</html>