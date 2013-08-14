<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/menu_styles.css">
<script type="text/javascript" src="js/menu.js"></script>
</head>

<body>
	<div class="subtitle" id="tea">
		<img src="image/close_top.gif" id="imgtea" />导师信息
	</div>

	<div class="subtree" id="subtea">
		<div>
			<a href="User?type=getUserInfo" target="mainFrame">个人信息</a>
		</div>
		<!-- <div><a href="tutor/EditInfo.jsp" target="mainFrame">修改信息</a></div> -->
		<div>
			<a href="user/com/pwd.jsp" target="mainFrame">修改密码</a>
		</div>
	</div>
	
	<div class="subtitle" id="integ">
		<img src="image/close_top.gif" id="imginteg" />诚信系统
	</div>

	<div class="subtree" id="subinteg">
		<div><a href="integrity/add.jsp" target="mainFrame">提交诚信记录</a></div>		
	</div>

	<div class="subtitle" id="searchstu"><img src="image/close_top.gif" />查询学生相关信息</div>
	<div class="subtree" id="subsearchstu">
		<div><a href="User!mulist" target="mainFrame">学生信息</a></div>
	</div>



	<div id="message" class="subtitle">
		<img id="imgmessage" src="image/close_top.gif" />帮助
	</div>
	<div id="submessage" class="subtree">
		<div>
			<a href="mailto:jonathan1992lc@gmail.com"
				target="mainFrame">联系我们</a>
		</div>
		<div><a href="common/About.jsp" target="mainFrame">关于本站</a></div>
		<!-- 	<div><a  target="mainFrame">查看留言</a></div>  -->
	</div>	

	<br>
	<div>
		<a href="Login!logout" target="_parent">退出登录</a>
	</div>
</body>
</html>