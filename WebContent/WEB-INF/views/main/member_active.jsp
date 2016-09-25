<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE>
<html>
<head>

<link rel="stylesheet" type="text/css" href="css/bootswatch.css"/>
<link rel="stylesheet" type="text/css" href="css/custom.css"/>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<title>회원 인증</title>
</head>
<body>

<jsp:include page="/WEB-INF/views/common/checkLogin.jsp" />

<div class="login_background">
<div class="login_wrap" align="center">
<div class="login_box">
	<c:set var="member" value="${ sessionScope.loginMember }"></c:set>
	
	<c:choose>
	
	<c:when test="${ active == 'true' }">
		<div style="font-size: 12pt; font-weight: bold;">
			회원 인증이 완료되었습니다.
		</div>
		<br/>
		<span>
			<input type="button" id="email_active_send" class="btn btn-primary" value="입장"
			style="font-size: 12pt;" />
		</span>
	</c:when>
	
	<c:when test="${ member.member_active == 0 }">
		<div style="font-size: 12pt; font-weight: bold;">
			발송된 인증 이메일에서 링크를 클릭하여 회원 인증을 해주세요.
		</div>
		<br/>
		<span>
			<input type="button" id="email_active_send" class="btn btn-primary" value="인증 이메일 발송"
			style="font-size: 12pt;" />
		</span>
		<span>
			<input type="button" id="btn_logout" class="btn btn-default" value="로그아웃" style="font-size: 12pt;" />
		</span>
	</c:when>
	
	<c:otherwise>
		active: ${ active }
	</c:otherwise>
	</c:choose>
	
	<form id="frm_email_send">
		<input type="hidden" name="member_id" value="${ member.member_id }" />
	</form>
	
</div>
</div>
</div>

<script type="text/javascript">

$(document).ready(function() {
	$('#email_active_send').click(function() {
		
		$(this).val("발송중...").attr('disabled', true);
		
		$.ajax({
			url: "emailSendAction.do",
			type: "POST",
			data: $('#frm_email_send').serialize(),
			success: function(result) {
				$('#email_active_send').val("인증 이메일 발송").attr('disabled', false);
				alert("인증 이메일이 발송되었습니다.");
			},
			error: function(result) {
				alert("잠시 후 다시 이용해주세요.");
			}
		});
	});
});


</script>

</body>
</html>