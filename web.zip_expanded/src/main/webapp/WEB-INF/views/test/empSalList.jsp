<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>TEST 2018월 01월 29일</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#btnOK").click(function(){
		var userSal = $("#userSal").val();
		
		if(userSal == ""){
			alert("값을 입력해주세요");
		}
		//alert(userSal);
		
		$("#frm").submit();
	});
});
</script>
</head>
<body>
<form id="frm" action="/test/salList" method="post">
<input type="text" id="userSal" name="sal" placeholder="급여를  입력하세요"><button type="button" id="btnOK" >조회</button>
</form>

</body>
</html>