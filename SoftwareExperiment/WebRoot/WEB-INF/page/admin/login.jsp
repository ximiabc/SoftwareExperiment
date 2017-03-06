<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理系统</title>
<link href="${pageContext.request.contextPath}/admin/css/style.css"
	rel="stylesheet" type="text/css" />
<script language="JavaScript"
	src="${pageContext.request.contextPath}/admin/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/cloud.js"
	type="text/javascript"></script>

<script language="javascript">
	$(function() {
		$('.loginbox').css({
			'position' : 'absolute',
			'left' : ($(window).width() - 692) / 2
		});
		$(window).resize(function() {
			$('.loginbox').css({
				'position' : 'absolute',
				'left' : ($(window).width() - 692) / 2
			});
		});
	});
</script>

</head>

<body
	style="background-color:#1c77ac; background-image:url(${pageContext.request.contextPath}/pages/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">

	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>


	<div class="logintop">
		<span>欢迎登录在线开放课程集群平台</span>
		<ul>
			<li><a href="#">回首页</a>
			</li>
			<li><a href="#">帮助</a>
			</li>
			<li><a href="#">关于</a>
			</li>
		</ul>
	</div>

	<div class="loginbody">

		<span class="systemlogo"></span>
		<!--      <form class="login" name="login" action="teacherAction_login.action" -->
		<form class="login" name="login" action="adminmain" method="post">
			<!-- <form class="login" name="login" action="student_login.action"
				method="post" >  -->
			<div class="loginbox">

				<ul>

					<li><input name="username" type="text" class="loginuser"
						value="admin" onclick="JavaScript:this.value=''" />
					</li>
					<li><input name="password" type="password" class="loginpwd"
						onfocus="this.type='password'" autocomplete="off" class="loginpwd"
						value="" onclick="JavaScript:this.value=''" />
					</li>
					<li><input name="" type="submit" class="loginbtn" value="登录" /><label><input
							name="" type="checkbox" value="" checked="checked" />记住密码</label><label><a
							href="#">忘记密码？</a>
					</label>
					</li>
				</ul>

			</div>
		</form>
	</div>

</body>

</html>
