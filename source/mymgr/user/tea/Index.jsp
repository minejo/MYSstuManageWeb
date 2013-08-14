<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>茅以升学院学生管理系统--导师主界面</title>
	</head>
   <body>
     <table border="0" width="100%" cellspacing="0" cellpadding="0" id="table1" height="100%">
      <tbody>
       <tr><td height="80" style="background-image:url(image/logo.jpg); background-repeat:no-repeat"></td></tr>
       <tr>
       	<td height="30" style="background-image:url(image/sys_line.jpg); background-repeat:x-repeat">
       		用户：<s:property value="#session.OnLineInfo.UserId"/>
       		姓名：<s:property value="#session.OnLineInfo.UserName"/>
       		&nbsp;&nbsp;
       		IP: <s:property value="#session.OnLineInfo.ipAddr"/>
       	</td>
       </tr>
       <tr>
         <td valign="top">
           <table border="0" width="100%" cellspacing="0" cellpadding="0" height="100%" id="table3">
           	<tbody>
           		<tr>
           			<td width="184" valign="top">
           				<iframe name="I1" src="user/tea/menu.jsp" height="100%" width="100%" scrolling="auto" frameborder="0">
           				浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
           				</iframe>
           			</td>
           			<td width="13" style="background-image:url(image/sys_left2.jpg); background-repeat:y-repeat""></td>
           			<td bgcolor="#F7FAFF" valign="top">
           				<iframe height="100%" width="100%" src="user/com/main.jsp" scrolling="auto" frameborder="0" name="mainFrame">
										浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
									</iframe>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
