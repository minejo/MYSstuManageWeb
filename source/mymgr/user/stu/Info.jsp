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
    <title>My JSP 'edit.jsp' starting page</title>
  </head>
  
  <body>
    <table border="0" width="100%" cellspacing="0" cellpadding="0" height="100%" id="table1">
      <tr><td valign="top" height="8"></td></tr>
      <tr><td valign="top">
        <table border="0" width="100%" cellspacing="0" cellpadding="0" height="100%" id="table3" style="border: 1px solid #D7D7D7" bgcolor="#F7F7F7">
          <tr>
            <td valign="top"><div align="center">
              <table border="0" width="98%" cellspacing="0" cellpadding="0" id="table4" height="100%">
                <tr><td height="5"></td></tr>
                <tr><td valign="top">
                  <table border="0" width="100%" cellpadding="2" id="table5">
                    <tr><td height="28" bgcolor="#F3E9F8" style="line-height: 150%">◆注意：请认真核对你的学籍信息，如果有问题请在规定时间内在网上提交修改申请，修改姓名、身份证号请联系学院教务主任。</td></tr>
                    <tr><td height="10"></td></tr>
                  </table>
                  <form action="User!editsub" method="post">
                  <table border="1" width="100%" bordercolorlight="#808080" cellspacing="0" cellpadding="0" bordercolordark="#F7F7F7" id="table6">
                    <tr><td height="50" colspan="5"><p align="center"><b><font style="font-size: 20px;" face="华文仿宋">西南交通大学茅以升学院学生个人信息</font></b></p></td></tr>
                    <tr>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 学&nbsp;&nbsp;&nbsp; 号</td>
                      <td height="28" width="20%">
                        <s:property value="#session.OnLineInfo.UserId" />
                      </td>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 姓&nbsp;&nbsp;&nbsp; 名</td>
                      <td height="28" width="18%">
                        <s:property value="#session.OnLineInfo.UserName" />
                      </td>
                      <td height="196" width="18%" rowspan="7">
                        <p align="center"><img src="common/picture/<s:property value="stuInfo.image" />" width="115" height="145">
                      </td>
                    </tr>
                    <tr>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 性&nbsp;&nbsp;&nbsp; 别</td>
                      <td height="28" width="20%">
                        <s:property value="stuInfo.gender" />
                      </td>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 出生日期</td>
                      <td height="28" width="18%">
                        <s:property value="stuInfo.birthday" />
                      </td>	
                    </tr>
                    <tr>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 入学专业</td>
                      <td height="28" width="20%">
                        <s:property value="stuInfo.admitmajor" />
                      </td>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 班&nbsp;&nbsp;&nbsp; 级</td>
                      <td height="28" width="18%">
                        <s:property value="stuInfo.classname" />
                      </td>
                    </tr>
                    <tr>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 籍&nbsp;&nbsp;&nbsp; 贯</td>
                      <td height="28" width="20%">
                        <s:property value="stuInfo.nativeplace" />
                      </td>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 民&nbsp;&nbsp;&nbsp; 族</td>
                      <td height="28" width="18%">
                        <s:property value="stuInfo.nationality" />
                      </td>
                    </tr>
                    <tr>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 政治面貌</td>
                      <td height="28" width="20%">
                        <s:property value="stuInfo.politics" />
                      </td>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 身份证号</td>
                      <td height="28" width="18%">
                        <s:property value="stuInfo.IDcard" />
                      </td>
                    </tr>
                    <tr>
                        <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp;高中毕业学校</td>
                        <td height="28" width="20%" >
                          <s:property value="stuInfo.highschool" />
                        </td>
                        <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 宿 舍 号</td>
                        <td height="28" width="18%">
                        	<input name="stuInfo.dormitory" value="<s:property value="stuInfo.dormitory" />" type="text" />
                        </td>
                      </tr>
                    <tr>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 个人电话</td>
                      <td height="28" width="20%" >
                      	<input name="stuInfo.phone" value="<s:property value="stuInfo.phone" />" type="text" />
                      </td>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 父亲电话</td>
                      <td height="28" width="18%" >
                      	<input name="stuInfo.fatherphone" value="<s:property value="stuInfo.fatherphone" />" type="text" />
                      </td>
                    </tr>
                    <tr>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 母亲电话</td>
                      <td height="28" width="20%">
                      	<input name="stuInfo.motherphone" value="<s:property value="stuInfo.motherphone" />" type="text" />
                      </td>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; E-Mail</td>
                      <td height="28" width="18%"  colspan="2">
                      	<input name="stuInfo.email" value="<s:property value="stuInfo.email" />" type="text" />
                      </td>
                    </tr>
                    <tr>
                      <td height="28" width="16%" bgcolor="#F1F5F5">&nbsp; 家庭住址</td>
                      <td height="28" colspan="4">
                      	<input name="stuInfo.familyadress" value="<s:property value="stuInfo.familyadress" />" type="text" />
                      </td>
                    </tr>
                  </table>
                  <s:if test="#session.OnLineInfo.AccTyp==0"><input type="submit" value="提交" /></s:if>
                  </form>
                </td></tr>
                <tr><td height="12"></td></tr>
              </table>
            </div></td>
          </tr>
        </table>
      </td></tr>
     </table>
  </body>
</html>
