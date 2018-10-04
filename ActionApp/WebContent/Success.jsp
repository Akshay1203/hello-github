<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="com.nc.beans.User" isELIgnored="false" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="com.nc.beans.User" scope="session"/>
<h3>Welcome <jsp:getProperty property="username" name="user"/>
<h3>Your Password <jsp:getProperty property="password" name="user"/>

</h3>
<h4>${param.msg1 }</h4>
<h4>${param.msg2 }</h4>
</body>
</html>