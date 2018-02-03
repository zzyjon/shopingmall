<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>이력서</title>
<!-- css 시작 -->
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<!-- css 끝 -->
</head>
<body>
	<div class="content-wrapper">
		<section class="content-header">
			<h1>이력서 작성</h1>
		</section>

		<section class="Content">
			<form id="frm" action="/resume/procApply" method="post" enctype="multipart/form-data">
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">상세정보 입력</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="form-group">
								<div class="col-xs-2">
									<img id="userImg" name="userImg" src="/resources/dist/img/user2-160x160.jpg" style="width:80px; height:80px;"><input type="file"
									 name="file">
								</div>
								<label for="userName" class="col-xs-1 control-label">이름</label>
								<div class="col-xs-1">
									<input type="text" class="form-control" id="userName"
										name="userName" placeholder="이름을 입력해주세요">
								</div>
								<label for="userSal" class="col-xs-1 control-label">희망연봉</label>
								<div class="col-xs-1">
									<input type="text" class="form-control" id="userSal"
										name="userSal" placeholder="희망연봉을 입력해주세요">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label for="userAddress" class="col-xs-1 control-label">주소</label>
								<div class="col-xs-5">
									<input type="text" class="form-control" id="userAddress"
										name="userAddress" placeholder="주소를 입력해주세요">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label for="userFavorite" class="col-xs-1 control-label">특기</label>
								<div class="col-xs-2">
									<input type="text" class="form-control" id="userFavorite"
										name="userFavorite" placeholder="특기를 입력해주세요">
								</div>
								<label for="userHobby" class="col-xs-1 control-label">취미</label>
								<div class="col-xs-2">
									<input type="text" class="form-control" id="userHobby"
										name="userHobby" placeholder="취미를 입력해주세요">
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<label for="userIntro" class="col-xs-1 control-label">자기소개</label>
								<div class="col-xs-5">
									<textarea class="form-control" rows="10" id="userIntro"
										name="userIntro" placeholder="자유롭게 자기소개를 적어주세요"></textarea>
								</div>
							</div>
						</div>
					</div>
					<button type="button" class="btn btn-primary" id="btnApply">등록</button>
				</div>
			</form>
		</section>
	</div>
</body>
<!-- 자바스크립트 시작 -->
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<script>

// 등록한 이미지가 바로 보이는 기능 
function readURL(input){
	if(input.files && input.files[0]){
		var reader = new FileReader();
		reader.onload = function(e){
			$("#userImg").attr('src', e.target.result);
		}
		
		reader.readAsDataURL(input.files[0]);
	}
}

$(document).ready(function(){
	
	$("#userImg").change(function(){
		readURL(this);
	})
	
	$("#btnApply").click(function(){
		var userImg = $("#userImg").attr('src');
		var userName = $("#userName").val();
		var userSal = $("#userSal").val();
		
		alert(userImg);
		
		/* 
		if(userImg == ""){
			alert("사진을 등록해주세요");
			return false;
		}else if(userName == ""){
			alert("이름을 입력해주세요");
			return false;
		}else if(userSal == ""){
			alert("연봉을 입력해주세요");
			return false;
		}
		 */
		 
		$("#frm").submit();
		
	})
})
</script>
<!-- 자바스크립트 끝 -->
</html>