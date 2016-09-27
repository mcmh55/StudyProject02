<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style type="text/css">

.navbar {
	margin: 0px;
}

</style>

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">HOME</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"	data-toggle="dropdown" role="button" aria-expanded="false">
						회원
						<span class="caret"></span>
					</a>
					
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">프로필</a></li>
						<li><a href="#">프로필 수정</a></li>
						<li class="divider"></li>
						<li><a href="#">회원탈퇴</a></li>
					</ul>
				</li>
				
				<li><a href="#">게시판</a></li>
			</ul>
		</div>
	</div>
</nav>