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
<title>诚信记录展示</title>
<link rel="stylesheet" type="text/css" href="css/table.css">
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
	<div id="box">
		<h1>所有学生诚信记录</h1>
<%-- 		<div class="list_search">
			<form action="ConManage!list" method="post">
				<label>搜索条件:</label> <select class="search_field" name="field">
					<option value="UserName">姓名</option>
					<option value="UserId">学号</option>
				</select> <input type="text" class="search_field" name="fvalue" /> <input
					class="button" type="submit" value="搜 索" />
			</form>
		</div> --%>
		<table id="mytable" cellspacing="0">
			<caption>
				<a href="integrity/add.jsp" class="add">添加</a>
			</caption>
			<tr>
				<th width="168" scope="col">学号</th>
				<th width="168" scope="col">名字</th>
				<th width="189" scope="col">时间</th>
				<th width="168" scope="col">地点</th>
				<th width="200" scope="col">类型</th>
				<th width="160" scope="col">详细信息</th>
			</tr>
			<s:iterator value="list">
				<tr>
					<td class="alt"><s:property value="StuId" /></td>
					<td class="alt"><s:property value="StuName" /></td>
					<td class="alt"><s:property value="occTime" /></td>
					<td class="alt"><s:property value="place" /></td>
					<td class="alt"><s:property value="type" /></td>
					<td class="alt"><s:property value="detail" /></td>
				</tr>
			</s:iterator>
		</table>

		<div class="list_footer">
			<s:url var="views" action="ConManage!list?"></s:url>
			<s:if test="field != null && fvalue != null">
				<s:set var="addone" value="'&field='+field+'&fvalue='+fvalue"></s:set>
			</s:if>
			<div class="page_control">
				<s:a href="%{views}page=1%{addone}">首页</s:a>
			</div>
			<div class="page_control">
				<s:if test="page == 1">上一页</s:if>
				<s:else>
					<s:a href="%{views}page=%{page-1}%{addone}">上一页</s:a>
				</s:else>
			</div>

			<div class="page_control">
				<s:if test="page == total">下一页</s:if>
				<s:else>
					<s:a href="%{views}page=%{page+1}%{addone}">下一页</s:a>
				</s:else>
			</div>

			<div class="page_control">
				<s:a href="%{views}page=%{total}%{addone}">尾页</s:a>
			</div>
			<div class="page_info">
				第
				<s:property value="page" />
				页/共
				<s:property value="total" />
				页
			</div>
			<div class="page_number">
				翻到第 <input id="page_number" type="text" name="page" /> 页
			</div>
			<div class="page_control page_go">
				<a href="">跳转</a>
			</div>
		</div>
	</div>

</body>
</html>