<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
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
<title>管理员个人信息显示</title>
</head>
<body>
	<table border="0" width="100%" cellspacing="0" cellpadding="0"
		height="100%">
		<tr>
			<td valign="top" height="8"></td>
		</tr>

		<tr>
			<td valign="top">
				<table border="0" width="100%" cellspacing="0" cellpadding="0"
					height="100%" id="table3" style="border: 1px solid #D7D7D7"
					bgcolor="#F7F7F7">
					<tr>
						<td valign="top">
							<div align="center">
								<table border="0" width="98%" cellspacing="0" cellpadding="0"
									height="100%">
									<tr>
										<td height="5"></td>
									</tr>
									<tr>
										<td valign="top">
										  <form action="User!editsub" method="post">
											<table border="0" width="100%" cellpadding="2" id="table5">
												<tr><td height="28" bgcolor="#F3E9F8" style="line-height: 150%">◆注意：请认真核对你的学籍信息，如果有问题请在规定时间内在网上提交修改申请，修改姓名、身份证号请联系学院教务主任。</td></tr>
												<tr><td height="10"></td></tr>
											</table> <s:set name="info" value="adminInfo" />

											<table border="1" width="100%" bordercolorlight="#808080" cellspacing="0" cellpadding="0" bordercolordark="#F7F7F7" id="table6">
												<tr><td height="50" colspan="5"><p align="center"><b><font style="font-size: 20px;" face="华文仿宋">西南交通大学茅以升学院网站管理员个人信息</font></b></p></td></tr>

												<tr>
													<td height="28" width="16%" bgcolor="#F1F5F5">&nbsp;姓&nbsp;&nbsp;&nbsp; 名</td>
													<td height="28" width="18%"><s:property value="#info.UserName" /></td>

													<td height="28" width="16%" bgcolor="#F1F5F5">&nbsp;性&nbsp;&nbsp;&nbsp; 别</td>
													<td height="28" width="30%"><s:property value="#info.gender" /></td>
												</tr>

												<tr>
													<td height="28" width="16%" bgcolor="#F1F5F5">&nbsp;电子邮件</td>
													<td height="28" width="18%">
													  <input name="Email" value="<s:property value="#info.email" />" type="text" />
													</td>

													<td height="28" width="16%" bgcolor="#F1F5F5">&nbsp;个人电话</td>
													<td height="28" width="30%">
													  <input name="phone" value="<s:property value="#info.phone" />" type="text" />
													</td>
												</tr>

												<tr>
													<td height="28" width="16%" bgcolor="#F1F5F5">&nbsp;担任职务</td>
													<td height="28" width="70%" colspan="3"><s:property value="#info.job" /></td>
												</tr>
											</table>
											<input type="submit" value="提交" />
										  </form>
										</td>
									</tr>
									<tr><td height="12"></td></tr>
								</table>
							</div></td>
					</tr>
				</table></td>
		</tr>

		<tr>
			<td valign="top" height="8"></td>
		</tr>
	</table>
</body>
</html>
