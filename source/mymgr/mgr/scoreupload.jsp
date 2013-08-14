<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" rev="stylesheet" href="css/base.css"  type="text/css" media="all">
    <link rel="stylesheet" rev="stylesheet" href="css/module.css" 	type="text/css" media="all">
   <link rel="stylesheet" rev="stylesheet" href="css/form.css" 	type="text/css" media="all">
   <script type="text/javascript" src="js/jquery.js"></script>
    <title>课程成绩上传</title>
  </head>
  
  <body>
     <div class="daohang">
		<h2>课程成绩上传</h2>
	</div>
	<div class="notice">
	     <p>
	 * 上传excel格式的说明：<br />
	  1.excel文件需为97-03版本 <br />
	  2.excel中的数据需放在第一个sheet中<br />
	  3.excel中列的属性名分别为（从左往右）:学号，姓名， 学期数，课程1:课程1课程代码，课程2:课程2课程代码 ,..... ,
	   课程n:课程n课程代码<br />
	   4.导入是基于每一行导入的，即使某一行数据格式错误，只会使该行导入失败，不影响其他行的导入，最后导入完成后会提示哪些行导入失败。
	   导入失败的行请检查数据格式后新建个excel重新导入。<br/>
	 </p>
	 </div>
	<div class="mainframe">
    <form method="post" action="csmgr!inseCou" enctype="multipart/form-data" >
       <table align="center" width="50%" style="table-layout:fixed;">
          <tr>
           <th>excel文件：</th>
           <td><input type="file" name="file.file" /></td> 
          </tr>
          <tr align="center">
             <td>  <input type="submit" value="提交" /></td>
             	<td><input type="reset" value="重设" />
					</td>
          </tr>
       </table>
     
    </form>
    	<div id="postmessage">
			<div class="wrong">
				<s:iterator value="errors">
					<span><s:property /> </span>
				</s:iterator>
			</div>

			<div class="right">
				<s:iterator value="actionMessages">
					<s:property /> 
				</s:iterator>
			</div>
		</div>
		</div>
  </body>
</html>
