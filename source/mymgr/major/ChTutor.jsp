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

<title>学生选导师页面</title>

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
	<%-- <s:debug></s:debug> --%>
	<div class="title">选择导师</div>
	<form action="Major!subtu" method="post">
		<table align="center">
			<tr><td height="20"></td></tr>
			<s:if test="term==1">
			<tr>
				<td width="78"><span>你的专业:</span></td>
				<td>
					<select name="MFirst">
					<s:iterator value="majorItem"><option value="<s:property value="MajorName" />"><s:property value="MajorName" /></option></s:iterator>
					</select>
				</td>
			</tr>
			</s:if>
			<s:if test="term==2">
			<tr>
				<td><span>导师一:</span></td>
				<td>
					<select name="mi.FCTutor">
					<s:iterator value="tl"><option value="<s:property value="UserId" />"><s:property value="UserName" /></option></s:iterator>
					</select>
				</td>
			</tr>
			<tr><td height="10"></td></tr>
			<tr>
				<td><span>导师二:</span></td>
				<td>
					<select name="mi.SCTutor">
					<s:iterator value="tl"><option value="<s:property value="UserId" />"><s:property value="UserName" /></option></s:iterator>
					</select>
				</td>
			</tr>
			<tr><td height="10"></td></tr>
			<tr>
				<td><span>导师三:</span></td>
				<td>
					<select name="mi.TCTutor">
					<s:iterator value="tl"><option value="<s:property value="UserId" />"><s:property value="UserName" /></option></s:iterator>
					</select>
				</td>
			</tr>
			</s:if>
			<tr ><td height="15"></td></tr>
			<tr align="center">
				<td><input type="submit" value="提交" />
				</td>
				<td><input type="reset" value="重设" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
