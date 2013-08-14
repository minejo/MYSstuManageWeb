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

<title>学生选专业页面</title>

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
	<!-- <div class="notice">
	      <p>选择专业须要有入学专业，平均分，年级排名等数据，如果页面上没显示，则说明管理员还没有导入成绩</p>
	      <p>请等待管理员导入成绩后再选择专业</p>
	</div> -->
	<div class="wrong">
		<s:iterator value="errors"><span><s:property /></span></s:iterator>
	</div>
	<form action="Major!submj" method="post">
		<table align="center">
			<tr>
				<td height="20"></td>
			</tr>
			<%-- <tr>
				<td width="88"><span>平均分:</span></td>
				<td width="162">
					<label title=""><s:property value="info.aveScore" /></label>
				</td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td><span>年级排名:</span></td>
				<td>
					<label title=""><s:property value="info.aveRank" /></label>
				</td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td><span>入学录取专业:</span></td>
				<td><label title=""><s:property value="info.admitmajor" /></label></td>
			</tr>
			<tr><td height="10"></td></tr> --%>
			<tr>
				<td><span>第一专业:</span>
				</td>
				<td>
					<select name="MFirst">
					<s:iterator value="majorItem"><option value="<s:property value="MajorName" />"><s:property value="MajorName" /></option></s:iterator>
					</select>
				</td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td><span>第二专业:</span></td>
				<td>
					<select name="MSecond">
					<s:iterator value="majorItem"><option value="<s:property value="MajorName" />"><s:property value="MajorName" /></option></s:iterator>
					</select>
				</td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td><span>第三专业:</span></td>
				<td>
					<select name="MThird">
					<s:iterator value="majorItem"><option value="<s:property value="MajorName" />"><s:property value="MajorName" /></option></s:iterator>
					</select>
				</td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>

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
