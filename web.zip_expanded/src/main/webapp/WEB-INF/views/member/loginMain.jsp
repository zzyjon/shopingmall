<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<!-- css 끝 -->
</head>
<body>
<div class="col-sm-4">
	<div class="box">
		<div class="box-header">
			<h3 class="box-title">로그인</h3>
		</div>
		<div class="box-body table-responsive no-padding">
			<form id="frm" action="" method="post">
				<label>아이디</label>
				<input type="text" id="userID" name="userID" />
				<label>비밀번호</label>
				<input type="password" id="userPW" name="userPW" />
				<button class="btn btn-primary" type="submit">로그인</button>
			</form>
		</div>
	</div>
</div>
</body>
<!-- 자바스크립트 시작 -->
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<!-- 자바스크립트 끝 -->
<script>

</script>
</html>