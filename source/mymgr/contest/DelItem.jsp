<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>竞赛项目删除</title>
<link rel="stylesheet" rev="stylesheet" href="css/form.css" type="text/css" media="all">
</head>

<body>

	<div id="postmessage">
		<div class="wrong">
			<s:iterator value="errors">
				<span><s:property /> </span>
			</s:iterator>
			
		</div>

		<div class="right">
			<s:iterator value="actionMessages">
				<span><s:property /></span>
			</s:iterator>
		</div>
		
		<div align="center"><span><a href="ConManage!showConItem">点此返回</a></span></div>
	</div>
</body>
</html>
