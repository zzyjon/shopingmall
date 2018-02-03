<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>이력서</title>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<!-- css 끝 -->
</head>
<body>
<div class="content-wrapper">
	<section class="content-header">
	<h1>이력서 작성</h1>
	</section>
	
	<section class="Content">
		<div class="box box-default">
			<div class="box-header with-border">
				<h3 class="box-title">상세정보 입력</h3>
			</div>
			<!-- /.box-header -->
			<table border="1">
				<tr>
					<td rowspan="2">사진<input type="file"></td>
					<td>이름<input type="text"></td>
					<td>희망연봉<input type="text"></td>
				</tr>
				<tr>
					<td colspan="2">주소<input type="text"></td>
				</tr>
				<tr>
					<td>특기<input type="text"></td>
					<td>취미<input type="text"></td>
				</tr>
				<tr>
					<td><textarea></textarea></td>
				</tr>
			</table>
		</div>
	</section>
</div>	
</body>
<!-- 자바스크립트 시작 -->
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<!-- 자바스크립트 끝 -->
</html>