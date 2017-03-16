<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>郑州轻工业学院软件学院实验示范中心</title>
<link href="${pageContext.request.contextPath}/user/css/style.css"
	type="text/css" rel="stylesheet" />
</head>
<body>
	<%@include file="top.jspf"%>
	<div class="detail_center">
		<div class="detail_centerbg">
			<div class="list07">
				<div class="list07left list07left">
					<h4 class="h4">新闻中心&nbsp;&nbsp;News Center</h4>
				</div>
				<div class="list07right list07right licon">
					<span class="a13">当前位置：首页 > 新闻中心</span>
				</div>
			</div>
			<div class="detail_title">
				<p class="title">${beans.titles }</p>
				<br />
				<p>
					<span class="blue">信息来源：</span>郑轻软创&nbsp;&nbsp;&nbsp;&nbsp; <span
						class="blue">发布日期：</span>${beans.date }&nbsp;&nbsp;&nbsp;&nbsp; <span
						class="blue">浏览次数：</span>${beans.count }
				</p>
			</div>
			<!-- 图片 -->
			<br />
			<center>
				<img src="" style="width:450px;height: 250px;">
			</center>
			<br /> <br />
			<!-- 详情 -->
			${beans.context }
			<br /> <br />
			<div class="detail_foot">
				<p>郑州轻工业学院-软件综合实践与创新基地</p>
				<p>${beans.date }</p>
				<br /> <br />
				<p>
					<a href="newsview?id=${up.id }" class="a14 underline" ><c:if test="${up != null }">上一篇：${up.titles }</c:if></a> 
					<a href="newsview?id=${down.id }" class="a14 underline right"><c:if test="${down != null }">下一篇：${down.titles }</c:if></a>
				</p>
			</div>
		</div>
	</div>
	<%@include file="button.jspf"%>
</body>
</html>
