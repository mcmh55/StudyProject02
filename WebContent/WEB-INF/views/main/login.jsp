<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
<head>

<!-- css -->
<link rel="stylesheet" type="text/css" href="css/custom.css"/>
<link rel="stylesheet" type="text/css" href="css/bootswatch.css"/>
<!-- // css -->

<title>개인 프로젝트</title>

</head>
<body>

<div class="login_background">
	<div class="login_wrap" align="center">
		<div class="login_box">
		
			<form action="" method="POST">
			
			<!-- 아이디 입력 -->
			<div class="form-group" align="left" style="margin: 5px 30px;">
				<label class="control-label" for="focusedInput" style="margin: 0px;">Input ID</label>
			</div>
			
			<div class="form-group" style="margin: 10px 10px;">
				<input name="member_id" class="form-control" type="text" size="50" maxlength="20"/>
			</div>
			<!-- // 아이디 입력 -->
			
			<!-- 비밀번호 입력 -->
			<div class="form-group" align="left" style="margin: 5px 30px;">
				<label class="control-label" for="focusedInput" style="margin: 0px;">Input Password</label>
			</div>
			
			<div class="form-group" style="margin: 10px 10px;">
				<input name="member_pw" class="form-control" type="text" size="50" maxlength="20"/>
			</div>
			<!-- // 비밀번호 입력 -->
			
			<!-- 아이디, 비밀번호 찾기 -->
			<div align="right" style="margin-bottom: 20px; margin-right: 10px;">
				<a href="#" style="color: #323232; font-weight: bold;">아이디, 비밀번호를 잊어버리셨습니까?</a>
			</div>
			<!-- // 아이디, 비밀번호 찾기 -->
			
			<!-- 로그인, 회원가입 버튼 -->
			<span style="margin: 0px 20px;">
				<input type="button" class="btn btn-primary btn-lg" value="로그인"/>
			</span>
			<span style="margin: 0px 20px;">
				<input type="button" class="btn btn-primary btn-lg" value="회원가입"/>
			</span>
			<!-- // 로그인, 회원가입 버튼 -->
			
			</form>
		</div>
	</div>
</div>

</body>
</html>