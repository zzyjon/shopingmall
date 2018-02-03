<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>file upload</title>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<!-- css 끝 -->
</head>
<body>
	<section class="content">
		<div class="box box-default">
			<div class="box-header with-border">
				<h3 class="box-title">파일 올리기</h3>
			</div>
			<div class="box-body">
				<div class="row">
					<form action="/fileUpload" method="post" enctype="multipart/form-data" >
						<div class="form-group">
							<input type="file" name="file">
						</div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary">확인</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
<!-- 자바스크립트 시작 -->
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<!-- 자바스크립트 끝 -->
</html>