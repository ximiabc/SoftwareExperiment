<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/ueditor/themes/default/css/ueditor.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.all.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>

<body>
	<script type="text/javascript">
		var ue = UE.getEditor('editor');
	</script>
	
	<form action="newswrite">
		<center>请添加新闻标题：<input type="text" name="titles"></center>
		<script name="context" id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
		<input type="submit" name="提交">
	</form>
</body>
</html>