<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Test Success</title>
	</head>
	<body>
		<s:property value="#session.OnLineInfo.type" />
		<s:property value="#session.OnLineState"/>
		<s:if test="#session.OnLineState == 'Success'">
		<s:set name="UserType" value="#session.OnLineInfo.AccTyp" />
			<!-- 这里换成延时跳转 -->
			<form>
				<script type="text/javascript">
				<s:if test="#UserType == 0">
						window.location = "user/stu/Index.jsp";
	  			</s:if>
	  			<s:if test="#UserType == 1">
	  				window.location = "user/tea/Index.jsp";
	  			</s:if>
	  			<s:if test="#UserType == 2">
	  				window.location = "user/adm/Index.jsp";
	  			</s:if>
				</script>
			</form>
		</s:if>
    	This is my JSP page. <br>
    </body>
</html>
