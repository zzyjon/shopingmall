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
<div class="col-sm-4">
	<div class="box">
		<div class="box-header">
			<h3 class="box-title">회원 목록</h3>
		</div>
			<div class="box-body table-responsive no-padding">
			<table class="table table-hover">
				<tr>
					<th style="width:15px">번호</th>
					<th style="width:15px">아이디</th>
					<th style="width:25px">이름</th>
				</tr>
				<c:forEach var="emp" items="${list }">
					<tr>
						<td>${emp.mNo}</td>
						<td>${emp.mId }</td>
						<td>${emp.mName }</td>
					</tr>
				</c:forEach>
					<c:if test="${currPage > 1 }">
						<a href="/member/membersPaging?currPage=${currPage -1}"> [이전] </a>
					</c:if>
					<c:forEach var="i" begin="${startPageNum}"
						end="${lastPageNum}">
						<a href="/member/membersPaging?currPage=${i}"> 
							<c:choose>
								<c:when test="${i eq currPage}">
									<b>[${i}]</b>
								</c:when>
								<c:otherwise>
										[${i}]
								</c:otherwise>
							</c:choose>
						</a>
					</c:forEach>
					<c:if test="${currPage < totalPage }">
						<a href="/member/membersPaging?currPage=${currPage +1}"> [다음] </a>
					</c:if>
				</table>
		</div>
	</div>
</div>
</body>
<!-- 자바스크립트 시작 -->
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<!-- 자바스크립트 끝 -->
</html>