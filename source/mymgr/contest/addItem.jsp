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
<title>添加竞赛项目</title>
<link rel="stylesheet" rev="stylesheet" href="css/base.css"  type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/module.css" 	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/form.css" 	type="text/css" media="all">
<script type="text/javascript" src="js/jquery.js"></script>
<%-- <script type="text/javascript" src="js/Validform_v5.js"></script>
<script type="text/javascript">
	$(function() {
		//$(".registerform").Validform();  //就这一行代码！;

		$(".add").Validform({
			tiptype : 2
		});
	})
</script> --%>
</head>
<body>
	<div class="daohang">
		<h2>添加竞赛项目</h2>
	</div>
	<div class="mainframe">

		<form action="ConManage!add" method="post" class="add">
			<table align="center" width="70%" style="table-layout:fixed;">
				<tr>
					<th>竞赛编号:</th>
					<td><input type="text" name="ContestId" datatype="s1-18" />
					</td>
					<td><div class="Validform_checktip">编号可为竞赛缩写</div>
					</td>

				</tr>
				<tr>
					<th>竞赛名称:</th>
					<td><input type="text" name="ContestName" datatype="*" />
					</td>
					<td><div class="Validform_checktip"></div>
					</td>
				</tr>
				<tr>
					<th>竞赛简介:</th>
					<td><textarea name="ContestInfo" datatype="*"></textarea>
					</td>
					<td><div class="Validform_checktip">该竞赛的相关信息介绍</div>
					</td>
				</tr>
				<tr height="20"></tr>
				<tr align="center">
					<td><input type="submit" value="提交" />
					</td>
					<td><input type="reset" value="重设" />
					</td>
				</tr>
			</table>
			<div id="postmessage">
			<div class="wrong">
				<s:iterator value="errors">
					<span><s:property /> </span>
				</s:iterator>
			</div>

			<div class="right">
				<s:iterator value="actionMessages">
					<s:property /> 
				</s:iterator>
			</div>
		</div>
		</form>
	</div>
</body>
</html>
