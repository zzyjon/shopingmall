<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>브랜드관리</title>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<!-- css 끝 -->
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- 해더파일 시작 -->
		<%@ include file="/WEB-INF/views/include/header.jsp"%>
		<!-- 해더파일 끝 -->
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<!-- 왼쪽 유저 패널 시작 -->
				<%@ include file="/WEB-INF/views/include/user_panel.jsp"%>
				<!-- 왼쪽 유저 패널 끝 -->
				<!-- search form -->
				<!-- 검색폼 시작 -->
				<%@ include file="/WEB-INF/views/include/search_form.jsp"%>
				<!-- 검색폼 끝 -->
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<!-- 왼쪽 메뉴 시작 -->
				<%@ include file="/WEB-INF/views/include/left_menu/product_menu.jsp"%>
				<!-- 왼쪽 메뉴 끝 -->
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					상품등록 <small>상품등록하세요</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">product</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">상품 검색</h3>
						<small>상품을 검색하세요</small>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-md-1">
								<div class="form-group">
									<select class="form-control select2" style="width: 120%;">
										<option value="pCode">상품코드</option>
										<option value="pName">상품명</option>
										<option value="pPrice">상품가격</option>
										<option value="pMaterial">소재</option>
										<option value="pBrand">브랜드</option>
										<option value="pMaker">제조사</option>
									</select>
								</div>
							</div>
							<!-- /.col -->
							<div class="col-md-2 col-xs-10">
								<div class="form-group">
									<input type="text" id="SearchWord" name="SearchWord"
										class="form-control">
								</div>
							</div>
							<div class="col-md-2 col-xs-2">
								<div class="form-group">
									<button type="button" id="btnSearch" class="btn btn-primary">검색</button>
								</div>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">상품 목록</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="example2" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th>상품코드</th>
											<th>상품명</th>
											<th>브랜드</th>
											<th>제조사</th>
											<th>상품가격</th>
											<th>재고량</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="product" items="${productList}">
										<tr>
											<td>${product.pCode }</td>
											<td>${product.pName }</td>
											<td>${product.pBrand }</td>
											<td>${product.pMaker }</td>
											<td>${product.pPrice }</td>
											<td>${product.pStock }</td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.box-body -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Control Sidebar 오른쪽 설정버튼 시작  -->
		<%@ include file="/WEB-INF/views/include/sidebar_menu.jsp"%>
		<!-- /.control-sidebar 오른쪽 설정버튼 끝 -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->
	<!-- 자바스크립트 시작 -->
	<%@ include file="/WEB-INF/views/include/js.jsp"%>
	<!-- 자바스크립트 끝 -->
	<script>
		$(function() {
			/*
			 테이블 관련 함수
			paging : 테이블 페이징
			lengthChange : 뿌려질 데이터 행 갯수
			searching : 통합검색 기능
			ordering : 정렬하기
			info : 전체 행 갯수 표시
			autoWidth : 자동 너비 조절 기능
			 */
			$('#example2').DataTable({
				'paging' : true,
				'lengthChange' : true,
				'searching' : true,
				'ordering' : true,
				'info' : true,
				'autoWidth' : true
			})
		})
	</script>
</body>
<!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!-- 푸터 끝 -->
</html>
