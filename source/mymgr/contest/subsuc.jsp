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
		<title></title>
	    <script type="text/javascript" src="js/jquery.js"></script>
	    <script type="text/javascript">
	    	$(document).ready(function () {
	    		alert("竞赛提交成功, 请耐心等待");
	    		window.location = "Contest!PreAdd";
	    	});
	    </script>
	</head>
	<body>
    </body>
</html>
