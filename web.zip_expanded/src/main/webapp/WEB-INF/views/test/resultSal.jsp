<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>TEST 2018월 01월 29일</title>
</head>
<body>
<c:forEach var="emp" items="${list }">
${emp.ename } : ${emp.sal } : ${emp.dname } <br>
</c:forEach>
</body>
</html>