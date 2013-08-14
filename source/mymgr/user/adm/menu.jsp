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
	<div id="admin" class="subtitle"><img src="image/close_top.gif" /><span>管理员信息</span></div>
	<div id="subadmin" class="subtree">
		<div><a href="User?type=getUserInfo" target="mainFrame">个人信息</a></div>
		<!-- <div><a href="admin/EditInfo.jsp" target="mainFrame">修改信息</a></div> -->
		<div><a href="user/com/pwd.jsp" target="mainFrame">修改密码</a></div>
	</div>

	<div id="stu" class="subtitle"><img src="image/close_top.gif" /><span>用户查询</span></div>
	<div id="substu" class="subtree">
		<div><a href="User!mulist" target="mainFrame">所有学生信息 </a></div>
		<div><a href="User!tlist" target="mainFrame">所有导师信息</a></div> 
	</div>
	
	<div id="Cscore" class="subtitle"><img src="image/close_top.gif" /><span>成绩管理</span></div>
	<div id="subCscore" class="subtree">
		<div><a href="mgr/course.jsp" target="mainFrame">添加课程</a></div>
		<div><a href="csmgr!cslist" target="mainFrame">课程列表</a></div> 
		<div><a href="csmgr!presstucs" target="mainFrame">学生成绩导出</a></div>
	</div>	
	
	<div id="comp" class="subtitle"><img src="image/close_top.gif" /><span>竞赛项目管理</span></div>
	<div id="subcomp" class="subtree">
		<div><a href="contest/addItem.jsp"  target="mainFrame">添加竞赛项目</a></div>
	    <div><a  href="ConManage!showConItem" target="mainFrame">竞赛项目列表</a></div>
	</div>
	
	<div id="integ" class="subtitle"><img src="image/close_top.gif" /><span>诚信管理</span></div>
	<div id="subinteg" class="subtree">
		<div><a href="integrity/add.jsp"  target="mainFrame">添加诚信记录</a></div>
	    <div><a href="inte!list?page=1" target="mainFrame">所有诚信记录</a></div>
	    <div><a href="inte!verify?page=1" target="mainFrame">审核诚信记录</a></div>
	</div>
	
	<div id="score" class="subtitle"><img src="image/close_top.gif" /><span>学生科创管理</span></div>
	<div id="subscore" class="subtree">
		<div><a href="ConManage!list?page=1" target="mainFrame">科创竞赛查询</a></div>
		<div><a href="ConManage!verList?page=1" target="mainFrame">科创提交审批</a></div>
	</div>

	<div id="major" class="subtitle"><img src="image/close_top.gif" /><span>学生专业信息</span></div>
	<div id="submajor" class="subtree">
		<!-- <div><a target="mainFrame">导师信息</a></div> -->
		<div><a href="Major!MList" target="mainFrame">学生选专业结果</a></div>
		<div><a href="Major!TList" target="mainFrame">学生选导师结果</a></div>
	</div>
	
	<div id="loadin" class="subtitle"><img src="image/close_top.gif" /><span>信息导入</span></div>
	<div id="subloadin" class="subtree">
		<div><a href="mgr/scoreupload.jsp" target="mainFrame">学生课程成绩导入</a></div>
		<div><a href="csmgr!cslist" target="mainFrame"></a></div> 
	</div>

	<!-- <div id="stuMange" class="subtitle"><img src="image/close_top.gif" /><span>学生管理</span></div>
	<div id="substuMange" class="subtree">
		<div><a target="mainFrame">增加学生</a></div>
		<div><a target="mainFrame">删除学生</a></div>
	</div> -->

<!-- 	<div id="newManage" class="subtitle"><img src="image/close_top.gif" /><span>新闻管理</span></div>
	<div id="subnewManage" class="subtree">
		<div><a href="News?type=addNewsBefore" target="mainFrame">添加新闻</a></div>
		<div><a href="News?type=viewNews" target="mainFrame">新闻管理 </a></div>
	</div> -->

	<!-- <div id="message" class="subtitle">
		<img src="image/close_top.gif" /><span>留言板</span>
	</div>
	<div id="submessage" class="subtree">
		<div>
			<a  target="mainFrame">联系工作室</a>
		</div>
		<div>
			<a  target="mainFrame">留言管理</a>
		</div>
	</div> -->
	<br />

	<div>
		<a href="Login!logout" target="_parent">退出登录</a>
	</div>
</body>
</html>
