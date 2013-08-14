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
		<title>导师注册页面</title>
		<link rel="stylesheet" rev="stylesheet" href="css/base.css" type="text/css" media="all">
		<link rel="stylesheet" rev="stylesheet" href="css/module.css" type="text/css" media="all">
		<link rel="stylesheet" rev="stylesheet" href="css/form.css" type="text/css" media="all">
	</head>

	<body class="background">
		<div class="indextop"></div>
		<div class="indexmid">
			<div class="toplogo"><FONT face="宋体"></FONT></div>
			<div class="daohang">老师用户注册</div>
			<div id="Notice">注意：（ <font color="red">*</font>)项为必填选项，如有任何问题，请联系工作室，邮箱：jonathan1992lc@hotmail.com。</div>

			<form action="Regedit?user=2" method="post" enctype="multipart/form-data">
				<table align="center">
					<tr>
						<td><span>用户名:</span></td>
						<td><input type="text" name="tci.id" /></td>
					</tr>
					<tr>
						<td><span>姓名:</span></td>
						<td><input type="text" name="tci.name" /></td>
					</tr>
					<tr>
						<td><span>E-Mail:</span></td>
						<td><input type="text" name="tci.email" /></td>
					</tr>
					<tr>
						<td><span>密码:</span></td>
						<td><input type="password" name="tci.pwd" /></td>
					</tr>
					<tr>
						<td><span>确认密码:</span></td>
						<td><input type="password" name="conpwd" /></td>
					</tr>
					<tr>
						<td><span>性别:</span></td>
						<td>
							<select name="tci.gender">
								<option value="0">男</option>
								<option value="1">女</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><span>出生日期:</span></td>
						<td><input type="text" name="tci.birthday" /></td>
					</tr>
					<tr>
						<td><span>职称:</span></td>
						<td>
							<select name="tci.title">
								<option value="助教">助教</option>
								<option value="讲师">讲师</option>
								<option value="副教授">副教授</option>
								<option value="教授">教授</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><span>学院:</span></td>
						<td><input type="text" name="tci.college" /></td>
					</tr>
					<tr>
						<td><span>专业方向:</span></td>
						<td><input type="text" name="tci.major" /></td>
					</tr>
					<tr>
						<td><span>个人电话:</span></td>
						<td><input type="text" name="tci.phone" /></td>
					</tr>
					<tr>
						<td><span>科研经历:</span></td>
						<td><textarea rows="8" cols="20" name="tci.experience`"></textarea></td>
					</tr>
					<tr>
						<td><span>自我说明:</span></td>
						<td><textarea rows="8" cols="20" name="tci.selfintroduce"></textarea></td>
					</tr>
					<tr>
						<td><span>个人照片:</span></td>
						<td><input type="file" name="image.file" /></td>
					</tr>
					<tr height="30"></tr>
					<tr align="center">
						<td><input type="submit" value="提交" /></td>
						<td><input value="重置" type="reset" /></td>
					</tr>
					<tr height="30"></tr>
				</table>
			</form>
		</div>
		<div class="indexbot">西南交通大学茅以升学院 版权所有</div>
	</body>
</html>
