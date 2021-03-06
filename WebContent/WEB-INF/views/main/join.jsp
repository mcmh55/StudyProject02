<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.Calendar" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!-- 다음 주소 API -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<!-- // 다음 주소 API -->

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
aria-labelledby="myModalLabel" data-backdrop="static" data-keyboard="false">
<div class="modal-dialog" role="document" style="width: 700px;">
<div class="modal-content">
<div class="modal-header" align="center">
	<button type="button" id="btn_modal_x" class="close" data-dismiss="modal" aria-label="Close">
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
					<input type="text" id="member_id" name="member_id" class="form-control" size="20" maxlength="12" />
					<!-- <input type="button" id="id_cfm" class="btn btn-danger" value="중복체크" data-loading-text="읽는중..." style="font-size: 10pt;" /> -->
					<button type="button" id="id_cfm" class="btn btn-danger" style="font-size: 10pt;">중복체크</button>
					<br/>
					<div class="text-muted guide">※ 영문 + 숫자 조합 6~12글자</div>
				</td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" id="member_pw" name="member_pw" class="form-control" size="20" maxlength="12" />
					<div id="text_guide_pw" style="color: red;"></div>
					<div class="text-muted guide">
						※ 영문 소문자 + 영문 대문자 + 숫자 + 특수문자 조합 8~12글자
						<br/>
						※ 사용 가능한 특수문자( ! &quot; # $ % &amp; ' ( ) * + , - . / : ; &lt; = &gt; ? @ [ ] ^ _ ' { | } ~ )
						<br/>
						※ 아이디와 동일한 글자 4개 이상 사용불가
						<br/>
						※ 동일한 글자 연속 4개 이상 사용불가
					</div>
					
				</td>
			</tr>
			
			<tr>
				<th>비밀번호 확인</th>
				<td>
					<input type="password" id="member_pw_confirm" class="form-control" size="20" maxlength="12" />
					<div id="text_guide_pw_confirm" style="color: red;"></div>
				</td>
			</tr>
			
			<tr>
				<th>닉네임</th>
				<td>
					<input type="text" id="member_nickname" name="member_nickname" class="form-control" 
					size="20" maxlength="20" />
					<span id="nickLeng">0/20bytes</span>
					<br/>
					<div id="text_guide_nick" style="color: red;"></div>
					<div class="text-muted guide">※ 한글 최대 10글자, 영문/숫자 최대 20글자(혼용 가능)</div>
				</td>
			</tr>
			
			<tr>
				<th>이름</th>
				<td>
					<input type="text" id="member_name" name="member_name" class="form-control" size="20" maxlength="40" />
					<br/>
					<div id="text_guide_name" style="color: red;"></div>
					<div class="text-muted guide">※ 한글만(20글자) 또는 영문만 (40글자)
					<br/>&nbsp;&nbsp;&nbsp;&nbsp;혼용, 한글/영문 외 불가하며 영문은 띄어쓰기 가능</div>
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
						<input type="text" id="address_postcode" class="form-control" placeholder="우편번호" maxlength="10"
						readonly="readonly" onclick="this.blur(); sample4_execDaumPostcode();" />
						<input type="button" class="btn btn-default" 
						onclick="this.blur(); sample4_execDaumPostcode();" value="우편번호 찾기" style="font-size: 10pt;" />
					</div>
					<div style="margin-bottom: 5px;">
						<input type="text" id="address_road" class="form-control" placeholder="도로명주소" maxlength="100"
						style="width: 100%;" readonly="readonly" onclick="sample4_execDaumPostcode()" />
					</div>
					<div>
						<input type="text" id="address_jibun" class="form-control" placeholder="지번주소" maxlength="100"
						style="width: 100%;" />
						<div id="text_guide_addr" style="color: red;"></div>
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
							<input type="checkbox" id="market_check_all" />
						</td>
						<td>
							<input type="checkbox" id="market_check_email" name="member_check_email" value="1" />
						</td>
						<td>
							<input type="checkbox" id="market_check_sms" name="member_check_sms" value="1" />
						</td>
						<td>
							<input type="checkbox" id="market_check_phone" name="member_check_phone" value="1" />
						</td>
					</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<th>이메일</th>
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
					<div id="text_guide_email" style="color: red;"></div>
					<div class="text-muted guide">※ 한글/영문/숫자/일부 특수문자 외 사용 불가. 사용 가능한 특수문자( - . _ )</div>
				</td>
			</tr>
			
			<tr>
				<th>휴대전화</th>
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
					<div id="text_guide_phone" style="color: red;"></div>
				</td>
			</tr>
			
			<tr>
				<th>자동 가입 방지</th>
				<td>
					<span id="captcha" style="font-size: 16pt; font-weight: bold; vertical-align: middle;"></span>
					<span style="font-size: 16pt; font-weight: bold; vertical-align: middle;">&nbsp;=&nbsp;</span>
					<input type="text" id="captcha_result" class="form-control" size="5" maxlength="3" />
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
	
	<button type="button" id="frm_join_close" class="btn btn-default" 
	data-dismiss="modal" style="font-size: 12pt;">닫기</button>
	
	<!-- 테스트용 -->
	<button type="button" id="input_test" class="btn btn-default" style="font-size: 12pt;">값 테스트</button>
</div>
</div>
</div>
</div>

<!-- 알림 팝업 -->
<div id="system_alert" style="position: fixed; width: 400px; top: 20px; left: 50%; margin-left: -200px; z-index: 9999; text-align: center;
/* transform: translate(-50%, -50%); */">
	<!-- <button type="button" class="close" data-dismiss="alert">&times;</button> -->
</div>

<!--		script			-->
<!-- 	▼ ▼ ▼ ▼ ▼ ▼	▼ ▼		-->

<script type="text/javascript">

$(document).ready(function() {
	
	// 테스트용
	$('#input_test').click(function() {
		
		console.log(
				"completePw: " + completePw + "\n"
				+ "completePwCfm: " + completePwCfm + "\n"
				+ "completeNick: " + completeNick + "\n"
				+ "completeName: " + completeName + "\n"
				+ "completeAddr: " + completeAddr + "\n"
				+ "completeEmailId: " + completeEmailId + "\n"
				+ "completeEmailDomain: " + completeEmailDomain + "\n"
				+ "completePhoneC: " + completePhoneC + "\n"
				+ "completePhoneR: " + completePhoneR + "\n"
				);
		
	});
	
	/************************/
	/*		페이지 초기 설정		*/
	
	// 숨김
	$('#system_alert').hide();
	$('#btn_modal_x').hide();
	
	// 생년월일 리스트 설정
	createBirthdayList();
	setBirthday();
	
	function createBirthdayList() {
		var selYear = $("#birthday_year").val();
		var selMonth = $("#birthday_month").val();
		var date = new Date(selYear, selMonth, 0);	// 자바 스크립트에서는 'day'에 '0'으로 설정해야 함
		var lastDay = date.getDate();				// select(연도/월/일) 값으로 설정된 날짜의 마지막 날 구하기
		
		var htmlTag = "";
		for ( var i = 1; i < lastDay + 1; i++ ) {
			htmlTag += "<option label='" + i + "' value='" + i + "'></option>";
		}
		
		$("#birthday_day").html(htmlTag);
		// $("#birthday_day option:eq(" + memberDay + ")").attr("selected", "selected");
	}
	
	// 생일 문자 조합
	function setBirthday() {
		var birYear = $('#birthday_year').val();
		var birMonth = $('#birthday_month').val();
		var birDay = $('#birthday_day').val();
		
		if ( birMonth < 10 ) birMonth = "0" + birMonth;
		if ( birDay < 10 )	 birDay = "0" + birDay;
		
		var birthday = birYear + birMonth + birDay;
		$('#member_birthday').val(birthday);
	}
	
	// 자동가입방지 계산식
	var captchaResult = 0;
	$('#captcha').text(captcha);
	
	function captcha() {
		var numL = Math.floor(Math.random() * 10) + 1;	// floor: 소수점 버림
		var numR = Math.floor(Math.random() * 10) + 1;
		var calPattern = Math.floor(Math.random() * 2) + 1;
		
		if ( calPattern == 1 ) {
			captchaResult = numL + numR;
		} else {
			captchaResult = numL * numR;
		}
		
		return calPattern == 1 ? numL + " + " + numR : numL + " x " + numR;
	}
	
	// 검사 완료 유무 저장
	var completePw = false;
	var completePwCfm = false;
	var completeNick = false;
	var completeName = false;
	var completeAddr = false;
	var completeEmailId = false;
	var completeEmailDomain = false;
	var completePhoneC = false;
	var completePhoneR = false;
	var completeCaptcha = false;
	
	/*	 // 페이지 초기 설정		*/
	
	/************************/
	/*		실시간 유효값 검사		*/
	
	// 비밀번호 검사
	$('#member_pw').keyup(checkPw).blur(checkPw).focus(checkPw);
		
	function checkPw() {
		
		var inputId = $('#member_id').val();
		var inputPw = $(this).val();
		
		var strId = "";
		var strPw = "";
		for ( var i = 0; i < inputId.length-3; i++ ) {
			strId = inputId.substr(i, 4);
			
			for ( var j = 0; j < inputPw.length-3; j++ ) {
				strPw = inputPw.substr(j, 4);
				
				if ( strId == strPw ) {
					$('#text_guide_pw').text("아이디와 동일한 글자 4개 이상 사용불가");
					$('#text_guide_pw').show();
					completePw = false;
					
					return true;
				}
			}
		}
		
		// 동일한 문자 4개 이상 반복 확인
		if ( inputPw.length >= 4 ) {
			
			for ( var i = 0; i < inputPw.length-3; i++ ) {
				var sameCnt = 0;
				
				for ( var j = i; inputPw.length; j++ ) {
					if ( inputPw.charAt(i) == inputPw.charAt(j) ) {
						sameCnt++;
					} else {
						break;
					}
					
					if ( sameCnt >= 4 ) {
						$('#text_guide_pw').text("동일한 글자 4개 이상 사용불가");
						$('#text_guide_pw').show();
						completePw = false;
						
						return true;
					}
				}
			}
		}
		
		var regexEngL = getRegex("regexEngL");
		var regexEngU = getRegex("regexEngU");
		var regexNum = getRegex("regexNum");
		var regexSpe = getRegex("regexSpe");
		var regexNotEngNumSpe = getRegex("regexNotEngNumSpe");
		
		// 공백 확인
		if ( inputPw == '' ) {
			$('#text_guide_pw').text("비밀번호를 입력해주세요.");
			$('#text_guide_pw').show();
			completePw = false;
		
		// 글자수 확인
		} else if ( inputPw.length < 8 ) {
			$('#text_guide_pw').text("최소 8글자 이상 입력해주세요.");
			$('#text_guide_pw').show();
			completePw = false;
		
		// 문자 확인
		} else if ( regexNotEngNumSpe.test(inputPw)) {
			$('#text_guide_pw').text("올바르게 입력해주세요.");
			$('#text_guide_pw').show();
			completePw = false;
		
		// 정상 입력
		} else if ( regexEngL.test(inputPw) 
				&& regexEngU.test(inputPw)
				&& regexNum.test(inputPw)
				&& regexSpe.test(inputPw)) {
			
			$('#text_guide_pw').hide();
			completePw = true;
			
		} else {
			$('#text_guide_pw').text("올바르게 입력해주세요.");
			$('#text_guide_pw').show();
			completePw = false;
		}
	}	
	
	// 비밀번호 확인 검사
	$('#member_pw').blur(checkPwCfm);
	$('#member_pw_confirm').keyup(checkPwCfm);
	
	function checkPwCfm() {
		var inputPw = $('#member_pw').val();
		var inputPwCfm = $('#member_pw_confirm').val();
		
		if ( inputPw != inputPwCfm ) {
			$('#text_guide_pw_confirm').text("비밀번호가 일치하지 않습니다.");
			$('#text_guide_pw_confirm').show();
			
			completePwCfm = false;
		} else {
			$('#text_guide_pw_confirm').hide();
			completePwCfm = true;
		}
	}
	
	// 닉네임 검사
	$('#member_nickname').keyup(checkNick).blur(checkNick);
	
	var nickKorLeng;		// 닉네임 한글 길이 저장 ※ Byte
	var nickEngNumLeng;		// 닉네임 영문/숫자 길이 저장 ※ Byte
	
	function checkNick() {
		var inputNick = $(this).val();
		var nickLeng = inputNick.length;
		var nickByte = 0;
		var str = "";
		
		nickKorLeng = 0;
		nickEngNumLeng = 0;
		nickETCLeng = 0;
		
		var regexKor = getRegex("regexKor");
		var regexEngNum = getRegex("regexEngNum");
		var regexSpace = getRegex("regexSpace");
		
		for ( var i = 0; i < nickLeng; i++ ) {
			var text = inputNick.charAt(i);
			
			if ( regexKor.test(text) ) {
				nickKorLeng = nickKorLeng + 2;
			} else if ( regexEngNum.test(text) || regexSpace.test(text) ) {
				nickEngNumLeng = nickEngNumLeng + 1;
			} else {
				nickETCLeng = nickETCLeng + 2;
			}
			
			nickByte = nickKorLeng + nickEngNumLeng + nickETCLeng;
			
			if ( nickByte > 20 ) {
				$('#member_nickname').val(str);
				return;
			}
			
			str = str + text;
		}
		
		$('#nickLeng').text(nickByte + "/20bytes");
		
		if ( nickETCLeng > 0 ) {
			$('#text_guide_nick').text("닉네임은 한글, 영문, 숫자만 사용 가능합니다.");
			$('#text_guide_nick').show();
			
			completeNick = false;
			
		} else {
			$('#text_guide_nick').hide();
			
			if ( str != '' ) {
				completeNick = true;
			}
		}
	}
	
	// 이름 검사
	$('#member_name').keyup(checkName).blur(checkName);
	
	function checkName() {
		var inputName = $(this).val();
		var firstText = inputName.charAt(0);
		
		var regexKor = getRegex("regexKor");
		var regexEngLU = getRegex("regexEngLU");
		var regexSpace = getRegex("regexSpace");
		var regexKorEng = getRegex("regexKorEng");
		var regexNotKorEng = getRegex("regexNotKorEng");
		
		var str = "";
		// 첫 글자가 띄어쓰기일 경우
		if ( regexSpace.test(firstText) ) {
			
			$('#text_guide_name').text("첫 글자에 띄어쓰기를 사용할 수 없습니다.");
			$('#text_guide_name').show();
			completeName = false;
		
		// 첫 글자가 한글일 경우 -> 영문 포함 불가 ※ 한글은 띄어쓰기 포함 불가
		} else if ( regexKor.test(firstText) ) {
			for ( var i = 0; i < inputName.length; i++ ) {
				
				if ( !regexKor.test(inputName.charAt(i)) ) {
					$('#text_guide_name').text("첫 글자가 한글일 경우 한글만 입력 가능합니다.");
					$('#text_guide_name').show();
					completeName = false;
					
					return false;
				} else {
					$('#text_guide_name').hide();
					completeName = true;
				}
			}
			
		// 첫 글자가 영문일 경우 -> 한글 포함 불가 ※ 영문은 띄어쓰기 포함 가능
		} else if ( regexEngLU.test(firstText) ) {
			for ( var i = 0; i < inputName.length; i++ ) {
				
				if ( !regexEngLU.test(inputName.charAt(i)) && !regexSpace.test(inputName.charAt(i)) ) {
					$('#text_guide_name').text("첫 글자가 영문일 경우 영문만 입력 가능합니다.");
					$('#text_guide_name').show();
					completeName = false;
					
					return false;
				} else {
					$('#text_guide_name').hide();
					completeName = true;
				}
			}
		// 공백일 경우
		} else if ( inputName == '' ) {
			$('#text_guide_name').hide();
			completeName = false;
			
		// 한글/영문, 띄어쓰기가 아닌 문자가 포함될 경우	
		} else if ( regexNotKorEng.test(inputName) ) {
			
			$('#text_guide_name').text("한글/영문 외에는 사용할 수 없습니다.");
			$('#text_guide_name').show();
			completeName = false;
		}
	}
	
	// 생년월일 중 '연도 or 월'이 변경 되었을 때 '일'의 리스트를 다시 설정
	$("#birthday_year, #birthday_month").change(function() {
		createBirthdayList();
		setBirthday();
	});
	
	// 주소 검사
	$('#address_postcode').change(checkAddr);
	$('#address_road').change(checkAddr);
	$('#address_jibun').change(checkAddr);
	
	function checkAddr() {
		var addPostcode = $('#address_postcode').val();
		var addRoad = $('#address_road').val();
		var addJibun = $('#address_jibun').val();
		
		var regexAddr = getRegex("regexAddr");
		
		if ( addJibun == '' ) {
			$('#text_guide_addr').hide();
			completeAddr = false;
			
		} else if ( !regexAddr.test(addJibun) ) {
			$('#text_guide_addr').text("일부 특수문자만 사용 가능합니다. ※ ( ) -");
			$('#text_guide_addr').show();
			completeAddr = false;
			
		} else {
			$('#text_guide_addr').hide();
			$('#member_address').val(addPostcode + "_" + addRoad + "_" + addJibun);
			completeAddr = true;
		}
	}
	
	/*		마케팅 수신 동의 체크		*/
	
	$('#market_check_all').click(function() {
		// 모두 동의가 '체크'되면 -> 나머지 체크 항목 모두 체크
		if ( $(this).prop('checked') ) {
			$('#market_check_email').prop('checked', true);
			$('#market_check_sms').prop('checked', true);
			$('#market_check_phone').prop('checked', true);
			
		// 모두 동의가 '체크 해제'되면 -> 나머지 체크 항목 모두 체크 해제	
		} else {
			$('#market_check_email').prop('checked', false);
			$('#market_check_sms').prop('checked', false);
			$('#market_check_phone').prop('checked', false);
		}
	});
	
	// 나머지 체크 항목이 모두 체크되면 '모두 동의'도 체크됨, 항목 1개라도 체크 해제되면 '모두 동의'도 체크 해제됨
	$('#market_check_email, #market_check_sms, #market_check_phone').click(function() {
		var checkEmail = $('#market_check_email').prop('checked');
		var checkSMS = $('#market_check_sms').prop('checked');
		var checkPhone = $('#market_check_phone').prop('checked');
		
		if ( checkEmail && checkSMS && checkPhone )	$('#market_check_all').prop('checked', true);
		else										$('#market_check_all').prop('checked', false);
	});
	
	/*	 // 마케팅 수신 동의 체크		*/
	
	/*		이메일 검사		*/
	// 이메일 도메인 리스트 중 선택 항목에 따라 도메인 입력칸 변화
	$('#email_domain_list').change(function() {
		
		var selectDomain = $(this).val();
		
		if ( selectDomain == "직접 입력" )	$('#email_domain').val('');
		else							$('#email_domain').val(selectDomain);
	});
	
	$('#email_id').keyup(checkEmailId);
	$('#email_id').blur(checkEmailId);
	
	function checkEmailId() {
		var emailId = $(this).val();
		var regexEmail = getRegex("regexEmail");
		
		if ( regexEmail.test(emailId) ) {
			$('#text_guide_email').text("이메일 아이디를 다시 확인해주세요.");
			$('#text_guide_email').show();
			
			completeEmailId = false;
			
		} else {
			$('#text_guide_email').hide();
			completeEmailId = true;
		}
	}
	
	$('#email_domain').keyup(checkEmailDomain);
	$('#email_domain').blur(checkEmailDomain);
	$('#email_domain_list').change(checkEmailDomain);
	
	function checkEmailDomain() {
		var emailDomain = $(this).val();
		regexEmail = getRegex("regexEmail");
		
		if ( regexEmail.test(emailDomain) ) {
			$('#text_guide_email').text("도메인을 다시 확인해주세요.");
			$('#text_guide_email').show();
			completeEmailDomain = false;
			
		} else {
			$('#text_guide_email').hide();
			completeEmailDomain = true;
		}
	}
	
	/*	 // 이메일 검사		*/
	
	// 휴대전화 검사
	$('#phone_center').keyup(checkPhoneC);
	$('#phone_center').blur(checkPhoneC);
	
	function checkPhoneC() {
		var inputPhoneC = $(this).val();
		var regexNotNum = getRegex("regexNotNum");
		
		if ( regexNotNum.test(inputPhoneC) ) {
			$('#text_guide_phone').text("숫자 외 사용 할 수 없습니다.");
			$('#text_guide_phone').show();
			completePhoneC = false;
			
		} else if ( inputPhoneC.length < 3 ) {
			$('#text_guide_phone').text("가운데는 최소 3자리 이상, 마지막은 4자리 입력 필요");
			$('#text_guide_phone').show();
			completePhoneC = false;
			
		} else {
			$('#text_guide_phone').hide();
			completePhoneC = true;
		}
	}
	
	$('#phone_right').keyup(checkPhoneR);
	$('#phone_right').blur(checkPhoneR);
	
	function checkPhoneR() {
		var inputPhoneR = $(this).val();
		var regexNotNum = getRegex("regexNotNum");
		
		if ( regexNotNum.test(inputPhoneR) ) {
			$('#text_guide_phone').text("숫자 외 사용 할 수 없습니다.");
			$('#text_guide_phone').show();
			completePhoneR = false;
			
		} else if ( inputPhoneR.length < 4 ) {
			$('#text_guide_phone').text("가운데는 최소 3자리 이상, 마지막은 4자리 입력 필요");
			$('#text_guide_phone').show();
			completePhoneR = false;
			
		} else {
			$('#text_guide_phone').hide();
			completePhoneR = true;
		}
	}
	
	$('#phone_center, #phone_right').blur(checkPhone);
	
	function checkPhone() {
		if ( completePhoneC && completePhoneR ) {
			var phoneLeft = $('#phone_left').val();
			var phoneCenter = $('#phone_center').val();
			var phoneRight = $('#phone_right').val();
			
			$('#member_phone').val(phoneLeft + "-" + phoneCenter + "-" + phoneRight);
		}
	}
	
	// 자동가입방지 검사
	$('#captcha_result').keyup(checkCaptcha);
	$('#captcha_result').blur(checkCaptcha);
	
	function checkCaptcha() {
		var inputCaptcha = $('#captcha_result').val();
		
		if ( captchaResult == inputCaptcha )	completeCaptcha = true;
		else									completeCaptcha = false;
	}
	
	/*	 // 실시간 유효값 검사		*/

	/************************/
	/*		아이디 중복 체크		*/
	
	var cfmId = "";		// 중복 체크 완료된 아이디 저장
	$('#id_cfm').click(function() {
		
		var inputId = $('#member_id').val();
		var regexEngLU = getRegex("regexEngLU");
		var regexNum = getRegex("regexNum");
		var regexNotEngNum = getRegex("regexNotEngNum");
		
		if ( inputId.length < 6 ) {
			alert("최소 6글자 이상 입력해주세요.");
			return false;
		}
		else if ( !regexEngLU.test(inputId) || !regexNum.test(inputId) || regexNotEngNum.test(inputId) ) {
			alert("사용 할 수 없는 아이디입니다.");
			return false;
			
		} else if ( regexEngLU.test(inputId) && regexNum.test(inputId) && !regexNotEngNum.test(inputId) ) {
			
			$('#id_cfm').text("체크중...").attr('disabled', true);
			
			$.ajax({
				url: "sameCheckId.do",
				type: "POST",
				data: { "member_id" : inputId },
				success: function(result) {
					
					if ( result.message == "true" )	{
						$('#system_alert').attr('class', 'alert alert-dismissible alert-danger');
						$('#system_alert').html('<strong>이미 존재하는 아이디입니다!</strong>');
						cfmId = '';
						
					} else {
						$('#system_alert').attr('class', 'alert alert-dismissible alert-success');
						$('#system_alert').html('<strong>사용 가능한 아이디입니다.</strong>');
						cfmId = inputId;
					}
					
					$('#system_alert').slideDown('fast', function() {
						setTimeout(function() { $('#system_alert').slideUp('fast'); }, 1000);
					});
					
					$('#id_cfm').text("중복 체크").attr('disabled', false);
				},
				error: function(result) {
					alert("잠시 후 다시 이용해주세요.");
				}
			});
		}
	});
	
	/* 	  // 아이디 중복 체크 		*/
	
	/************************/
	/*		회원 등록 처리		*/
	
	$('#join_cfm').click(function() {
		
		/*********************************/
		/* 		유효값 검사 & 입력 값 변환		 */
		
		// 중복 체크된 아이디인지 검사
		if ( cfmId != $('#member_id').val() ) {
			
			alert("중복체크 되지 않은 아이디입니다.");
			$('#member_id').focus();
			
			return false;
		}
		
		// 주소 검사
		checkAddr();
		var inputPostcode = $('#address_postcode').val();
		var inputRoad = $('#address_road').val();
		
		if ( inputPostcode != '' && inputRoad != '' ) {
			completeAddr = true;
		}
		
		// 이메일 조합
		var emailId = $('#email_id').val();
		var emailDomain = $('#email_domain').val();
		
		if ( completeEmailId && completeEmailDomain ) {
			$('#member_email').val(emailId + "@" + emailDomain);
		}
		
		// 최종 검사
		if ( cfmId == '' ) {
			alert("아이디를 다시 확인해주세요.");
			$('#member_id').focus();
			return false;
		} else if ( !completePw ) {
			alert("비밀번호를 다시 확인해주세요.");
			$('#member_pw').focus();
			return false;
		} else if ( !completePwCfm ) {
			alert("비밀번호 확인을 다시 확인해주세요.");
			$('#member_pw_confirm').focus();
			return false;
		} else if ( !completeNick ) {
			alert("닉네임을 다시 확인해주세요.");
			$('#member_nickname').focus();
			return false;
		} else if ( !completeName ) {
			alert("이름을 다시 확인해주세요.");
			$('#member_name').focus();
			return false;
		} else if ( !completeAddr ) {
			alert("주소를 다시 확인해주세요.");
			$('#address_jibun').focus();
			return false;
		} else if ( !completeEmailId ) {
			alert("이메일 아이디를 다시 확인해주세요.");
			$('#email_id').focus();
			return false;
		} else if ( !completeEmailDomain ) {
			alert("이메일 도메인을 다시 확인해주세요.");
			$('#email_domain').focus();
			return false;
		} else if ( !completePhoneC ) {
			alert("휴대전화를 다시 확인해주세요.");
			$('#phone_center').focus();
			return false;
		} else if ( !completePhoneR ) {
			alert("휴대전화를 다시 확인해주세요.");
			$('#phone_right').focus();
			return false;
		} else if ( !completeCaptcha ) {
			alert("자동가입방지를 다시 확인해주세요.");
			$('#captcha_result').focus();
			return false;
		}
		
		/* 	  // 유효값 검사 & 입력 값 변환		*/
		
		/********************/
		/*		DB 저장		*/
		
		$.ajax({
			url: "joinAction.do",
			type: "POST",
			data: $('#frm_join').serialize(),
			success: function(result) {
				if ( result.message == "Success" ) {
					$('#btn_modal_x').click();
					alert("회원가입이 완료되었습니다.");
					
				} else {
					$('#btn_modal_x').click();
					alert("회원가입에 실패하였습니다. 잠시 후 다시 이용해주세요.");
				}
				
				document.location = document.location;
			},
			error: function(result) {
				alert("잠시 후 다시 이용해주세요.");
				document.location = document.location;
			}
		});
		
		/*	  // DB 저장		*/
	});
	
	/*	 // 회원 등록 처리		*/

	/*		회원 등록 취소		*/
	$('#frm_join_close').click(function() {
		
		var result = confirm("작성하신 내용이 사라집니다. 취소하시겠습니까?");
		
		if ( result ) {
			document.location = document.location;
		} 
			
		return false;
	});
	/*	  // 회원 등록 취소		*/
});


/*		기타 function		*/
/* 		▼ ▼ ▼ ▼ ▼ ▼		*/

/************************/
/*		다음 주소 API		*/
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
/*	  // 다음 주소 API		*/

/********************/
/*		정규식 반환		*/
function getRegex(type) {
	var regexKor = /[ㄱ-힣]/;
	var regexEngL = /[a-z]/;
	var regexEngU = /[A-Z]/;
	var regexEngLU = /[a-z]/i;
	var regexNum = /[0-9]/;
	var regexSpe = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/;
	var regexSpace = /[\s]/;
	var regexKorEng = /[ㄱ-힣a-z]/i;
	var regexEngNum = /[a-z0-9]/i;
	var regexKorEngNum = /[ㄱ-힣a-z0-9]/i;
	var regexEngNumSpe = /[a-z0-9\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/i;
	var regexNotNum = /[^0-9]/;
	var regexNotKorEng = /[^ㄱ-힣a-z]/i;
	var regexNotEngNum = /[^a-z0-9]/i;
	var regexNotEngNumSpe = /[^a-z0-9\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/i;
	var regexAddr = /[ㄱ-힣a-z0-9\(\)\-]/i;		// 회원-주소 전용
	var regexEmail = /[^ㄱ-힣a-z0-9.\-_]/i;		// 회원-이메일 전용
	
	if ( type == "regexKor" )				return regexKor;
	else if ( type == "regexEngL" )			return regexEngL;
	else if ( type == "regexEngU" )			return regexEngU;
	else if ( type == "regexEngLU" )		return regexEngLU;
	else if ( type == "regexNum" )			return regexNum;
	else if ( type == "regexSpe" )			return regexSpe;
	else if ( type == "regexSpace" )		return regexSpace;
	else if ( type == "regexKorEng" )		return regexKorEng;
	else if ( type == "regexEngNum" )		return regexEngNum;
	else if ( type == "regexKorEngNum" )	return regexKorEngNum;
	else if ( type == "regexEngNumSpe" )	return regexEngNumSpe;
	else if ( type == "regexNotNum" )		return regexNotNum;
	else if ( type == "regexNotKorEng" )	return regexNotKorEng;
	else if ( type == "regexNotEngNum" )	return regexNotEngNum;
	else if ( type == "regexNotEngNumSpe" )	return regexNotEngNumSpe;
	else if ( type == "regexAddr" )			return regexAddr;
	else if ( type == "regexEmail" )		return regexEmail;
}
/*	 // 정규식 반환		*/

</script>
