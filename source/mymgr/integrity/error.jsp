<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>错误</title>
    <link rel="stylesheet" rev="stylesheet" href="css/form.css" type="text/css" media="all">
  </head>
  <body>
  	<div id="postmessage">
		<div class="wrong">
			<s:iterator value="errors">
				<span><s:property /> </span>
			</s:iterator>
			
		</div>

		<div class="right">
			<s:iterator value="actionMessages">
				<span><s:property /></span>
			</s:iterator>
		</div>
		
		<div align="center"><span><a href="inte!verify?page=1">点此返回</a></span></div>
	</div>
  </body>
</html>
