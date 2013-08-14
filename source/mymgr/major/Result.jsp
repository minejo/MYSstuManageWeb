<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>操作结果</title>

  </head>
  
  <body>
  <div class="wrong">
	<s:iterator value="errors"><span><s:property /> </span></s:iterator>
  </div>
  
  <div class="right">
  	<s:iterator value="actionMessages"><span><s:property /></span></s:iterator>
  </div>
  </body>
</html>
