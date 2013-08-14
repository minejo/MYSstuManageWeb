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

<title>关于本站</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="utf-8">
<meta content="all" name="robots">
<meta name="author" content="茅以升学院网络工作组">
<meta name="Copyright" content="西南交通大学茅以升学院">
<meta name="description" content="西南交通大学茅以升学院">
<link rel="stylesheet" rev="stylesheet" href="css/base.css"
	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/module.css"
	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/form.css"
	type="text/css" media="all">

</head>

<body>
	<div class="title">
	关于本站 <br/><br/><br/>
	*网站作者：李超 薛铭乾 蔡少阳 <br/>
	*指导老师：张国正 <br/>
	<br/><br/><br/><br/>
	Copyright©2013 Southwest Jiaotong University, School of Maoyisheng</div>


</body>
</html>
