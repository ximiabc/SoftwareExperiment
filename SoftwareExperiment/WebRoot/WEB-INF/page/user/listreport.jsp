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
<title>郑州轻工业学院软件学院</title>
<link href="${pageContext.request.contextPath}/user/css/style.css"
	type="text/css" rel="stylesheet" />
</head>
<body>
	<%@include file="top.jspf"%>
	<div class="list_center">
		<div class="list_centerbg">
			<div class="list_centertitle">
				申报材料<br /> Report Material
			</div>
		</div>
	</div>
	<div class="list_main">
		<div class="list_center_main ">
			<div class="list_center">
			<div class="list_mainright">
				<div class="outer3 outer4 outer6">
					<div class="line"></div>
					<div class="list06">
						<div class="list06left list06left">
							<h4 class="h4">申报材料&nbsp;&nbsp;Report Material </h4>
						</div>
						<div class="list06right list06right licon">
							<span class="a13">当前位置：首页 > 申报材料</span>
						</div>
					</div>
					<ul>
						<s:iterator value="pageBean.recordList">
							<li>
								<dl>
									<dt class="messdt"></dt>
									<dd>
										<a href="reportview?id=${id }" class="title03 hovercolor" title="欢迎观看">${titles
											} </a> <span class="title04 gray"> ${date }</span>
									</dd>
								</dl></li>
						</s:iterator>
					</ul>
					<!-- 分页 -->
					<div class="pageing">
						<ul class="page">
							<li><a href="#"><</a></li>
							<s:iterator begin="pageBean.beginPageIndex"
								end="pageBean.endPageIndex" var="pageNums">
								<li
									class="paginItem ${pageBean.currentPage==pageNums?'current':''}">
									<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
									<c:if test="${pageBean.currentPage == pageNums }">
										<a href="#" class="cur">${pageNums }</a>
									</c:if> <c:if test="${pageBean.currentPage != pageNums }">
										<a href="reportindexs?pageNum=${pageNums }">${pageNums }</a>
									</c:if>
								</li>
							</s:iterator>

							<li><a href="#">></a></li>
						</ul>
						<!-- <ul class="pageingtz">
							<li>跳转：<input type="text" class="input" />&nbsp;页&nbsp;<a
								href="#" class="a13">GO</a>
							</li>
						</ul> -->
					</div>
				</div>
			</div>
			</div>
		</div>
	</div>
	<%@include file="button.jspf"%>
</body>
</html>
