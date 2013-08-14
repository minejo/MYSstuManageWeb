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
    
    <title>删除提示页面</title>
  </head>
  
  <body>
  <s:debug></s:debug>
  <div><s:iterator value="fieldErrors.error"><s:property /></s:iterator></div>
  <div><s:iterator value="actionMessages"><s:property /></s:iterator></div>
  </body>
</html>
