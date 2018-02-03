<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<!-- css 끝 -->
</head>
<body>
<div class="content">
<input type="text" id="mId" name="mId" /> <br>
<input type="password" id="mPassword" name="mPassword" /> <br>
<button type="button" id="btnLogin" class="btn btn-info" >로그인</button>
</div>
</body>
<!-- 자바스크립트 시작 -->
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<!-- 자바스크립트 끝 -->
<script>
$(document).ready(function(){
	$("#btnLogin").click(function(){
		var mId = $("#mId").val();
		var mPassword = $("#mPassword").val();
		//alert(mId + " & " + mPassword);
		
		$.ajax({
			url: "/member/procLogin",
			type: "post",
			dataType: "json",
			data: {"mId":mId, "mPassword":mPassword},  // vo 사용하려면 vo변수명과 동일하게 해야한다
			success: function(data){
				//console.log(data);
				if(data.result == "200"){
					location.href="/member/loginComplete";
				}else{
					location.href="/member/loginForm"
				}
			},
			error: function(data){
				console.log(data);
			}
		})
	})
})
</script>
</html>