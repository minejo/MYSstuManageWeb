<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>所有竞赛奖项显示</title>
<link rel="stylesheet" type="text/css" href="css/table.css">
</head>
<body>
	<div id="box">
		<h2>竞赛项目列表</h2>

		<table id="mytable" cellspacing="0">
			<caption>
				<a href="contest/addItem.jsp" class="add">添加</a>
			</caption>
			<tr>
				<th width="118" scope="col" abbr="Configurations">竞赛编号</th>
				<th width="168" scope="col" abbr="Dual 1.8">竞赛名称</th>
				<th width="118" scope="col" abbr="Dual 2">相关信息</th>
				<th width="150" scope="col" abbr="Dual 2.5">操作</th>
			</tr>
			<s:iterator value="Itemlist"><tr>
				<td><s:property value="ContestID"/></td>
				<td><s:property value="ContestName"/></td>
				<td><s:property value="ShortInfo"/></td>
				<td>
					<s:a href="ConManage!ItemDetail?ContestId=%{ContestID}">详细</s:a>
					<s:a href="ConManage!delItem?ContestId=%{ContestID}">删除</s:a></td>
			</tr></s:iterator>
		</table>
		
	</div>
</body>
</html>
