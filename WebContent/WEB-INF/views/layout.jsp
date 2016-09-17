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

<!-- css -->
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/bootswatch.css"/>
<!-- // css -->

<!-- script -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<!-- // script -->

<!-- hold -->
<%-- <script type="text/javascript" src="<%= request.getContextPath() %>/js/go_url_.js"></script> --%>
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> -->
<!-- // hold -->
	
<title>개인 프로젝트</title>
	
</head>
<body>

<div id="body_wrap">
	<div id="top_wrap">
		<div id="header_wrap">
			<tiles:insertAttribute name="header"/>
		</div>
		<div id="nav_wrap">
			<tiles:insertAttribute name="nav"/>
		</div>
	</div>
	
	<div id="middle_wrap">
		<div id="aside_wrap">
			<tiles:insertAttribute name="aside"/>
		</div>
		<div id="section_wrap">
			<tiles:insertAttribute name="section"/>
		</div>
	</div>
	
	<div id="bottom_wrap">
		<tiles:insertAttribute name="footer"/>
	</div>
	
</div>

</body>
</html>