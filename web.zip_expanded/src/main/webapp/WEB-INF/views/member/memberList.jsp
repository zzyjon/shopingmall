<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>아이디</th>
<th>이름</th>
</tr>
<c:forEach var="member" items="${list}">
<tr>
	<td>${member.mId }</td>
	<td>${member.mName }</td>
</tr>	
</c:forEach>
</table>
</body>
</html>