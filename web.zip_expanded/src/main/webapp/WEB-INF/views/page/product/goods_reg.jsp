<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>상품등록</title>
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
						<h3 class="box-title">상품 카테고리 분류</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-md-2">
								<div class="form-group">
									<label>1차 분류</label> <select class="form-control select2"
										style="width: 100%;">
										<c:forEach var="category" items="${categoryList}">
											<option value="${category.pParents }">${category.pName}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<!-- /.col -->
							<div class="col-md-2">
								<div class="form-group">
									<label>2차 분류</label> <select class="form-control select2"
										style="width: 100%;">
										<option selected="selected">맨투맨</option>
										<option>셔츠</option>
										<option>반팔</option>
									</select>
								</div>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
				<form id="frm" action="/page/product/goods_reg" method="post">
					<div class="box box-danger">
						<div class="box-header with-border">
							<h3 class="box-title">상품기본정보</h3>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pName" class="col-md-2 control-label">상품명</label>
										<input type="text" class="col-md-4 form-control" id="pName"
											name="pName" placeholder="상품명">
									</div>
								</div>
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pCode" class="col-md-2 control-label">상품코드</label>
										<input type="text" class="form-control" id="pCode"
											name="pCode" placeholder="자동생성">
									</div>
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pPrice" class="col-md-2 control-label">가격</label>
										<input type="text" class="form-control" id="pPrice"
											name="pPrice" placeholder="가격">
									</div>
								</div>
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pBrand" class="col-md-2 control-label">브랜드</label>
										<input type="text" class="col-md-4 form-control" id="pBrand"
											name="pBrand" placeholder="브랜드를 선택해주세요">

										<div class="col-md-7">
											<select id="selectBrand" class="form-control select2"
												style="width: 50%;">
												<option selected>목록에서 선택</option>
												<c:forEach var="brand" items="${brandList}">
													<option value="${brand.brandNo }">${brand.brandName}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pStock" class="col-md-2 control-label">재고</label>
										<input type="text" class="form-control" id="pStock"
											name="pStock" placeholder="재고">
									</div>
								</div>
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pColor" class="col-md-2 control-label">색상</label>
										<input type="text" id="pColor" name="pColor"
											class="col-md-4 form-control" placeholder="색상을 선택해주세요">

										<div class="col-md-7">
											<select id="selectColor" class="form-control select2"
												style="width: 50%;">
												<option selected="selected">직접입력</option>
												<option value="black">black</option>
												<option value="blue">blue</option>
												<option value="red">red</option>
												<option value="yellow">yellow</option>
												<option value="white">white</option>
												<option value="brown">brown</option>
												<option value="green">green</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pSize" class="col-md-2 control-label">사이즈</label>
										<input type="text" class="col-md-4 form-control" id="pSize"
											name="pSize" placeholder="사이즈를 입력 해주세요">
										<div class="col-md-7">
											<div class="box-body">
												<p class="text-muted">사이즈는 콤마로 구분 해주세요 ex) S,M,L</p>
											</div>
										</div>
									</div>
								</div>
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pMaterial" class="col-md-2 control-label">소재</label>
										<input type="text" class="col-md-4 form-control"
											id="pMaterial" name="pMaterial" placeholder="소재를 선택해주세요">

										<div class="col-md-7">
											<select id="selectMaterial" class="form-control select2"
												style="width: 50%;">
												<option selected="selected">직접입력</option>
												<option value="01">면</option>
												<option value="02">가죽</option>
												<option value="03">폴리</option>
												<option value="04">인조가죽</option>
												<option value="05">데님</option>
												<!-- 01:면 , 02:가죽, 03:폴리, 04:인조가죽, 05:데님 -->
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pMaker" class="col-md-2 control-label">제조사</label>
										<input type="text" class="col-md-4 form-control" id="pMaker"
											name="pMaker" placeholder="제조사를 선택해주세요">

										<div class="col-md-7">
											<select id="selectMaker" class="form-control select2"
												style="width: 50%;">
												<option selected="selected">직접입력</option>
												<option value="01">용신</option>
												<option value="02">화랑</option>
												<option value="03">신성통상</option>
												<option value="04">제일모직</option>
												<!-- 01:용신 , 02:화랑, 03:신성통상, 04:제일모직  -->
											</select>
										</div>
									</div>
								</div>
								<div class="form-inline">
									<div class="col-md-6">
										<label for="pCouponUseCheck" class="col-md-2 control-label">쿠폰적용여부</label>
										<input type="checkbox" class="minimal" id="pCouponUseCheck"
											name="pCouponUseCheck" value="Y">
									</div>
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inlie">
									<div class="col-md-10">
										<label for="pDesc" class="col-md-2 control-label">간단설명</label>
										<input type="text" class="form-control" id="pDesc"
											name="pDesc" placeholder="간단한 상품설명을 입력해주세요">
									</div>
								</div>
							</div>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="form-inline">
									<div class="col-md-6">
										<label for="exampleInputFile" class="col-md-2 control-label">이미지
											업로드</label> <input type="file" id="exampleInputFile">
									</div>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
				</form>

				<div class="form-group">
					<div class="col-md-6">
						<button type="button" id="btnSubmit" class="btn btn-primary">등록</button>
					</div>
				</div>
				<!-- /.box -->

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

