<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">

.m_info {
	margin-top: 10px;
}

</style>

<c:set var="loginMember" value="${ sessionScope.loginMember }" />

<div class="m_info">
<table class="table table-striped" style="width: 800px;">
	<col style="width: 25%;" /><col style="width: 75%;" />
	
	<tr>
		<th>아이디</th>
		<td>${ loginMember.member_id }</td>
	</tr>
	
	<tr>
		<th>닉네임</th>
		<td>${ loginMember.member_nickname }</td>
	</tr>
	
	<tr>
		<th>이름</th>
		<td>${ loginMember.member_name }</td>
	</tr>
	
	<tr>
		<th>성별</th>
		<td>${ loginMember.member_sex }</td>
	</tr>
	
	<tr>
		<th>생년월일</th>
		<td>${ loginMember.member_birthday }</td>
	</tr>
	
	<tr>
		<th>주소</th>
		<td>${ loginMember.member_address }</td>
	</tr>
	
	<tr>
		<th>마케팅 수신 동의</th>
		<td>
			${ loginMember.member_check_email }
			${ loginMember.member_check_sms }
			${ loginMember.member_check_phone }
		</td>
	</tr>
	
	<tr>
		<th>이메일</th>
		<td>${ loginMember.member_email }</td>
	</tr>
	
	<tr>
		<th>휴대전화</th>
		<td>${ loginMember.member_phone }</td>
	</tr>

</table>
</div>