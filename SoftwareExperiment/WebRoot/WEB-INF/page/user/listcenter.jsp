<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
				中心概括<br /> Center Generalize
			</div>
		</div>
	</div>
	<div class="list_main">
		<div class="list_center_main">
			<div class="list_mainleft">
				<dl>
					<dt>栏目中心</dt>
					<!-- <dd class="cur">
						<a href="#">通知公告</a>
					</dd>
					 -->
						<s:iterator value="pageBean.recordList">
						<dd class="cur">
							<a href="centerfinds?id=${id }" target="main">${titles }</a>
						</dd>
					</s:iterator>
				</dl>
			</div>
			<div class="list_mainright" name="main">
			
				<div class="outer3 outer4 outer6">
					<div class="line"></div>
					<div class="list06">
						<div class="list06left list06left">
							<h4 class="h4">中心概括&nbsp;&nbsp;Center Generalize</h4>
						</div>
						<div class="list06right list06right licon">
							<span class="a13">当前位置：首页 > 中心概括</span>
						</div>
					</div>
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
						<center>暂无内容</center>
					</c:if>
				
				</div>
			</div>
		</div>
	</div>
	<%@include file="button.jspf"%>
</body>
</html>
