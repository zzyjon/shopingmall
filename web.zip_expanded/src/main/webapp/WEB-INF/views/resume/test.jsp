<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="/resume/applyTest" method="post" enctype="multipart/form-data">
<input type="file" name="file"><br>
<input type="text"name="userName" placeholder="이름"><br>
<input type="text"name="userSal" placeholder="희망연봉"><br>
<textarea name="userIntro" rows="10" placeholder="자기소개"></textarea><br>
<button type="submit" id="btnTest">ok</button>
</form>
</body>
</html>