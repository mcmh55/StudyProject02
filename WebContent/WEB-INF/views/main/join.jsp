<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.Calendar" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!-- script -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<!-- // script -->

<style type="text/css">

th {
	text-align: right;
}

.guide {
	margin-top: 5px;
	font-size: 10pt;
}

</style>

<!-- 회원가입(Modal 방식) -->
<div class="modal fade" id="join_popup" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" data-backdrop="static">
<div class="modal-dialog" role="document" style="width: 700px;">
<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<h3 class="modal-title" id="myModalLabel">회원정보 작성</h3>
	</div>
	<div class="modal-body" style="padding-bottom: 0px;">
		<form id="frm_join">
			<div class="join_wrap">
				<table class="table table-striped" style="width: 100%;">
				<col style="width: 25%;" /><col style="width: 75%;" />
				
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" id="member_id" name="member_id" class="form-control" size="20" maxlength="20" />
						<!-- <input type="button" id="id_cfm" class="btn btn-danger" value="중복체크" data-loading-text="읽는중..." style="font-size: 10pt;" /> -->
						<button type="button" id="id_cfm" class="btn btn-danger" data-loading-text="읽는중..." 
						style="font-size: 10pt;">중복체크</button>
						<br/>
						<div class="text-muted guide">※ 영문 + 숫자 조합 6~12글자</div>
					</td>
				</tr>
				
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" id="member_pw" name="member_pw" class="form-control" size="20" maxlength="20" />
						<br/>
						<div class="text-muted guide">
							※ 영문 소문자 + 영문 대문자 + 숫자 + 특수문자 조합 8~12글자
							<br/>
							※ 사용 가능한 특수문자( ! &quot; # $ % &amp; ' ( ) * + , - . / : ; &lt; = &gt; ? @ [ ] ^ _ ' { | } ~ )
						</div>
					</td>
				</tr>
				
				<tr>
					<th>비밀번호 확인</th>
					<td>
						<input type="password" id="member_pw_confirm" class="form-control" size="20" maxlength="20" />
					</td>
				</tr>
				
				<tr>
					<th>닉네임</th>
					<td>
						<input type="text" id="member_nickname" name="member_nickname" class="form-control" size="20" maxlength="20" />
					</td>
				</tr>
				
				<tr>
					<th>이름</th>
					<td>
						<input type="text" id="member_name" name="member_name" class="form-control" size="20" maxlength="20" />
					</td>
				</tr>
				
				<tr>
					<th>성별</th>
					<td>
						<input type="radio" name="member_sex" value="1" checked="checked" style="margin-right: 5px;" />남
						&nbsp;&nbsp;
						<input type="radio" name="member_sex" value="2" style="margin-right: 5px;" />여
					</td>
				</tr>
				
				<tr>
					<th>생년월일</th>
					<td>
						<% Calendar cal = Calendar.getInstance(); %>
						<c:set var="year" value="<%= cal.get(Calendar.YEAR) %>"/>
						
						<select id="birthday_year" class="form-control" style="margin: 0px;">
							<!-- 만 14세 이상 -->
							<c:forEach var="i" begin="0" end="${ year - 1900 - 14 }">
								<option label="${ (year-14) - i }" value="${ (year-14) - i }"></option>
							</c:forEach>
						</select>
						
						<select id="birthday_month" class="form-control">
							<c:forEach var="i" begin="1" end="12">
								<option label="${ i }" value="${ i }"></option>
							</c:forEach>
						</select>
						
						<select id="birthday_day" class="form-control">
						</select>
					</td>
				</tr>
				
				<tr>
					<th>자택 주소</th>
					<td>
						<div style="margin-bottom: 5px;">
							<input type="text" id="address_postcode" class="form-control" placeholder="우편번호" />
							<input type="button" class="btn btn-default" 
							onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="font-size: 10pt;" />
						</div>
						<div style="margin-bottom: 5px;">
							<input type="text" id="address_road" class="form-control" placeholder="도로명주소" style="width: 100%;" />
						</div>
						<div>
							<input type="text" id="address_jibun" class="form-control" placeholder="지번주소" style="width: 100%;" />
						</div>
						<span id="guide" style="color:#999;"></span>
					</td>
				</tr>
				
				<tr>
					<th>마케팅 수신 동의</th>
					<td>
						<table class="table table-striped table-hover" style="text-align: center; margin: 0px;">
						<tr class="warning">
							<th style="text-align: center">모두 체크</th>
							<th style="text-align: center">Email</th>
							<th style="text-align: center">SMS</th>
							<th style="text-align: center">Phone</th>
						</tr>
						<tr>
							<td>
								<input type="checkbox" id="_check_all" />
							</td>
							<td>
								<input type="checkbox" id="_check_email" name="check_email" />
							</td>
							<td>
								<input type="checkbox" id="_check_sms" name="check_sms" />
							</td>
							<td>
								<input type="checkbox" id="_check_phone" name="check_phone" />
							</td>
						</tr>
						</table>
					</td>
				</tr>
				
				<tr>
					<th>Email</th>
					<td style="vertical-align: top;">
						<input type="text" id="email_id" class="form-control" size="10" maxlength="64" />
						&nbsp;@&nbsp;
						<select id="email_domain_list" class="form-control">
							<option selected="selected">직접 입력</option>
							<option>naver.com</option>
							<option>gmail.com</option>
							<option>hanmail.net</option>
						</select>
						<input type="text" id="email_domain" class="form-control" size="10" maxlength="255" />
					</td>
				</tr>
				
				<tr>
					<th>Phone</th>
					<td>
						<select class="form-control">
							<option id="phone_left" selected="selected">010</option>
							<option>011</option>
							<option>016</option>
							<option>017</option>
							<option>018</option>
							<option>019</option>
						</select>
						-
						<input type="text" id="phone_center" class="form-control" size="5" maxlength="4" />
						-
						<input type="text" id="phone_right" class="form-control" size="5" maxlength="4" />
					</td>
				</tr>
				
				<tr>
					<th>자동 가입 방지</th>
					<td>
						<img src="jcaptcha.jpg" /> 
						<input type="text" name="jcaptcha" class="form-control" value="" />
					</td>
				</tr>
				
				</table>
				
				<input type="hidden" id="member_birthday" name="member_birthday" value="" />
				<input type="hidden" id="member_address" name="member_address" value="" />
				<input type="hidden" id="member_email" name="member_email" value="" />
				<input type="hidden" id="member_phone" name="member_phone" value="" />
				
			</div>
		</form>
	</div>
	<div class="modal-footer" style="text-align: center;">
		<input type="submit" id="join_cfm" class="btn btn-success" 
		value="회원 등록" style="width: 150px; font-size: 12pt;" />
		<button type="button" id="frm_join_close" class="btn btn-default" data-dismiss="modal" style="font-size: 12pt;">닫기</button>
	</div>
</div>
</div>
</div>

<!-- 알림 팝업 -->
<div id="system_alert" class="alert alert-dismissible alert-danger" style="position: absolute;">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try submitting again.
</div>


<!--		script			-->
<!-- 	▼ ▼ ▼ ▼ ▼ ▼	▼ ▼		-->

<script type="text/javascript">

$(document).ready(function() {
	// 생년월일 리스트 설정
	createBirthdayList();
	$('#system_alert').hide();
	
	// 생년월일 중 '연도 or 월'이 변경 되었을 때 '일'의 리스트를 다시 설정
	$("#birthday_year, #birthday_month").change(function() {
		createBirthdayList();
	});

	/* 아이디 중복 체크 */
	$('#id_cfm').click(function() {
	//	alert("중복체크 클릭");
		$('#system_alert').show();
		/* 
		$.ajax({
			
			url: "twinCheckId.do",
			type: "POST",
			data: { "member_id" : $("#member_id").val() },
			success: function(result) {
				alert("아이디 중복체크 완료");
				console.log(result);
				
			},
			error: function(result) {
				alert("잠시 후 다시 이용해주세요.");
				console.log(result);
			}
		});
		*/
	});
	/* // 아이디 중복 체크 */
	
	/* 회원 등록 처리 */
	$('#join_cfm').click(function() {
		/* 		입력 값 변환		 */
		
		/* 생일 */
		var birYear = $('#birthday_year').val();
		var birMonth = $('#birthday_month').val();
		var birDay = $('#birthday_day').val();
		
		if ( birMonth < 10 ) { birMonth = "0" + birMonth; }
		if ( birDay < 10 )	 { birDay = "0" + birDay;	}
		
		var birthday = birYear + birMonth + birDay;
		$('#member_birthday').val(birthday);
		/* // 생일 */
		
		/* 주소 */
		var addPostcode = $('#address_postcode').val();
		var addRoad = $('#address_road').val();
		var addJibun = $('#address_jibun').val();
		
		var address = addPostcode + "_" + addRoad + "_" + addJibun;
		$('#member_address').val(address);
		/* // 주소 */
		
		/* 이메일 */
		var emailId = $('#email_id').val();
		var emailDomain = $('#email_domain').val();
		
		var email = emailId + "@" + emailDomain;
		$('#member_email').val(email);
		/* // 이메일 */
		
		/* 휴대전화 */
		var phoneLeft = $('#phone_left').val();
		var phoneCenter = $('#phone_center').val();
		var phoneRight = $('#phone_right').val();
		
		var phone = phoneLeft + "-" + phoneCenter + "-" + phoneRight;
		$('#member_phone').val(phone);
		/* // 휴대전화 */
		
		/* 		// 입력 값 변환		*/
		
		/* 유효 값 검사 */
		var test = "";
		/* // 유효 값 검사 */
		
		/* DB 저장 */
		$.ajax({
			
			url: "joinAction.do",
			type: "POST",
			data: $('#frm_join').serialize(),
			success: function(result) {
				alert("정상적으로 등록되었습니다.");
				console.log(result);
				$('#frm_join_close').click();
			},
			error: function(result) {
				alert("잠시 후 다시 이용해주세요.");
				console.log(result);
			}
		});
		/* // DB 저장 */
	});

	/* 회원 등록 취소 */
	$('#frm_join_close').click(function() {
		
		var result = confirm("작성하신 내용이 사라집니다. 취소하시겠습니까?");
		
		if ( result ) {
			document.location = document.location;
		} 
			
		return false;
	});
	/* // 회원 등록 취소 */
});


/*			function		*/
/* 		▼ ▼ ▼ ▼ ▼ ▼	▼ ▼		*/

/* 생년월일(연도/월/일) 설정 */
function createBirthdayList() {
	var selYear = $("#birthday_year").val();
	var selMonth = $("#birthday_month").val();
	var date = new Date(selYear, selMonth, 0);	// 자바 스크립트에서는 'day'에 '0'으로 설정해야 함
	var lastDay = date.getDate();	// select(연도/월/일) 값으로 설정된 날짜의 마지막 날 구하기
	
	var htmlTag = "";
	for ( var i = 1; i < lastDay + 1; i++ ) {
		htmlTag += "<option label='" + i + "' value='" + i + "'></option>";
	}
	
	$("#birthday_day").html(htmlTag);
	// $("#birthday_day option:eq(" + memberDay + ")").attr("selected", "selected");
}
/* // 생년월일(연/월/일) 설정 */

/* 다음 주소 API */
function sample4_execDaumPostcode() {
	new daum.Postcode( {
		oncomplete : function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
			var extraRoadAddr = ''; // 도로명 조합형 주소 변수

			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if (data.buildingName !== '' && data.apartment === 'Y') {
				extraRoadAddr += (extraRoadAddr !== '' ? ', '
						+ data.buildingName : data.buildingName);
			}
			// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if (extraRoadAddr !== '') {
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}
			// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
			if (fullRoadAddr !== '') {
				fullRoadAddr += extraRoadAddr;
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('address_postcode').value = data.zonecode; //5자리 새우편번호 사용
			document.getElementById('address_road').value = fullRoadAddr;
			document.getElementById('address_jibun').value = data.jibunAddress;

			// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
			if (data.autoRoadAddress) {
				//예상되는 도로명 주소에 조합형 주소를 추가한다.
				var expRoadAddr = data.autoRoadAddress
						+ extraRoadAddr;
				document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
						+ expRoadAddr + ')';

			} else if (data.autoJibunAddress) {
				var expJibunAddr = data.autoJibunAddress;
				document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
						+ expJibunAddr + ')';

			} else {
				document.getElementById('guide').innerHTML = '';
			}
		}
	}).open();
}
/* // 다음 주소 API */

</script>
