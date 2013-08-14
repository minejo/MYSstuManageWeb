<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN">
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<base href="<%=basePath%>">
<title>登录界面</title>
<link rel="stylesheet" rev="stylesheet" href="css/base.css"
	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/module.css"
	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/form.css"
	type="text/css" media="all">
</head>

<body class="background">

	<div class="indextop"></div>
	<div class="indexmid">
		<div class="toplogo">
			<FONT face="宋体"></FONT>
			<h6></h6>
		</div>
		<div class="daohang">登录系统</div>

		<div class="mainframe">
			<form name="Login" action="Login" method="post">
				<table id="Table1" cellSpacing="0" cellPadding="0" width="221"
					align="center">
					<tr>
						<td height="20"></td>
					</tr>
					<tr>

						<td><span>&nbsp;&nbsp;账号:</span></td>
						<td>
							<div id="username">
								<input name="UserId" type="text" value="学号/邮箱"
									onblur="(this.value=='')?this.value='学号/邮箱':this.value"
									onfocus="if(this.value=='学号/邮箱'){this.value='';};this.select();" />
							</div>
						</td>
					</tr>
					<tr>
						<td height="20"></td>
					</tr>
					<tr>
						<td><span>&nbsp;&nbsp;密码:</span></td>
						<td><input name="passwd" type="password" /></td>
					</tr>
					<tr>
						<td height="20"></td>
					</tr>
					<tr align="center">
						<td align="center" colSpan="2">
						<input type="submit"
							name="Button4" value="确　认" id="Button4" class="aspbutton" /> <input
							type="submit" name="Button5" value="关  闭" id="Button5"
							class="aspbutton" onclick="window.close();" />
						</td>
					</tr>
				</TABLE>
			
			</form>
	<%-- 		<s:debug></s:debug> --%>
		</div>
			<div align="left" style="margin-left: 10px">第一次登陆？
				<a href="user/stu/avt.jsp">学生预注册</a></div>
	</div>

	<div class="indexbot">西南交通大学茅以升学院 版权所有</div>
</body>
</html>
