<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>emp list 출력 </title>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<!-- css 끝 -->
</head>
<body>
<div class="col-sm-4">
	<div class="box">
		<div class="box-header">
			<h3 class="box-title">사원 목록</h3>
		</div>
			<div class="box-body table-responsive no-padding">
			<table class="table table-hover">
				<tr>
					<th style="width:15px">이름</th>
					<th style="width:15px">직무</th>
					<th style="width:25px">월급</th>
					<th style="width:15px">수당</th>
					<th style="width:15px">합계</th>
					<th style="width:15px">합계</th>
				</tr>
				<c:forEach var="emp" items="${list }">
					<tr>
						<td>${emp.ename}</td>
						<td>${emp.job }</td>
						<td>${emp.sal }</td>
						<td>${emp.comm }</td>
						<td>${emp.sal + emp.comm }</td>
						<td>${emp.total }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
</body>
<!-- 자바스크립트 시작 -->
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<!-- 자바스크립트 끝 -->
</html>