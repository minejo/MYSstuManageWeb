<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>专业导师选择结果(Student)</title>
    <link rel="stylesheet" type="text/css" href="css/table.css">
    <script type="text/javascript" src="js/jquery.js"></script>
  </head>
  
  <body>
  	<table id="mytable" cellspacing="0">
  		<tr>
			<th>第一专业</th>
			<th>第二专业</th>
			<th>第三专业</th>
			<th>第一导师</th>
			<th>第二导师</th>
			<th>第三导师</th>
		</tr>
		<tr>
			<td><s:property value="info.FNMajor" /></td>
			<td><s:property value="info.SNMajor" /></td>
			<td><s:property value="info.TNMajor" /></td>
			<td><s:property value="info.FNTutor" /></td>
			<td><s:property value="info.SNTutor" /></td>
			<td><s:property value="info.TNTutor" /></td>
		</tr>
  	</table>
  </body>
</html>
