<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>茅以升学院学生管理系统门户</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="utf-8">
<meta content="all" name="robots">
<meta name="author" content="茅以升学院网络工作组">
<meta name="Copyright" content="西南交通大学茅以升学院">
<meta name="description" content="西南交通大学茅以升学院">

<link rel="stylesheet" rev="stylesheet" href="css/base.css"
	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/module.css"
	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/form.css"
	type="text/css" media="all">
<script src="js/jquery.js" type="text/javascript"></script>


<style type="text/css">
#idPicShow {
	width: 225px;
	height: 175px;
	border: 1px solid #eee;
	position: relative;
	margin-right: 0px;
}

#idPicShow img {
	width: 225px;
	height: 175px;
}

#idPicText {
	line-height: 25px;
	text-align: center;
	font-weight: bold;
	width: 240px;
	white-space: nowrap;
	overflow: hidden;
	font-size: 12px;
}

#idPicText a {
	text-decoration: none;
	color: #333;
	display: block;
	line-height: 150%;
}

#idNum {
	position: absolute;
	right: 2px;
	bottom: 0px;
}

#idNum li {
	float: left;
	list-style: none;
	color: #fff;
	text-align: center;
	line-height: 16px;
	width: 16px;
	height: 16px;
	font-family: Arial;
	font-size: 12px;
	cursor: pointer;
	margin: 1px;
	border: 1px solid #707070;
	background-color: #060a0b;
}

#idNum li.on {
	line-height: 18px;
	width: 18px;
	height: 18px;
	font-size: 14px;
	border: 0;
	background-color: #ce0609;
	font-weight: bold;
}

#a2 {
	position: absolute;
	top: 143px;
	left: 230px;
	z-index: 10;
}
</style>
<script type="text/javascript">
	$().ready(function(){
		var num = ${excellenceFirstNum};
		if(num>0){
			$("#showbox1").css("display","");
			$("#showbox2").css("display","none");
		}else{
			$("#showbox1").css("display","none");
			$("#showbox2").css("display","");
		}
	})
</script>
<script type="text/javascript">
		var isIE = (document.all) ? true : false;
		 
		var $$ = function (id) {
			return "string" == typeof id ? document.getElementById(id) : id;
		};
		 
		var Class = {
			create: function() {
				return function() { this.initialize.apply(this, arguments); }
			}
		}
		 
		var Extend = function(destination, source) {
			for (var property in source) {
				destination[property] = source[property];
			}
		}
		 
		var Bind = function(object, fun) {
			return function() {
				return fun.apply(object, arguments);
			}
		};
		 
		var Each = function(list, fun){
			for (var i = 0, len = list.length; i < len; i++) { fun(list[i], i); }
		};
		 
		 
		//ie only
		var RevealTrans = Class.create();
		RevealTrans.prototype = {
		  initialize: function(container, options) {
			this._img = document.createElement("img");
			this._a = document.createElement("a");
			
			this._timer = null;//计时器
			this.Index = 0;//显示索引
			this._onIndex = -1;//当前索引
			
			this.SetOptions(options);
			
			this.Auto = !!this.options.Auto;
			this.Pause = Math.abs(this.options.Pause);
			this.Duration = Math.abs(this.options.Duration);
			this.Transition = parseInt(this.options.Transition);
			this.List = this.options.List;
			this.onShow = this.options.onShow;
			
			//初始化显示区域
			this._img.style.visibility = "hidden";//第一次变换时不显示红x图
			this._img.style.width ="260";
			this._img.style.height = "200"; 
			this._img.style.border = 0;
			this._img.onmouseover = Bind(this, this.Stop);
			this._img.onmouseout = Bind(this, this.Start);
			isIE && (this._img.style.filter = "revealTrans()");
			
			this._a.target = "_blank";
			
			$$(container).appendChild(this._a).appendChild(this._img);
		  },
		  //设置默认属性
		  SetOptions: function(options) {
			this.options = {//默认值
				Auto:		true,//是否自动切换
				Pause:		1000,//停顿时间(微妙)
				Duration:	1,//变换持续时间(秒)
				Transition:	23,//变换效果(23为随机)
				List:		[],//数据集合,如果这里不设置可以用Add方法添加
				onShow:		function(){}//变换时执行
			};
			Extend(this.options, options || {});
		  },
		  Start: function() {
			clearTimeout(this._timer);
			//如果没有数据就返回
			if(!this.List.length) return;
			//修正Index
			if(this.Index < 0 || this.Index >= this.List.length){ this.Index = 0; }
			//如果当前索引不是显示索引就设置显示
			if(this._onIndex != this.Index){ this._onIndex = this.Index; this.Show(this.List[this.Index]); }
			//如果要自动切换
			if(this.Auto){
				this._timer = setTimeout(Bind(this, function(){ this.Index++; this.Start(); }), this.Duration * 1000 + this.Pause);
			}
		  },
		  //显示
		  Show: function(list) {
			if(isIE){
				//设置变换参数
				with(this._img.filters.revealTrans){
					Transition = this.Transition; Duration = this.Duration; apply(); play();
				}
			}
		this._img.style.visibility = "";
			//设置图片属性
			this._img.src = list.img; this._img.alt = list.text;
			//设置链接
			!!list["url"] ? (this._a.href = list["url"]) : this._a.removeAttribute("href");
			//附加函数
			this.onShow();
		  },
		  //添加变换对象
		  Add: function(sIimg, sText, sUrl) {
			this.List.push({ img: sIimg, text: sText, url: sUrl });
		  },
		  //停止
		  Stop: function() {
			clearTimeout(this._timer);
		  }
		};
