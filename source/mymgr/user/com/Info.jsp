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
	  	<title>个人信息</title>
	  </head>
	  
	  <body>
	  	<s:set name="UserType" value="#session.OnLineInfo.AccTyp" />
	  	<s:if test="#UserType == 0">
	  		<jsp:include page="../stu/Info.jsp"></jsp:include>
	  	</s:if>
	  	<s:if test="#UserType == 1">
	  		<jsp:include page="../tea/Info.jsp"></jsp:include>
	  	</s:if>
	  	<s:if test="#UserType == 2">
	  		<jsp:include page="../adm/Info.jsp"></jsp:include>
	  	</s:if>
	  </body>
</html>
