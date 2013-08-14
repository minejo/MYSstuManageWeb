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
		<div id="stu" class="subtitle">
			<img id="imgstu" src="image/close_top.gif" />&nbsp;学生信息
		</div>
		<div id="substu" class="subtree">
			<div><a href="User?type=getUserInfo" target="mainFrame">个人信息</a></div>
			<!-- <div><a href="student/EditInfo.jsp" target="mainFrame">修改信息</a></div> -->
			<div><a href="user/com/pwd.jsp" target="mainFrame">修改密码</a></div>
		</div>

		<!-- <div id="couse" class="subtitle">
			<img id="imgcouse" src="image/close_top.gif" />&nbsp;学生课表
		</div>
		<div id="subcouse" class="subtree">
			<div><a  target="mainFrame">整学期课表</a></div>
			<div><a  target="mainFrame">各星期课表</a></div>
		</div> -->

		<div id="score" class="subtitle">
			<img id="imgscore" src="image/close_top.gif" />个人科创管理
		</div>
		<div id="subscore" class="subtree">
			<div><a href="score!premyscore" target="mainFrame">我的成绩</a></div>
		<!--  		<div><a  target="mainFrame">以往所有成绩</a></div> -->
			<div><a href="Contest!list?page=1" target="mainFrame">我的科创成绩</a></div>
			<div><a href="Contest!PreAdd" target="mainFrame">提交科创成果</a></div>
	<!-- 		<div><a  target="mainFrame">学分绩点</a></div> -->
		</div>
		 
		<div id="major" class="subtitle">
			<img id="imgmajor" src="image/close_top.gif" />&nbsp;专业信息
		</div>
		<div id="submajor" class="subtree">
			<div><a href="Major!pamj" target="mainFrame">选择专业</a></div>
			<div><a href="Major!patt" target="mainFrame">选择导师</a></div>
			<div><a href="Major!MyMajor" target="mainFrame">专业、导师选择查看</a></div>
			<!-- <div><a  target="mainFrame">选专业结果</a></div>
             <div><a  target="mainFrame">选导师结果</a></div>		 -->
		</div>

		<div id="message" class="subtitle">
			<img id="imgmessage" src="image/close_top.gif" />&nbsp;帮助
		</div>
		<div id="submessage" class="subtree">			
			<div><a href="mailto:jonathan1992lc@gmail.com" target="mainFrame">联系我们</a></div>
		<div><a href="common/About.jsp" target="mainFrame">关于本站</a></div>
		</div>

		<br>
		<div><a href="Login!logout" target="_parent">退出登录</a></div>
	</body>
</html>