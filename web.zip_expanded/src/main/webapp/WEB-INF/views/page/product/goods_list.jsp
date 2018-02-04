<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>상품목록</title>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<style>
.example-modal .modal {
	position: relative;
	top: auto;
	bottom: auto;
	right: auto;
	left: auto;
	display: block;
	z-index: 1;
}

.example-modal .modal {
	background: transparent !important;
}
</style>
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
											<th style="width: 7%"></th>
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
												<td>
													<button type="button" class="btn-xs btn btn-modify"
														data-pNo="${product.pNo}">수정</button>
													<button type="button" class="btn-xs btn btn-delete"
														data-pNo="${product.pNo}">삭제</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									<ul class="pagination">
									<c:if test="${currPage > 1 }">
										<li><a href="/page/product/goods_list?currPage=${currPage -1}">
											[이전] </a></li>
									</c:if>
									<c:forEach var="i" begin="${startPageNum}" end="${lastPageNum}">
										<li>
											<a href="/page/product/goods_list?currPage=${i}"> 
											<c:choose>
												<c:when test="${i eq currPage}">
													<b>[${i}]</b>
												</c:when>
												<c:otherwise>
														[${i}]
												</c:otherwise>
											</c:choose>
											</a>
										</li>
									</c:forEach>
									<c:if test="${currPage < totalPage }">
										<a href="/page/product/goods_list?currPage=${currPage +1}">
											[다음] </a>
									</c:if>
									</ul>
								</table>
							</div>

							<!-- modal-content -->
							<div class="modal fade">
								<div class="modal-dialog modal-lg">
									<div class="modal-content"></div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- /.modal -->

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

	<!-- 자바스크립트 시작 -->
	<%@ include file="/WEB-INF/views/include/js.jsp"%>
	<!-- 자바스크립트 끝 -->

	<script>
		$(function() {
			$(".btn-modify").click(function() {
				$('div.modal').modal({
					remote : 'goods_modal.jsp'
				});
			})
		})

		$(function() {
			/*selectbox 색상 선택시 값이 input으로 들어가는 기능 */
			$("#selectColor")
					.on(
							"change",
							function() {
								var selectColor = $(this)
										.find(
												"option[value='"
														+ $(this).val() + "']")
										.text();
								$("#pColor").val(selectColor);
							});

			/*selectbox 소재 선택시 값이 input으로 들어가는 기능 */
			$("#selectMaterial")
					.on(
							"change",
							function() {
								var selectMaterial = $(this)
										.find(
												"option[value='"
														+ $(this).val() + "']")
										.text();
								$("#pMaterial").val(selectMaterial);
							});

			/*selectbox 제조사 선택시 값이 input으로 들어가는 기능 */
			$("#selectMaker")
					.on(
							"change",
							function() {
								var selectMaker = $(this)
										.find(
												"option[value='"
														+ $(this).val() + "']")
										.text();
								$("#pMaker").val(selectMaker);
							});

			/*selectbox 브랜드 선택시 값이 input으로 들어가는 기능 */
			$("#selectBrand")
					.on(
							"change",
							function() {
								var selectBrand = $(this)
										.find(
												"option[value='"
														+ $(this).val() + "']")
										.text();
								$("#pBrand").val(selectBrand);
							});
		})

		$(document).ready(function() {

			/*상품 삭제 */
			$(".btn-delete").click(function() {
				/* var testPno = $(this).attr("data-pNo");
				alert(testPno); */

				if (confirm("정말 삭제할건가요?")) {

					$.ajax({
						url : "/page/product/del",
						type : "post",
						data : "pNo=" + $(this).attr("data-pNo"),
						success : function(msg) {
							alert("삭제 완료");
							location.reload();
						},
						error : function(msg) {
							alert("에러");
						}
					})
				}
			})

			/*상품 수정*/
			$(".btnApply").click(function() {

				var str = $(".${product.pNo}").serialize();

				alert(str);

				var testPno = $(this).attr("data-pNo");
				alert(testPno);

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
				}

				$.ajax({
					url : "/page/product/modify",
					type : "get",
					data : {
						"pPrice" : pPrice,
						"pName" : pName,
						"pBrand" : pBrand,
						"pStock" : pStock,
						"pColor" : pColor,
						"pSize" : pSize,
						"pMaterial" : pMaterial,
						"pMaker" : pMaker,
						"pDesc" : pDesc,
						"pCouponUseCheck" : pCouponUseCheck,
						"pNo" : testPno
					},
					success : function(msg) {
						alert("수정 완료");
						location.reload();
					},
					error : function(msg) {
						console.log(msg);
						alert("에러");
					}
				})

			})

		})
	</script>
</body>
<!-- 푸터 시작 -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!-- 푸터 끝 -->
</html>
