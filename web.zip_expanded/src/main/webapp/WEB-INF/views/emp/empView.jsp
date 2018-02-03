<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
/* $(document).ready(function(){
	$("#btnSearch").click(function(){
		var eName = $("#eName").val();
		
		//alert(ename);
		
		$("#frm").submit();
	})
}); */
</script>
</head>
<body>
<form id="frm" action="/emp/empSearch" method="post" >
<input type="text" placeholder="이름을 입력하세요" id="eName" name="eName" /><button id="btnSearch" type="submit">검색</button>
</form>

<c:forEach var="emp" items="${list }">
${emp.eName } , ${emp.job } <br>
</c:forEach>
</body>
</html>