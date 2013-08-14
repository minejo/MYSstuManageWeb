<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>竞赛项目详细</title>

<link rel="stylesheet" rev="stylesheet" href="css/module.css"
	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/form.css"
	type="text/css" media="all">

</head>
<body>
	<div class="daohang">
		<h2>竞赛项目信息</h2>
	</div>
	<div class="mainframe">

		竞赛编号:
		<s:property value="item.ContestID" />
		<p>
		竞赛名称:
		<s:property value="item.ContestName" />
		<p>竞赛简介:
		<s:property value="item.ContestInfo" />
		<div align="center">
			<span><a href="ConManage!showConItem">点此返回</a> </span>
		</div>
	</div>
</body>
</html>
