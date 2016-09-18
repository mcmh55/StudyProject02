<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<!-- css -->
<link rel="stylesheet" type="text/css" href="css/bootswatch.css"/>
<link rel="stylesheet" type="text/css" href="css/custom.css"/>
<!-- // css -->

<!-- script -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- // script -->

<title>개인 프로젝트</title>

</head>
<body>

<div class="login_background">
<div class="login_wrap" align="center">
<div class="login_box">
		
	<form id="frm_login">
	
	<!-- 아이디 입력 -->
	<div class="form-group" align="left" style="margin: 5px 30px;">
		<label class="control-label" for="focusedInput" style="margin: 0px;">Input ID</label>
	</div>
	
	<div class="form-group" style="margin: 10px 10px;">
		<input type="text" name="member_id" class="form-control" size="50" maxlength="20" />
	</div>
	<!-- // 아이디 입력 -->
	
	<!-- 비밀번호 입력 -->
	<div class="form-group" align="left" style="margin: 5px 30px;">
		<label class="control-label" for="focusedInput" style="margin: 0px;">Input Password</label>
	</div>
	
	<div class="form-group" style="margin: 10px 10px;">
		<input type="password" name="member_pw" class="form-control" size="50" maxlength="20" />
	</div>
	<!-- // 비밀번호 입력 -->
	
	<!-- 아이디, 비밀번호 찾기 -->
	<div align="right" style="margin-bottom: 20px; margin-right: 10px;">
		<!-- <a href="#" style="color: #323232; font-weight: bold;">아이디, 비밀번호를 잊어버리셨습니까?</a> -->
	</div>
	<!-- // 아이디, 비밀번호 찾기 -->
	
	<!-- 로그인, 회원가입 버튼 -->
	<span style="margin: 0px 20px;">
		<input type="button" id="btn_login" class="btn btn-primary btn-lg" value="로그인" style="font-size: 14pt;" />
		
		<!-- 숨김 -->
		<input type="button" id="btn_login_modal" data-toggle="modal" data-target="#login_popup" />
	</span>
	<span style="margin: 0px 20px;">
		<input type="button" id="btn_join" class="btn btn-primary btn-lg" value="회원가입" style="font-size: 14pt;"
		data-toggle="modal" data-target="#join_popup" />
	</span>
	<!-- // 로그인, 회원가입 버튼 -->
	
	</form>
</div>
</div>
</div>

<div>
	<jsp:include page="join.jsp"/>
</div>

<!-- 로그인 확인 안내(Modal 방식) -->
<div class="modal fade" id="login_popup" tabindex="-1" role="dialog"
aria-labelledby="myModalLabel" data-keyboard="true">
<div id="login_modal" class="modal-dialog" role="document" style="width: 600px;">
<div class="modal-content">
<div class="modal-body" style="padding: 20px auto;">
	<div style="text-align: center; font-size: 14pt; font-weight: bold;">아이디 또는 비밀번호를 다시 확인해주세요.</div>
</div>
<div class="modal-footer" style="text-align: center;">
	<button type="button" id="frm_join_close" class="btn btn-default" 
	data-dismiss="modal" style="font-size: 12pt;">닫기</button>
</div>
</div>
</div>
</div>

<script type="text/javascript">

$('#btn_login_modal').hide();

$('#btn_login').click( function() {
	var params = $('#frm_login').serialize();
	
	$.ajax({
		url: "loginAction.do",
		type: "POST",
		data: params,
		success: function(result) {
			
			if ( result.message == "0" )	{
				$('#login_modal').css('margin-top', ($(window).height() / 2) - 100);
				$('#btn_login_modal').click();
				
			} else if ( result.message == "1" ) {
				location.href = "member_active.do";
				
			} else if ( result.message == "2" ) {
				location.href = "board_list.do";
				
			} else {
				alert("잠시 후 다시 시도해주세요.");
			}
		},
		error: function(result) {
			alert("잠시 후 다시 이용해주세요.");
		}
	});
});

</script>

</body>
</html>