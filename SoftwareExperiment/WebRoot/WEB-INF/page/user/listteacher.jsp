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
				师资队伍<br /> Our teachers
			</div>
		</div>
	</div>
	<div class="list_main">
		<div class="list_center_main">
			<div class="list_mainleft">
				<dl>
					<dt>栏目中心</dt>
					<s:iterator value="pageBean.recordList">
						<dd class="cur">
							<a class="teacherCard" href="teacherdesc?id=${id }"> <img
								src="${pageContext.request.contextPath }/user/Images/temp.jpg"></img>
								<div class="TCdtl">
									<p>
										姓名：<span>${titles }</span>
									</p>
									<p>
										职称：<span>学生</span>
									</p>
									<p>
										聘用时间：<span>2014</span>
									</p>
								</div> </a>
						</dd>
					</s:iterator>
				</dl>
			</div>
			<div class="list_center">
				<div class="list_mainright">
					<div class="outer3 outer4 outer6">
						<div class="line"></div>
						<div class="list06">
							<div class="list06left list06left">
								<h4 class="h4">通知公告&nbsp;&nbsp;Announcements</h4>
							</div>
							<div class="list06right list06right licon">
								<span class="a13">当前位置：首页 > 通知公告</span>
							</div>
						</div>

						<!-- 详情 -->
						<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
						<c:if test="${beans != null }">
							<div class="detail_title">
								<p class="title">${beans.titles }</p>
								<br />
								<p>
									<span class="blue">信息来源：</span>郑轻软创&nbsp;&nbsp;&nbsp;&nbsp; <span
										class="blue">发布日期：</span>${beans.date
									}&nbsp;&nbsp;&nbsp;&nbsp; <span class="blue">浏览次数：</span>${beans.count
									}
								</p>
							</div>
							<br />
							<br />
						${beans.context }
						<br />
							<br />
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
	</div>
	<%@include file="button.jspf"%>
</body>
</html>
