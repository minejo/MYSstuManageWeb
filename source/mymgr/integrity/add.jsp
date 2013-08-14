<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>添加诚信记录</title>
<link rel="stylesheet" rev="stylesheet" href="css/base.css"
	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/module.css"
	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/form.css"
	type="text/css" media="all">
<script type="text/javascript" src="js/jquery.js"></script>
<script src="js/dataPicker/WdatePicker.js" type="text/javascript"></script>
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
<%-- <s:debug></s:debug> --%>
	<div class="daohang">
		<h1>添加诚信记录</h1>
	</div>
	<div id="postmessage">
		<div class="wrong">
			<s:iterator value="errors">
				<span><s:property /> </span>
			</s:iterator>
		</div>

		<div class="right">
			<s:iterator value="actionMessages">
				<span><s:property />
				</span>
			</s:iterator>
		</div>
	</div>
	<div class="mainframe">
		<form action="inte!add" method="post" class="add">
			<table align="center" width="70%" style="table-layout:fixed;">
				<tr>
					<th>学号:</th>
					<td><input type="text" name="item.StuId" datatype="n8-8"
						errormsg="学号格式不对" />
					</td>
					<td><div class="Validform_checktip"></div></td>
				</tr>
				<tr>
					<th>时间:</th>
					<td><input type="text" name="item.occTime" readonly="readonly"
						onClick="WdatePicker()" />
					</td>
					<td><div class="Validform_checktip">记录发生时间</div></td>
				</tr>

				<tr>
					<th>地点</th>
					<td><input type="text" name="item.place" datatype="*" />
					</td>
					<td><div class="Validform_checktip">记录发生地点</div></td>
				</tr>

				<tr>
					<th>类型:</th>
					<td><select name="item.type" datatype="*">
							<option value="1">考试作弊</option>
							<option value="2">抄袭作业</option>
							<option value="3">其他</option>
					</select></td>
				</tr>

				<tr>
					<th>详细信息:</th>
					<td><textarea name="item.detail" datatype="*"></textarea>
					</td>
					<td><div class="Validform_checktip">该记录的详细信息</div></td>
				</tr>
				<tr height="20"></tr>
				<tr align="center">
					<td><input type="submit" value="提交" />
					</td>
					<td><input type="reset" value="重设" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