</script>
<script type="text/javascript">				
					var rvt = new RevealTrans("idPicShow");
				 
				//添加变换对象
				rvt.Add('image/123.jpg', '【运动会特刊】佳绩频传 ，欢笑收官——...', 'news.do?method=showNews&newsId=C565A775A55FFDD5');
				rvt.Add('image/gun1.jpg', '奔跑，我们是时代的路标——茅以升学院本...', 'news.do?method=showNews&newsId=22541F5E6D5FD88E');
				rvt.Add('image/gun3.jpg', '2012年暑期赴香港理工大学短期实训圆...', 'news.do?method=showNews&newsId=219E6775BE600181');
				rvt.Add('image/gun1.jpg', '【示范性党支部活动】继承革命传统，弘扬...', 'news.do?method=showNews&newsId=C409FF744FB33C24');
				rvt.Add('image/gun3.jpg', '【聆听·卓越】名家访谈会（二）', 'news.do?method=showNews&newsId=087BC27F4AAC4575');

				oText = $$("idPicText"), arrImg = [];
				var oNum = $$("idNum"), arrNum = [];
				 
				//设置图片列表
				Each(rvt.List, function(list, i){
					//图片式
					var img = document.createElement("img");
					img.src = list["img"]; img.alt = list["text"];
					arrImg[i] = img;
					//按钮式
					var li = document.createElement("li");
					li.innerHTML = i + 1;
					arrNum[i] = li;
					oNum.appendChild(li);
					//事件设置
					img.onmouseover = li.onmouseover = function(){ rvt.Auto = false; rvt.Index = i; rvt.Start(); };
					img.onmouseout = li.onmouseout = function(){ rvt.Auto = true; rvt.Start(); };
				});
				 
				//设置图片列表样式 文本显示区域
				rvt.onShow = function(){
					var i = this.Index, list = this.List[i];
					//图片式
					Each(arrImg, function(o){ o.className = ""; }); arrImg[i].className = "on";
					//按钮式
					Each(arrNum, function(o){ o.className = ""; }); arrNum[i].className = "on";
					//文本区域
					oText.innerHTML = !!list.url ? '<a href="' + list.url + '" mce_href="/cloudgamer/admin/' + list.url + '" target="_blank">' + list.text + "</a>" : list.text;
				}
				 
				//文本显示区域
				oText.onmouseover = function(){ rvt.Auto = false; rvt.Stop(); };
				oText.onmouseout = function(){ rvt.Auto = true; rvt.Start(); };
				 
				rvt.Start();
				 -->
		        </script>
