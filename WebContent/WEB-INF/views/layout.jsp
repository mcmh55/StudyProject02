<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<fmt:requestEncoding value="UTF-8"/>
<%-- <tiles:insertAttribute name="common"/> --%>

<!DOCTYPE html>
<html lang="ko">
<head>

<%-- <tiles:insertAttribute name="head"/> --%>

<link rel="stylesheet" type="text/css" href="css/bootswatch.css"/>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
<title>개인 프로젝트</title>

<style type="text/css">

.header_wrap,
.nav_wrap,
.middle_wrap,
.bottom_wrap {
	width: 100%;
}

.aside_wrap {
	width: 200px;
	float: left;
}

.section_wrap {
	width: 1300px;
}

</style>
	
</head>
<body>

<div class="body_wrap">
	<div class="top_wrap">
		<div class="header_wrap">
			<tiles:insertAttribute name="header"/>
		</div>
		<div class="nav_wrap navbar navbar-default">
			<tiles:insertAttribute name="nav"/>
		</div>
	</div>
	
	<div class="middle_wrap">
		<div class="aside_wrap">
			<tiles:insertAttribute name="aside"/>
		</div>
		<div class="section_wrap">
			<tiles:insertAttribute name="section"/>
		</div>
	</div>
	
	<div class="bottom_wrap">
		<tiles:insertAttribute name="footer"/>
	</div>
	
</div>

</body>
</html>