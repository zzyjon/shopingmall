<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="box">
<form id="frmSeach" action="/emp/SearchResult" method="get" class="sidebar-form">
	<div class="col-sm-6 pull-right">
		<select id="searchType">
			<option value="job">직무</option>
			<option value="dname">부서명</option>
		</select> 
		<input type="text" id="searchWord" name="searchWord" class="input-sm"> 
		<button type="button" name="search" id="search-btn"
			class="btn-xs">
			<i class="fa fa-search">검색</i>
		</button>
	</div>
</form>
<table class="table">
<tr>
<th>이름</th>
<th>직무</th>
<th>부서명</th>
</tr>
<c:forEach var="emp" items="${list }">
<tr>
<td>${emp.ename }</td>
<td>${emp.job }</td>
<td>${emp.dname }</td>
</tr>
</c:forEach>

</table>
</div>
</body>
<!-- 자바스크립트 시작 -->
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<!-- 자바스크립트 끝 -->
</html>