<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中心概括</title>
<link href="${pageContext.request.contextPath}/admin/css/style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/admin/layer/layer.js"></script>
<!-- 新闻UE相关 -->
<link
	href="${pageContext.request.contextPath}/ueditor/themes/default/css/ueditor.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ueditor/ueditor.all.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>

<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a>
			</li>
			<li><a href="#">新闻中心</a>
			</li>
		</ul>
	</div>

	<script type="text/javascript">
		var ue = UE.getEditor('editor');
	</script>
	<center>
	<form action="Managerulewrite">
		<center style="font-size: 20px;font-style: !important;">请添加新闻标题：<input type="text" style="font-size: 20px;font-style: !important;background-color:#cceeff;" name="titles"/></center>
		<script name="context" id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
		<input class="submitBtn" type="submit" name="提交"/>
	</form>
	</center>

</body>

</html>

