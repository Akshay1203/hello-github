<%@ page  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<style>
span,ul
{
color:red;
}
</style>
</head>
<body>
<h2>Registration Form</h2>
<ul>
<%
java.util.List<String> errs=(java.util.List<String>) request.getAttribute("errs");
if(errs!=null)
{
	for(String err:errs)
{
	out.println("<li>"+err+"</li>");
}	
}
%>
</ul>
<form action="register.html" method="post">
<table>
<tr>
<td>First Name<span>*</span></td>
<td><input type="text" name="fname" required/></td>
</tr>

<tr>
<td>Last Name<span>*</span></td>
<td><input type="text" name="lname" required/></td>
</tr>

<tr>
<td>Password<span>*</span></td>
<td><input type="password" name="upass" required/></td>
</tr>

<tr>
<td>Username<span>*</span></td>
<td><input type="text" name="uname" required/></td>
</tr>

<tr>
<td>Gender:</td>
<td><input type="radio" name="gender" value="M"> Male
<input type="radio" name="gender" value="F"> Female
</td>
</tr>

<tr>
<td>Hobbies:</td>
<td><input type="checkbox" name="hobbie" value="Dance">Dance
<input type="checkbox" name="hobbie" value="Music"> Music
<input type="checkbox" name="hobbie" value="Sports"> Sports
<input type="checkbox" name="hobbie" value="Painting"> Painting
</td>
</tr>

<tr>
<td>Country:</td>
<td><select name="country">
<option value="">Select  country</option>
<option value="India">India</option>
<option value="USA">USA</option>
<option value="UK">UK</option>
</select>
</td>
</tr>


<tr>
<td colspan="2" > 
<td><input type="submit" value="Register">
<input type="reset" value="Clear"> </td>
</td>
</tr>

</table>
</form>
</body>
</html>