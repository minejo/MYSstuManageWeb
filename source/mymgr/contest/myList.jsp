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
<title>我的竞赛项目列表</title>
<link rel="stylesheet" type="text/css" href="css/table.css">
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
	<div id="box">
		<h1>我的竞赛项目列表</h1>
		<table id="mytable" cellspacing="0">
			<caption>
				<a href="" class="add">添加</a>
			</caption>
			<tr>
				<th width="110px" scope="col">获奖人</th>
				<th width="110" scope="col">学号</th>
				<th width="220px" scope="col">奖项名称</th>
				<th width="250" scope="col">具体名称</th>
				<th width="220" scope="col">时间</th>
				<th width="220" scope="col">规模</th>
				<th width="260" scope="col">参赛人名单</th>
				<th width="160" scope="col">获奖照片</th>
				<th width="200" scope="col">状态</th>
			</tr>
			<s:iterator value="list">
				<tr>
					<td class="alt"><s:property value="UserName" /></td>
					<td class="alt"><s:property value="UserId" /> </td>
					<td class="alt"><s:property value="ContestName" /> </td>
					<td class="alt"><s:property value="title" /></td>
					<td class="alt"><s:property value="ConTime" /></td>
					<td class="alt"><s:property value="LevelName" /> </td>
					<td class="alt"><s:property value="Crew" /> </td>
					<td class="alt">
						<a href="common/picture/<s:property value="image"/>" target="_blank">
							<img src="common/picture/<s:property value="image"/>"height="80px" width="100px" />
						</a>
					</td>
					<td class="alt">
						<s:if test="IsVerify == 1">没审核</s:if>
						<s:if test="IsVerify == 0">审核通过</s:if>
						<s:if test="IsVerify == -1">审核驳回　<s:a href="Contest!delItem?listId=%{Listid}">删除</s:a></s:if>
					</td>

				</tr>
			</s:iterator>
		</table>

		<div class="list_footer">
			<s:url var="views" action="Contest!list?"></s:url>
			<div class="page_control">
				<s:a href="%{views}page=1">首页</s:a>
			</div>
			<div class="page_control">
				<s:if test="page == 1">上一页</s:if>
				<s:else>
					<s:a href="%{views}page=%{page-1}">上一页</s:a>
				</s:else>
			</div>

			<div class="page_control">
				<s:if test="page == total">下一页</s:if>
				<s:else>
					<s:a href="%{views}page=%{page+1}">下一页</s:a>
				</s:else>
			</div>

			<div class="page_control">
				<s:a href="%{views}page=%{total}">尾页</s:a>
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