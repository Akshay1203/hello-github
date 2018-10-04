<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.odd{
color:red;
}
.even{
color:blue;
}

</style>
</head>
<body>

<c:set var="companyName" value="NetCracker" scope="application"></c:set>
<c:set var="locations" value="Pune,Bangalore,Hyderabad" scope="session"></c:set>



<c:forEach var="idx" begin="1" end="5" step="1">

<c:if test="${ idx%2 ne 0}">
<h3 class="odd"> ${idx}: I work in <c:out value="${companyName }"></c:out></h3>
</c:if>
<c:if test="${ idx%2 eq 0}">
<h3 class="even"> ${idx}: I work in <c:out value="${companyName }"></c:out></h3>
</c:if>



</c:forEach>

<c:forEach var="city" items="${locations }">
<h3>You can work in ${city }</h3>


</c:forEach>


</body>
</html>