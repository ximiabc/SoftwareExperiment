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
<title>郑州轻工业学院软件学院实验示范中心</title>
<link href="${pageContext.request.contextPath}/user/css/style.css"
	type="text/css" rel="stylesheet" />
</head>
<body>
	<%@include file="top.jspf"%>
	<div class="list_center">
		<div class="list_centerbg">
			<div class="list_centertitle">
				实验教学<br />Lab Teaching
			</div>
		</div>
	</div>
	<div class="list_main">
		<div class="list_center_main">
			<div class="list_mainleft">
				<dl>
					<dt>实验教学</dt>
					<s:iterator value="pageBean.recordList">
						<dd class="cur">
							<a href="labsdesc?id=${id }&pageNum=${pageBean.currentPage }">${titles }</a>
						</dd>
					</s:iterator>
				</dl>
				<!-- 分页 -->
					<div class="pageing">
						<ul class="page">
							<li><a href="labsindex?pageNum=${pageNums -1}"><</a></li>
							<s:iterator begin="pageBean.beginPageIndex"
								end="pageBean.endPageIndex" var="pageNums">
								<li
									class="paginItem ${pageBean.currentPage==pageNums?'current':''}">
									<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
									<c:if test="${pageBean.currentPage == pageNums }">
										<a href="#" class="cur">${pageNums }</a>
									</c:if> <c:if test="${pageBean.currentPage != pageNums }">
										<a href="labsindex?pageNum=${pageNums }">${pageNums }</a>
									</c:if>
								</li>
							</s:iterator>

							<li><a href="labsindex?pageNum=${pageNums }">></a></li>
						</ul>
						<!-- <ul class="pageingtz">
							<li>跳转：<input type="text" class="input" />&nbsp;页&nbsp;<a
								href="#" class="a13">GO</a>
							</li>
						</ul> -->
					</div>
			</div>
			<div class="list_mainright">
				<div class="outer3 outer4 outer6">
					<div class="line"></div>
					<div class="list06">
						<div class="list06left list06left">
							<h4 class="h4">详细内容&nbsp;&nbsp;</h4>
						</div>
						<div class="list06right list06right licon">
							<span class="a13">当前位置：首页 > 实验教学</span>
						</div>
					</div>
					<ul>
					<!-- 详情 -->
					<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					<c:if test="${beans != null }">
					<div class="detail_title">
						<p class="title"><center>${beans.titles }</center></p>
						<br />
						<p><center>
							<span class="blue">信息来源：</span>郑轻软创&nbsp;&nbsp;&nbsp;&nbsp; <span
								class="blue">发布日期：</span>${beans.date }&nbsp;&nbsp;&nbsp;&nbsp; <span
								class="blue">浏览次数：</span>${beans.count }
						</p></center>
					</div>
					<br /> <br />
						${beans.context }
						<br /> <br />
					<div class="detail_foot">
						<p>郑州轻工业学院-软件综合实践与创新基地</p>
						<p>${beans.date }</p>
					</div>
					</c:if>
					<c:if test="${beans == null }">
						<center>请点击侧栏查看</center>
					</c:if>
					</ul>
					
				</div>
			</div>
		</div>
	</div>
	<%@include file="button.jspf"%>
</body>
</html>
