<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<h4 class="modal-title">상품 수정</h4>
</div>
<div class="modal-body">
	<form action="/page/product/modify" class="${product.pNo}">
		<div class="col-md-6">
			<div class="form-group">
				<label for="pName" class="control-label">상품명:</label> <input
					type="text" class="form-control" id="pName" name="pName"
					value="${product.pName }" placeholder="상품명">
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label for="pCode" class="control-label">상품코드:</label> <input
					type="text" class="form-control" id="pCode" name="pCode"
					value="${product.pCode }" placeholder="자동생성">
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label for="pPrice" class="control-label">가격:</label> <input
					type="text" class="form-control" id="pPrice" name="pPrice"
					value="${product.pPrice }" placeholder="가격">
			</div>
		</div>
		<div class="form-group col-md-6">
			<label for="pBrand" class="control-label">브랜드:</label>
			<div class="form-inline">
				<input type="text" class="form-control" id="pBrand" name="pBrand"
					value="${product.pBrand }" placeholder="브랜드를 선택해주세요"> <select
					id="selectBrand" class="form-control select2" style="width: 50%;">
					<option selected>목록에서 선택</option>
					<c:forEach var="brand" items="${brandList}">
						<option value="${brand.brandNo }">${brand.brandName}</option>
					</c:forEach>
				</select>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label for="pStock" class="control-label">재고:</label> <input
					type="text" class="form-control" id="pStock" name="pStock"
					value="${product.pStock }" placeholder="재고">
			</div>
		</div>
		<div class="form-group col-md-6">
			<label for="pColor" class="control-label">색상:</label>
			<div class="form-inline">
				<input type="text" id="pColor" name="pColor"
					value="${product.pColor }" class="form-control"
					placeholder="색상을 선택해주세요"> <select id="selectColor"
					class="form-control select2" style="width: 50%;">
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
		<div class="col-md-6">
			<div class="form-group">
				<label for="pSize" class="control-label">사이즈:</label><small
					class="text-center">사이즈는 콤마로 구분 해주세요 ex) S,M,L</small> <input
					type="text" class="form-control" id="pSize" name="pSize"
					value="${product.pSize }" placeholder="사이즈를 입력 해주세요">

			</div>
		</div>
		<div class="form-group col-md-6">
			<label for="pMaterial" class="control-label">소재:</label>
			<div class="form-inline">
				<input type="text" class="form-control" id="pMaterial"
					name="pMaterial" value="${product.pMaterial }"
					placeholder="소재를 선택해주세요"> <select id="selectMaterial"
					class="form-control select2" style="width: 50%;">
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
		<div class="form-group col-md-6">
			<label for="pMaker" class="control-label">제조사:</label>
			<div class="form-inline">
				<input type="text" class="form-control" id="pMaker" name="pMaker"
					value="${product.pMaker }" placeholder="제조사를 선택해주세요"> <select
					id="selectMaker" class="form-control select2" style="width: 50%;">
					<option selected="selected">직접입력</option>
					<option value="01">용신</option>
					<option value="02">화랑</option>
					<option value="03">신성통상</option>
					<option value="04">제일모직</option>
					<!-- 01:용신 , 02:화랑, 03:신성통상, 04:제일모직  -->
				</select>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				<label for="pCouponUseCheck" class="control-label">쿠폰적용여부:</label> <input
					type="checkbox" class="minimal" id="pCouponUseCheck"
					name="pCouponUseCheck" value="${product.pCouponUseCheck }">
			</div>
		</div>

		<div class="box-body">
			<div class="row">
				<div class="form-inlie">
					<div class="col-md-10">
						<label for="pDesc" class="control-label">간단설명:</label> <input
							type="text" class="form-control" id="pDesc" name="pDesc"
							value="${product.pDesc }" placeholder="간단한 상품설명을 입력해주세요">
					</div>
				</div>
			</div>
		</div>
		<div class="box-body">
			<div class="row">
				<div class="form-group">
					<div class="col-md-6">
						<label for="exampleInputFile" class="control-label">이미지
							업로드</label> <input type="file" id="exampleInputFile">
					</div>
				</div>
			</div>
		</div>
		<!-- /.box-body -->
	</form>
</div>
<div class="modal-footer">
	<button type="button" class="btn btn-default pull-left"
		data-dismiss="modal">취소</button>
	<button type="button" data-pNo="${product.pNo }"
		class="btn btn-primary btnApply">수정</button>
</div>
