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
			<h3 class="box-title">사원 목록</h3>
		</div>
		<div class="box-body table-responsive no-padding">
			<table class="table table-hover">
				<tr>
					<th style="width:15px">이름</th>
					<th style="width:15px">직무</th>
					<th style="width:25px">부서명</th>
					<th style="width:15px"></th>
				</tr>
				<c:forEach var="emp" items="${dList }">
					<tr>
						<td>${emp.eName}</td>
						<td>${emp.job }</td>
						<td><input class="dname" type="text" name="${emp.deptno }" value="${emp.dName }" ></td>
						<td><button class="btn-xs btn-primary btndelete" type="button" id="${emp.empNo }">수정</button></td>
					</tr>
				</c:forEach>
			</table>
			<form id="frm" action="/emp/dnameUpdate" method="post">
				<input type="hidden" id="send_dname" name="dname" />
				<input type="hidden" id="send_deptno" name="deptno" />
			</form>
		</div>
	</div>
</div>
</body>
<!-- 자바스크립트 시작 -->
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<!-- 자바스크립트 끝 -->
<script>
$(document).ready(function(){
	
	$(".dname").click(function(){
		var dname = $(this).val();
		var deptno = $(this).attr("name");
		//alert(dname+":"+deptno);
		
		$("#send_dname").val(dname);
		$("#send_deptno").val(deptno);
	})
	
	$(".btndelete").click(function(){
		
		$("#frm").submit();
	})
})
</script>
</html>