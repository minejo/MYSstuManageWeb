<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
	<title>相似的科创成果</title>
	<link rel="stylesheet" type="text/css" href="css/table.css">
	<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
	<s:debug></s:debug>
	<div id="box">
		<h1>相似的科创成果</h1>
	<form action="ConManage!psverify" method="post">
	<input type="hidden" name="ListId" value="<s:property value="ListId" />" />
	<input type="hidden" name="UserId" value="<s:property value="UserId" />" />
	<input type="hidden" name="ContestId" value="<s:property value="ContestId" />" />
	<input type="hidden" name="term" value="<s:property value="term" />" />
	<table>
		<tr>
		   <td>填写本次加分数：</td>
		   <td><input name="Value" /></td>
		   <td>本次提交是否作为加分依据：</td>
		   <td>
		   <select name="isvalid">
		      <option value="1">是，并将以往相同的比赛置为无效加分</option>
		      <option value="0">否，此次不作为加分依据</option>
		   </select>
		   </td>	
		   <td><input type="submit" value="提交" /></td>	
		</tr>
	</table>
	</form>
		
		<table id="mytable" cellspacing="0">
			<tr>
				<th width="168" scope="col">获奖人</th>
				<th width="168" scope="col">学号</th>
				<th width="189" scope="col">奖项名称</th>
				<th width="189" scope="col">具体名称</th>
				<th width="168" scope="col">规模</th>
				<th width="86" scope="col">加分成绩</th>
				<th width="86" scope="col">是否有效</th>
			<s:iterator value="conlist">
				<tr>
					<td class="alt"><s:property value="UserName" />
					</td>
					<td class="alt"><s:property value="UserId" />
					</td>
					<td class="alt"><s:property value="ContestName" />
					</td>
					<td><s:property value="title"/></td>
					<td class="alt"><s:property value="LevelName" />
					</td>
					<td><s:property value="AddValue" /></td>
					<td>
					  <s:if test="IsValid==0">否</s:if>
					  <s:if test="IsValid==1">是</s:if>
					</td>
				</tr>
			</s:iterator>
		</table>

		<a href="ConManage!verList?page=1">返回</a>
	</div>
	
	

</body>
</html>