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
    <title>课程管理</title>
    <link rel="stylesheet" type="text/css" href="css/course.css" />
  </head>
  
  <body>
<%--     <s:debug></s:debug> --%>
    <div class="mainFrame">
      <div class="formDiv">
        <div class="title"><h1>添加课程</h1></div>
        <div class="formMain">
          <form action="csmgr!csadd" method="post">
            <div class="item">
              <label>课程代号</label>
              <input type="text" name="CourseId" />
            </div>
            <div class="item">
              <label>课程名字</label>
              <input type="text" name="CourseName" />
            </div>
            <div class="button"><input type="submit" value="添加" /></div>
          </form>
          <div class="error"><s:iterator value="errors"><span><s:property /></span></s:iterator></div>
          <div class="error"><s:iterator value="actionMessages"><span><s:property /></span></s:iterator></div>
        </div>
        <div class="listDiv">
          <s:if test="clist!=null&&!clist.isEmpty()">
          	<table>
          	  <tr>
          	    <td>课程代号</td>
          	    <td>课程名字</td>
          	    <td>操作</td>
          	  </tr>
          	  <s:iterator value="clist" var="item">
          	  <tr>
          	    <td><s:property value="CourseId"/></td>
          	    <td><s:property value="CourseName"/></td>
          	    <td><s:a href="csmgr!csdel?CourseId=%{CourseId}">删除</s:a></td>
          	  </tr>
          	  </s:iterator>
          	</table>
          </s:if>
        </div>
      </div>
    </div>
  </body>
</html>
