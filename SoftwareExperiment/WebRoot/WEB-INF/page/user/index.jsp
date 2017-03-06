<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>郑州轻工业学院</title>
<link href="${pageContext.request.contextPath}/user/css/style.css"
	type="text/css" rel="stylesheet" />
<script
	src="${pageContext.request.contextPath}/user/js/jquery-1.8.2.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/user/js/Index.js"
	type="text/javascript"></script>
</head>
<body>
	<!-- 包含top内容 -->
	<%@include file="top.jspf"%>
	<div class="main-center">
		<div class="g-login-mid-outer">
			<div id="side">
				<ul class="m">
					<li
						style="background-image: url(${pageContext.request.contextPath}/user/Images/banner04.jpg);"><a
						href="javascript:void(0)"> </a>
					</li>
					<li
						style="background-image: url(${pageContext.request.contextPath}/user/Images/banner01.jpg);"><a
						href="javascript:void(0)"> </a>
					</li>
					<li
						style="background-image: url(${pageContext.request.contextPath}/user/Images/banner02.jpg)"><a
						href="javascript:void(0)"> </a>
					</li>
					<li
						style="background-image: url(${pageContext.request.contextPath}/user/Images/banner03.jpg)"><a
						href="javascript:void(0)"> </a>
					</li>
				</ul>
				<ul class="s">
					<li class="cur">1</li>
					<li class="">2</li>
					<li class="">3</li>
					<li class="">4</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mian_center01">
		<div class="middle">
			<div class="line"></div>
			<div class="index05">
				<div class="index05left">
					<h4 class="h4">新闻中心</h4>
				</div>
				<div class="index05right">
					<a href="newsindex" class="a12">更多&gt; </a>
				</div>
			</div>
			<div class="outer2">
				<div id="side2">
					<ul class="m2">
						<!-- 新闻中心 -->
						<s:iterator value="pageBeanNews.recordList" begin="0" end="4">
							<li
								style="background-image: url(${pageContext.request.contextPath}/user/Images/ban01.jpg);"><a
								href="javascript:void(0)"></a></li>
						</s:iterator>
					</ul>
					<ul class="s2">
						<!-- 新闻中心 -->
						<s:iterator value="pageBeanNews.recordList" begin="0" end="4">
							<li class="cur">1</li>
						</s:iterator>
					</ul>
				</div>
			</div>
			<div class="outer3">
				<ul>
					<!-- 新闻中心 -->
					<s:iterator value="pageBeanNews.recordList" begin="0" end="4">
						<li class="cur li01"><!-- 主选项 =5个 -->
							<dl>
								<dt class="datedt">
									<span class="date01"><s:date name="date" format="yyyy-MM"/> </span><span class="date02"><s:date name="date" format="dd"/>
									</span>
								</dt>
								<dd>
									<a href="#" class="title01" title="${titles }"><i></i>${titles }</a>
									<p class="title02">${context }</p>
								</dd>
							</dl></li>
					</s:iterator>
				</ul>
			</div>
		</div>
	</div>
	<!-- 实验教学 -->
	<div class="mianCenter">
		<div class="mianCenterMain">
			<div class="outer3 outer4 outer4-left pdr20">
				<div class="line"></div>
				<div class="index06">
					<div class="index06left">
						<h4 class="h4">实验教学</h4>
					</div>
					<div class="index06right">
						<a href="labsindex" class="a12">更多&gt; </a>
					</div>
				</div>
				<ul><!-- 9个 -->
				<s:iterator value="pageBeanLabs.recordList" begin="0" end="8">
					<li>
						<dl>
							<dt class="filedt"></dt>
							<dd>
								<a href="#" class="title03" title="${titles }">${titles }</a>
								<span class="title04"> <s:date name="date" format="yyyy-MM-dd"/> </span>
							</dd>
						</dl></li>
				</s:iterator>
				</ul>
			</div>
			<!-- 规章制度 -->
			<div class="outer3 outer4">
				<div class="line"></div>
				<div class="index06">
					<div class="index06left">
						<h4 class="h4">规章制度</h4>
					</div>
					<div class="index06right">
						<a href="ruleall" class="a12">更多&gt; </a>
					</div>
				</div>
				<ul><!-- 9个 -->
				<s:iterator value="pageBeanRules.recordList" begin="0" end="8">
					<li>
						<dl>
							<dt class="messdt"></dt>
							<dd>
								<a href="#" class="title03" title="${titles }">${titles }</a>
								<span class="title04"><s:date name="date" format="yyyy-MM-dd"/></span>
							</dd>
						</dl></li>
				</s:iterator>
				</ul>
			</div>
			<!-- 实验仪器 -->
			<div class="outer3 outer4 outer4-left pdr20">
				<div class="line"></div>
				<div class="index06">
					<div class="index06left">
						<h4 class="h4">实验仪器</h4>
					</div>
					<div class="index06right">
						<a href="deviceindex" class="a12">更多&gt; </a>
					</div>
				</div>
				<ul><!-- 9个 -->
				<s:iterator value="pageBeanDevices.recordList" begin="0" end="8">
					<li>
						<dl>
							<dt class="perdt"></dt>
							<dd>
								<a href="#" class="title03" title="${titles }">${titles }</a> <span
									class="title04"><s:date name="date" format="yyyy-MM-dd"/></span>
							</dd>
						</dl></li>
				</s:iterator>
				</ul>
			</div>
			<!-- 申报材料 -->
			<div class="outer3 outer4">
				<div class="line"></div>
				<div class="index06">
					<div class="index06left">
						<h4 class="h4">申报材料</h4>
					</div>
					<div class="index06right">
						<a href="reportindexs" class="a12">更多&gt; </a>
					</div>
				</div>
				<ul><!-- 9个 -->
				<s:iterator value="pageBeanReports.recordList" begin="0" end="8">
					<li>
						<dl>
							<dt class="setdt"></dt>
							<dd>
								<a href="#" class="title03" title="${titles }">${titles }</a> <span
									class="title04"><s:date name="date" format="yyyy-MM-dd"/></span>
							</dd>
						</dl></li>
					</s:iterator>
				</ul>
			</div>
		</div>
	</div>
	<%@include file="button.jspf"%>
</body>
</html>
