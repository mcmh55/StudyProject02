<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<c:set var="member" value="${ sessionScope.loginMember }"></c:set>

<c:if test="${ empty member }">
	<script type="text/javascript">
		alert("로그인이 필요합니다.");
		
		location.href = "login.do";
	</script>
</c:if>