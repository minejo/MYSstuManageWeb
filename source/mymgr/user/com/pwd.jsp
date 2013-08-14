<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>修改密码</title>
<link rel="stylesheet" rev="stylesheet" href="css/module.css"
	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/form.css"
	type="text/css" media="all">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/Validform_v5_min.js"></script>
<%-- <script type="text/javascript">
	$(function() {
		//$(".registerform").Validform();  //就这一行代码！;

		$(".changepasform").Validform({
			tiptype : 2
		});
	})
</script> --%>
</head>

<body>
	<div class="daohang">修改密码</div>
	<div class="mainframe">
		<form action="User?type=changePassWD" method="post"
			class="changepasform">
			<table width="45%" style="table-layout:fixed;" align="center">
				<tr>
					<td height="20"></td>
				</tr>
				<tr>
					<td><span>&nbsp;&nbsp;原始密码:</span></td>
					<td><input name="oldpasswd" type="password" datatype="*6-15"
						errormsg="密码范围在6~15位之间！" /></td>
					<td><div class="Validform_checktip"></div>
					</td>
				</tr>
				<tr>
					<td height="20"></td>
				</tr>
				<tr>
					<td><span>&nbsp;&nbsp;新密码:</span></td>
					<td><input name="newpasswd" type="password" datatype="*6-15"
						errormsg="密码范围在6~15位之间！" /></td>
					<td><div class="Validform_checktip"></div>
					</td>
				</tr>
				<tr>
					<td height="20"></td>
				</tr>
				<tr>
					<td><span>&nbsp;&nbsp;确认新密码:</span></td>
					<td><input name="conpasswd" type="password" datatype="*"
						recheck="userpassword" errormsg="您两次输入的账号密码不一致！" /></td>
					<td><div class="Validform_checktip"></div>
					</td>
				</tr>
				<tr>
					<td height="30"></td>
				</tr>
				<tr>
					<td align="center" colSpan="2"><input type="submit"
						value="确　认" class="aspbutton" /> <input type="reset" value="关  闭" />
					</td>
				</tr>
			</TABLE>
		</form>
	</div>
</body>
</html>
