<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>诚信违规记录审核结果</title>
  </head>
  <body>
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
  </body>
</html>
