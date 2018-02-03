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
			<form id="frmSearch" action="/emp/searchEmpResult" method="get" class="sidebar-form">
				<div class="col-sm-6 pull-right">
					<select id="searchType" name="searchType">
						<option value="job">직무</option>
						<option value="dname">부서명</option>
					</select> 
					<input type="text" id="searchWord" name="searchWord" class="input-sm"> 
					<button type="button" id="search-btn"
						class="btn-xs">
						<i class="fa fa-search">검색</i>
					</button>
				</div>
			</form>

			<div class="box-body table-responsive no-padding">
			<table class="table table-hover">
				<tr>
					<th style="width:15px">이름</th>
					<th style="width:15px">직무</th>
					<th style="width:25px">부서명</th>
					<th style="width:15px"></th>
				</tr>
				<c:forEach var="emp" items="${list }">
					<tr>
						<td>${emp.ename}</td>
						<td>${emp.job }</td>
						<td><input class="userDname" type="text" id="${emp.empno }" value="${emp.dname }" ></td>
						<td><button class="btn-xs btn-primary btndelete" type="button" onclick="doModify(${emp.deptno},${emp.empno })">수정</button></td>
					</tr>
				</c:forEach>
			</table>
			<form id="frm" action="/emp/updateDname" method="post">
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
	function doModify(deptno, empno) {
		var dname = $("#"+empno).val();  // dname에 #userDname의 text값이 저장됨
		//var dname = $(".userDname").attr();
		
		$("#send_dname").val(dname);	// 
		$("#send_deptno").val(deptno);
		
		alert(deptno+" & "+dname);
		
		$("#frm").submit();
	}
	
	$(document).ready(function(){
		$("#search-btn").click(function(){
			
			var searchType = $("#searchType").val();
			var searchWord = $("#searchWord").val();
			
			alert(searchType +" & "+ searchWord);
			
			if(searchWord == ""){
				alert("검색어를 입력해주세요");
				$("#searchWord").focus();
			}else{
				$("#frmSearch").submit();
			}
		})
		
		
		
	})
</script>
</html>