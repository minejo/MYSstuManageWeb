<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>学生成绩导出</title>
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
	<div class="title">选择专业</div>
	<div class="notice">
	      <p>请选择对应的导出条件，如果为空，则认为导出该属性的所有数据
	</div>	
	<form action="csmgr!outputStuCs" method="post">
  	   <label>导出条件：</label>
  		<label>学号:</label><input name="UserId" type="text" />
  		<label>姓名:</label><input name="UserName" type="text" />
  		<label>班级:</label>
  		<select name="classid">
  		<s:iterator value="classlist"><option value="<s:property value="classid" />"><s:property value="classname" /></option></s:iterator>
  		</select>
  		<label>学期:</label>
		<select name="TermNum">
  		<s:iterator value="termlist"><option value="<s:property value="num" />"><s:property value="name" /></option></s:iterator>
  		</select>
  		<input type="submit" value="提交" />
  	</form>
</body>
</html>

