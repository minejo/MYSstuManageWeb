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
    <title>学生用户激活、信息录入页面</title>
    <link href="css/avt.css" rel="stylesheet" rev="stylesheet" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="js/dataPicker/WdatePicker.js" type="text/javascript"></script>
    <script type="text/javascript">
    	function setpwd() {
    		$("#add_pwd").remove();
    		$("#choice_div").after(
    			"<div id=\"add_pwd\">" +
    			"<form action=\"avt!cpwd\" method=\"post\">" +
    			"<div class=\"bar\"><span>密码：</span><input name=\"pwd\" type=\"password\" /></div>" +
    			"<div class=\"bar\"><span>确认：</span><input name=\"confirm\" type=\"password\" /></div>" +
    			"<div class=\"button\"><input type=\"submit\" value=\"提交\" /></div>" +
    			"</form></div>");
    	}
    	function GetNativePalce(id, placename) {
    		$.ajax({
    			type: "post",
    			url: "avt!districtInfo?upid=" + id,
    			dataType: "xml",
    			beforeSend: function(XMLHttpRequest){},
    			success: function(data, textStatus) {
    				var st = "";
    				var id, name;
    				$(data).find("item").each(function(i){
    					id = $(this).attr("id");
    					name = $(this).attr("name");
    					st = st + "<option value='" + id +"'>" + name + "</option>";
    				});
    				if (placename == "province") {
    					$("#city").html(st);
    				}
    				if (placename == "city") {
    					$("#county").html(st);
    				}
    			},
    			complete: function(XMLHttpRequest, textStatus){},
    			error: function(){}
    		});
    	}
    </script>
  </head>
  
  <body>
    <!-- 登录部分 -->
  	<s:if test="#session.step==null||#session.step==''">
    <form action="avt!login" method="post">
      <div><h1>学生账户激活登录</h1></div>
      <div class="bar"><span>学号：</span><input name="UserId" type="text" /></div>
      <div class="bar"><span>密码：</span><input name="pwd" type="password" /></div>
      <div class="button"><input type="submit" value="登陆" /></div>
    </form>
    </s:if>
    
    <div><s:iterator value="fieldErrors.error"><s:property /></s:iterator></div>
    <!-- 登录后显示部分 -->
    <s:if test="#session.step!=null && #session.step!=''">
    <div class="title"><h1>学生账户信息录入</h1></div>
    <div id="msg">
      <span><label>学号:</label><s:property value="#session.info.UserId"/></span>
      <span><label>姓名:</label><s:property value="#session.info.UserName"/></span>
      <span><label>班级:</label><s:property value="#session.info.classname"/></span>
    </div>
      <!-- 显示的信息 -->
      <s:if test="#session.step=='pass'">
      <div id="choice_div">
        <span><a href="javascript:setpwd()">修改密码</a></span>
        <span><a href="avt!preinfo">补充用户信息</a></span>
      </div>
      </s:if>
      <!-- 信息补充 -->
      <s:if test="#session.step=='info'&&#session.info!=null&&#session.info.IsVery==0">
      <div id="info_div">
        <form action="avt!infosub" enctype="multipart/form-data" method="post">
          <div class="inpdiv">
            <label>性别:</label>
            <select name="info.gender">
              <option value="男">男</option>
              <option value="女">女</option>
            </select>
          </div>
          <div class="inpdiv">
            <label>出生日期:</label>
            <input name="info.birthday" type="text" onClick="WdatePicker()" readonly="readonly" />
          </div>
          <div class="inpdiv">
            <label>籍贯:</label>
            <select id="province" name="place.province" onchange="GetNativePalce(this.value, this.id)">
            <s:iterator value="province"><option value="<s:property value="id" />"><s:property value="name" /></option></s:iterator>
            </select>
          </div>
          <div class="inpdiv">
            <label></label>
            <select id="city" name="place.city" onchange="GetNativePalce(this.value, this.id)">
            </select>
          </div>
          <div class="inpdiv">
            <label></label>
            <select id="county" name="place.county"></select>
          </div>
          <div class="inpdiv">
            <label>民族:</label>
            <input name="info.nationality" type="text" />
          </div>
          <div class="inpdiv">
            <label>政治面貌:</label>
            <select name="info.politics">
              <option value="中共党员">中共党员</option>
              <option value="中共预备党员">中共预备党员</option>
              <option value="共青团员">共青团员</option>
              <option value="其他">其他</option>
            </select>
          </div>
          <div class="inpdiv">
            <label>身份证:</label>
            <input name="info.IDcard" type="text" />
          </div>
          <div class="inpdiv">
            <label>高中毕业学校:</label>         
              <input name="info.highschool" type="text" />
          </div>
          <div class="inpdiv">
            <label>EMail:</label>
            <input name="info.email" type="text" />
          </div>
          <div class="inpdiv">
            <label>宿舍:</label>
            <input name="info.dormitory" type="text" />
          </div>
          <div class="inpdiv">
            <label>个人电话:</label>
            <input name="info.phone" type="text" />
          </div>
          <div class="inpdiv">
            <label>父亲电话:</label>
            <input name="info.fatherphone" type="text" />
          </div>
          <div class="inpdiv">
            <label>母亲电话:</label>
            <input name="info.motherphone" type="text" />
          </div>
          <div class="inpdiv">
            <label>家庭住址:</label>
            <input name="info.familyadress" type="text" />
          </div>
          <div class="inpdiv">
            <label>照片:</label>
            <input name="image.file" type="file" />
          </div>
          <div class="button"><input type="submit" value="提交" /></div>
        </form>
      </div>
      </s:if>
      <s:if test="#session.step=='info'&&#session.info!=null&&#session.info.IsVery==1">
      <div class="title"><h2>账户已激活, <a href="common/Login.jsp">请登录</a></h2></div>
      </s:if>
      <s:if test="#session.step=='suc'">
      <div class="title"><h2>数据提交成功, <a href="common/Login.jsp">请登录</a></h2></div>
      </s:if>
    </s:if>
  </body>
</html>