</body>
<!-- 자바스크립트 시작 -->
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<script src="/resources/include/product.js"></script>
<script>
	$(function() {
		$("#selectColor").on(
				"change",
				function() {
					var selectColor = $(this).find(
							"option[value='" + $(this).val() + "']")
							.text();
					$("#pColor").val(selectColor);
				});
	
		/*selectbox 소재 선택시 값이 input으로 들어가는 기능 */
		$("#selectMaterial").on(
				"change",
				function() {
					var selectMaterial = $(this).find(
							"option[value='" + $(this).val() + "']")
							.text();
					$("#pMaterial").val(selectMaterial);
				});
		
		/*selectbox 제조사 선택시 값이 input으로 들어가는 기능 */
		$("#selectMaker").on(
				"change",
				function() {
					var selectMaker = $(this).find(
							"option[value='" + $(this).val() + "']")
							.text();
					$("#pMaker").val(selectMaker);
				});
		
		/*selectbox 브랜드 선택시 값이 input으로 들어가는 기능 */
		$("#selectBrand").on(
				"change",
				function() {
					var selectBrand = $(this).find(
							"option[value='" + $(this).val() + "']")
							.text();
					$("#pBrand").val(selectBrand);
				});
	})

	$(document).ready(function() {

		$("#btnSubmit").click(function() {
			var pCode = $("#pCode").val();
			var pPrice = $("#pPrice").val();
			var pName = $("#pName").val();
			var pBrand = $("#pBrand").val();
			var pStock = $("#pStock").val();
			var pColor = $("#pColor").val();
			var pSize = $("#pSize").val();
			var pMaterial = $("#pMaterial").val();
			var pMaker = $("#pMaker").val();
			var pDesc = $("#pDesc").val();
			var pCouponUseCheck = $("#pCouponUseCheck").val();

			if (pName == "") {
				alert("상품명을 입력해주세요");
			} else if (pPrice == "") {
				alert("상품가격을 입력해주세요");
			} else if (pBrand == "") {
				alert("브랜드를 입력해주세요");
			} else if (pSize == "") {
				alert("사이즈를 입력해주세요");
			} else if (pMaterial == "") {
				alert("소재를 입력해주세요");
			} else if (pMaker == "") {
				alert("제조사를 입력해주세요");
			} else {
				$("#frm").submit();
				alert("상품등록 성공");
			}

			//alert(pCode+" : "+pPrice+" : "+ pPrice+" : "+ pBrand+" : "+ pStock+" : "+ pColor+" : "+ pSize +" : "+pMateial +" : "+pMaker +" : "+pDesc);	

			//alert(pMaterial+" , "+pMaker);

			//$("#frm").submit();

		})
	})
</script>
<!-- 자바스크립트 끝 -->
<!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!-- 푸터 끝 -->
</html>
