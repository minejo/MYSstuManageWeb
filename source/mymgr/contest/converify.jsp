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
<title>科创成绩审核</title>
<link rel="stylesheet" type="text/css" href="css/table.css">
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
	<s:debug></s:debug>
	<div id="box">
		<h1>所有待审核科创成果</h1>
		<table id="mytable" cellspacing="0">
			<tr>
				<th width="168" scope="col">获奖人</th>
				<th width="168" scope="col">学号</th>
				<th width="189" scope="col">奖项名称</th>
				<th width="189" scope="col">具体名称</th>
				<th width="168" scope="col">规模</th>
				<th width="200" scope="col">参赛人名单</th>
				<th width="200" scope="col">时间</th>
				<th width="160" scope="col">获奖照片</th>
				<th width="200" scope="col">审核</th>

			</tr>
			<s:iterator value="list">
				<tr>
					<td class="alt"><s:property value="UserName" /></td>
					<td class="alt"><s:property value="UserId" /></td>
					<td class="alt"><s:property value="ContestName" /></td>
					<td class="alt"><s:property value="title" /></td>
					<td class="alt"><s:property value="LevelName" /></td>
					<td class="alt"><s:property value="Crew" /></td>
					<td class="alt"><s:property value="ConTime" /></td>
					<td class="alt">
						<a href="common/picture/<s:property value="image"/>">
							<img src="common/picture/<s:property value="image"/>" height="80px" width="100px" />
						</a>
					</td>
					
					<td>
						<s:if test="HasSame==1">
						<s:a href="ConManage!Sameitem?UserId=%{UserId}&ContestId=%{ContestId}&term=%{Term}&ListId=%{Listid}">查看相似奖项</s:a>
						</s:if>
						<s:if test="HasSame==0">
						<form action="ConManage!pass" method="post">
						<span>
							<input id="page_number" type="text" name="Value" />
							<input type="hidden" name="ListId" value="<s:property value="Listid" />"/>
							<input type="hidden" name="term" value="<s:property value="Term" />"/>
							<input type="hidden" name="UserId" value="<s:property value="UserId" />"/>
							<input type="submit" value="通过" />
						</span>
						</form>
						<span><s:a href="ConManage!deny?ListId=%{Listid}">驳回</s:a></span>
						</s:if>
					</td>
				</tr>
			</s:iterator>
		</table>

		<div class="list_footer">
			<s:url var="views" action="ConManage!verList?"></s:url>
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