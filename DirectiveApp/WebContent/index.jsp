<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    isELIgnored = "false"
   errorPage="error.jsp"
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="header.jsp" ></jsp:include>
<form>
<div>
Enter first number:<input type="text" name="fnum" value = "${param.fnum}"/>
</div>
<div>
Enter second number:<input type="text" name="snum" value="${ param.snum}"/>

</div>

<div>
Select  operation: 
<select name="op">
<option value="+">Add</option>
<option value="-">Subtract</option>
<option value="*">Multiply</option>
<option value="/">Divide</option>
</select>
</div>
<input type="submit" name="Submit" value="Calculate"/>
</form>

<%
	String op= request.getParameter("op");
	if ( op!=null && op.equals("+")){
%>		${param.fnum+param.snum}
<%	}else if(op != null && op.equals("-")){
	%>		${param.fnum-param.snum}
<%	}else if(op != null && op.equals("*")){
	%>		${param.fnum*param.snum}
<%	}else if(op != null && op.equals("/")){
	%>		${param.fnum/param.snum}
<%	}
%>


</body>
</html>