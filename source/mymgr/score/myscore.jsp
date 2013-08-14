<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>我的所有成绩</title>
<link rel="stylesheet" type="text/css" href="css/table.css">
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
<%-- <s:debug></s:debug> --%>
	<div id="box">
		<h1>我的所有成绩</h1>
		<div class="list_search">
			<form action="score!myscore" method="post">
				<label>搜索条件:</label>
				<select class="search_field" name="TermNum">
				<s:iterator value="termlist"><option value="<s:property value="num" />"><s:property value="name" /></option></s:iterator>
				</select>
				<input class="button" type="submit" value="搜 索" />
			</form>
		</div>
		<table id="grade" cellspacing="0" align="center">
			<tr>
				<th width="160" scope="col">课程代码</th>
				<th width="160" scope="col">课程名称</th>
				<th width="160" scope="col">成绩</th>
				<th width="160" scope="col">学期</th>
			</tr>
			<s:iterator value="scorelist">
				<tr>
					<td class="alt"><s:property value="CourseId" /></td>
					<td class="alt"><s:property value="CourseName" /></td>
					<td class="alt"><s:property value="Score" /></td>
					<td class="alt"><s:property value="TermNum" /></td>
				</tr>
			</s:iterator>
			<tr>
				<td height="30px"></td>
			</tr>
		</table>

		<table id="contest" cellspacing="0"  align="center">
			<tr>
				<th width="150" scope="col">奖项名称</th>
				<th width="150" scope="col">具体名称</th>
				<th width="140" scope="col">时间</th>
				<th width="100" scope="col">规模</th>
				<th width="80" scope="col">加分数</th>
			</tr>
			<s:iterator value="contestlisr">
				<tr>
					<td class="alt"><s:property value="ContestName" /></td>
					<td class="alt"><s:property value="title" /></td>
					<td class="alt"><s:property value="ConTime" /></td>
					<td class="alt"><s:property value="LevelName" /></td>
					<td class="alt"><s:property value="AddValue" /></td>
				</tr>
			</s:iterator>
			<tr>
				<td height="30px"></td>
			</tr>
		</table>

		<table id="all" cellspacing="0"  align="center">
			<tr>
				<th width="160" scope="col">平均分</th>
				<th width="160" scope="col">科创加分</th>
				<th width="160" scope="col">综合分数</th>
				<th width="160" scope="col">综合排名</th>
			</tr>
			<tr>
				<td class="alt"><s:property value="averScore.aveScore" /></td>
				<td class="alt"><s:property value="averScore.extraScore" /></td>
				<td class="alt"><s:property value="averScore.TotalValue" /></td>
				<td class="alt"><s:property value="averScore.Range" /></td>
			</tr>
		</table>
	</div>

</body>
</html>