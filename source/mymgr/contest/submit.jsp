<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>

<html>
<head>
<base href="<%=basePath%>" />
<title>科创成绩提交页面</title>

<link rel="stylesheet" rev="stylesheet" href="css/module.css"
	type="text/css" media="all">
<link rel="stylesheet" rev="stylesheet" href="css/form.css"
	type="text/css" media="all">
<script src="js/dataPicker/WdatePicker.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<%-- <script type="text/javascript" src="js/Validform_v5_min.js"></script>
<script type="text/javascript">
	$(function() {
		//$(".contestsubform").Validform();  //就这一行代码！;

		$(".contestsubform").Validform({
			tiptype : 2,
			postonce : true,
			showAllError : true,

		});
	})
</script> --%>
</head>

<body>
	<div class="daohang">
		<h1>提交科创成果</h1>
	</div>
	<div class="mainframe">
		<form action="Contest!Submit" enctype="multipart/form-data"
			method="POST" class="contestsubform">
			<table width="70%" style="table-layout:fixed;" align="center">
				<tr>
					<th>奖项名称:</th>
					<td><select name="info.ContentId" datatype="*">
							<s:iterator value="ItemList">
								<option value="<s:property value="ContestID" />">
									<s:property value="ContestName" />
								</option>
							</s:iterator>
					</select></td>
					<td><div class="Validform_checktip"></div>
				</tr>
				<tr>
					<th>奖项等级:</th>
					<td><select name="info.LevelId" datatype="*">
							<s:iterator value="LevelList">
								<option value="<s:property value="LevelId" />">
									<s:property value="LevelName" />
								</option>
							</s:iterator>
					</select></td>
					<td><div class="Validform_checktip"></div>
				</tr>

				<tr>
					<th>奖项详细名称:</th>
					<td><input type="text" name="info.title" datatype="*" />
					</td>
					<td><div class="Validform_checktip">具体赛事名称</div>
				</tr>

				<tr>
					<th>组员姓名:</th>
					<td><textarea name="info.Crew"
							style="margin: 2px; height: 56px; width: 240px;" datatype="*"
							errormsg="密码范围在6~15位之间！"></textarea></td>
					<td><div class="Validform_checktip"></div>
				</tr>
				<tr>
					<th>获奖照片</th>
					<td><input type="file" name="image.file" datatype="*" />
					</td>

					<td><div class="Validform_checktip"></div>
				</tr>
				<tr>
					<th>获奖时间:</th>
					<td><input id="d12" type="text" name="info.ConTime"
						onClick="WdatePicker()" readonly="readonly" /></td>
					<td><div class="Validform_checktip"></div>
				</tr>
                	<tr>
					<th>学期数:</th>
					<td><input  type="text" name="info.TermNum" 	/></td>
					<td><div class="Validform_checktip">学期数格式须为年份-学期数,如2012-1</div></td>
				</tr>
				<tr>
					<th>获奖有关信息:</th>
					<td><textarea name="info.webUrl"
							style="margin: 2px; width: 248px; height: 99px;" datatype="*"></textarea>
					</td>
					<td><div class="Validform_checktip"></div>
				</tr>
				<tr height="20"></tr>
				<tr align="center">
					<td><input type="submit" value="提交" />
					</td>
					<td><input type="reset" value="重设" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