</head>
<body class="background">


	<form name="usrLogin" method="post" action="Login">
		<div class="indextop"></div>
		<div class="indexmid">
			<div class="toplogo">
				<h6></h6>
			</div>
			<ul id="menu">
				<li class="first0"><a href="index?type=beforeIndex"
					target="_self" class="first">首页</a></li>
				<li><a target="_self">学院动态</a>
				</li>
				<li><a target="_self">教学资源</a>
				</li>
				<li><a href="#" target="_self">荣誉展厅</a>
				</li>
				<li><a target="_self">院长信箱</a>
				</li>
				<li><a href="common/Login.jsp" target="_blank">个人主页</a>
				</li>
				<li><a href="" target="_blank" class="last">诚信记录</a>
				</li>
			</ul>
			<div class="imglogin">
				<h5>
					<div class="title">
						<a href="Login.jsp" target="_self"></a>
					</div>
					<table align="center">
						<tr>
							<td width="50"><span id="Label1">账 号:</span>
							</td>
							<td>
								<div id="username">
									<input name="id" type="text" id="TextBox1" tabindex="1"
										class="inputtext width100" value="学号/邮箱"
										onblur="(this.value=='')?this.value='学号/邮箱':this.value"
										onfocus="if(this.value=='学号/邮箱'){this.value='';};this.select();" />
								</div>
							</td>
						</tr>
						<tr height="10px">
						</tr>
						<tr>
							<td><span id="Label2">密 码:</span>
							</td>
							<td><input name="passwd" type="password" id="TextBox2"
								tabindex="2" class="inputtext width100" />
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<table id="RadioButtonList1" class="tabpadding" border="0"
									width="100%">
									<tr>
										<td><input id="RadioButtonList1_0" type="radio"
											name="RadioButtonList1" value="管理员" tabindex="3" /> <label
											for="RadioButtonList1_0"> 管理员 </label>
										</td>
										<td><input id="RadioButtonList1_1" type="radio"
											name="RadioButtonList1" value="导师" tabindex="3" /> <label
											for="RadioButtonList1_1"> 导师 </label>
										</td>
										<td><input id="RadioButtonList1_2" type="radio"
											name="RadioButtonList1" value="学生" checked="checked"
											tabindex="3" /> <label for="RadioButtonList1_2"> 学生
										</label>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr height="10px" />
						<tr>
						</tr>
					</table>
				</h5>
				<h6></h6>
			</div>

			<!-- start -->
			<div class="de_main">

				<div class="de_left">
			
					<div class="de_show">
						<!-- 科创资源显示 -->
						<h3>
							<span>科创资源</span><a href="" target="_blank">【更多】</a>
						</h3>
						<div class="con">
							<table class="datagridstyle" cellspacing="0" cellpadding="3"
								border="0" id="Datagrid3" width="100%">
								<tr class="datagridhead">
									<td>名称</td>
									<td>链接</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			

				<div class="de_middle">
					<!-- 新闻公告 -->
					<div class="de_news">
						<h3>
							<span>本科生院通知公告</span><a href="" target="_blank">【更多】</a>
						</h3>
						<div class="con">
							<table class="datagridstyle" cellspacing="0" cellpadding="3"
								border="0" id="DataGrid1" width="100%">
								<tr class="datagridhead">
									<td>公告标题</td>
									<td>发布单位</td>
									<td>发布时间</td>
								</tr>
								<s:iterator value="list" var="t">
								<tr>
									<td><span class="linkblue"><s:a href="News?type=newsList&bigTypeId=%{#t.bigTypeId}&smallTypeId=%{#t.smallTypeId}">[<s:property value="#t.smallTypeName" />]</s:a></span></td>
									<td><s:a href="News?type=showNews&newsId=%{#t.newsId}" target="_blank"><s:property value="#t.shortTitle" /></s:a></td>
									<td><a class="gray">[<s:property value="#t.addTime" />]</a></td>
								</tr>
								</s:iterator>
							</table>

						</div>
					</div>
				</div>
				<div class="de_right">

					<div class="de_show">
						<!-- 科创成绩展示 -->
						<h3>
							<span>最新科创展示</span><a href="" target="_blank">【更多】</a>
						</h3>
						<div class="con">
							<table class="datagridstyle" cellspacing="0" cellpadding="3"
								border="0" id="Datagrid3" width="100%">
								<tr class="datagridhead">
									<td>获奖人</td>
									<td>获奖项目</td>
								</tr>
							</table>
						</div>
					</div>
					<!-- 搜索 -->
					<div class="de_search">

						<h3>
							<span>文件通知搜索</span>
						</h3>

						<div class="con">

							<input name="Text1" id="Text1" type="text" size="18" />

							<button language="javascript"
								onclick="__doPostBack('BUTTON3','')" id="BUTTON3"
								class="de_btn_search" type="button">搜 索</button>

						</div>

					</div>
				</div>
			</div>
		
		<div class="indexbot">版权所有&copy西南交通大学茅以升学院</div>
	</form>

</body>
</html>
