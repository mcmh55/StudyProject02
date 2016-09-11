<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
		
			<form method="POST">
			
			<!-- 아이디 입력 -->
			<div class="form-group" align="left" style="margin: 5px 30px;">
				<label class="control-label" for="focusedInput" style="margin: 0px;">Input ID</label>
			</div>
			
			<div class="form-group" style="margin: 10px 10px;">
				<input name="member_id" class="form-control" type="text" size="50" maxlength="20" />
			</div>
			<!-- // 아이디 입력 -->
			
			<!-- 비밀번호 입력 -->
			<div class="form-group" align="left" style="margin: 5px 30px;">
				<label class="control-label" for="focusedInput" style="margin: 0px;">Input Password</label>
			</div>
			
			<div class="form-group" style="margin: 10px 10px;">
				<input name="member_pw" class="form-control" type="text" size="50" maxlength="20" />
			</div>
			<!-- // 비밀번호 입력 -->
			
			<!-- 아이디, 비밀번호 찾기 -->
			<div align="right" style="margin-bottom: 20px; margin-right: 10px;">
				<a href="#" style="color: #323232; font-weight: bold;">아이디, 비밀번호를 잊어버리셨습니까?</a>
			</div>
			<!-- // 아이디, 비밀번호 찾기 -->
			
			<!-- 로그인, 회원가입 버튼 -->
			<span style="margin: 0px 20px;">
				<input type="button" id="btn_login" class="btn btn-primary btn-lg" value="로그인" />
			</span>
			<span style="margin: 0px 20px;">
				<input type="button" id="btn_join" class="btn btn-primary btn-lg" value="회원가입" 
				data-toggle="modal" data-target="#join_popup" />
			</span>
			<!-- // 로그인, 회원가입 버튼 -->
			
			</form>
		</div>
	</div>
</div>

<div id="test">
<jsp:include page="join.jsp"/>
</div>

<!-- 
<script type="text/javascript">

$('#_btn_login').click( function() {
});

</script>
-->
</body>
</html>