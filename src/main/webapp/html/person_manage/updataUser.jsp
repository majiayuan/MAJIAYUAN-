<%--
  Created by IntelliJ IDEA.
  User: 98247
  Date: 2020/12/21
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>员工管理</title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" language="JavaScript1.2" src="../../js/stm31.js"></script>
    <script>
        function windowOpen(theURL,winName,features,width,hight,scrollbars,top,left)
        {
            var parameter="top="+top+",left="+left+",width="+width+",height="+hight;
            if(scrollbars=="no")
            {parameter+=",scrollbars=no";}
            else
            {parameter+=",scrollbars=yes";}
            window.open(theURL,winName,parameter);
        }
        function xiugai()
        {
            var xg = confirm("是否确定修改此员工信息？");
            if(xg == true)
            {
                alert("确定修改！！！");
            }
            else
            {
                alert("取消修改！！！");
            }
        }
    </script>
    <SCRIPT language=JavaScript type=text/JavaScript>

        function selectAllByChk(chk,checkbox) {
            var size = checkbox.length;
            if(size == null)
                checkbox.checked =chk.checked;
            else{
                for (i = 0; i < checkbox.length; i++) {
                    checkbox[i].checked =chk.checked;
                }
            }
        }

    </SCRIPT>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form action="${pageContext.request.contextPath}/user/updataUser" method="post">
    <center>

        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td height="25" align="center" valign="bottom" class="td06"> <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="2%" valign="middle" background="../../images/bg_03.gif">&nbsp;</td>
                        <td width="2%" valign="middle" background="../../images/bg_03.gif"><img src="../../images/main_28.gif" width="9" height="9" align="absmiddle"></td>
                        <td height="30" valign="middle" background="../../images/bg_03.gif"><div align="left"><font color="#FFFFFF">员工修改</font></div></td>
                    </tr>
                </table></td>
            </tr>
        </table>
        <br>
        <table width="95%"  border="0" cellpadding="0" cellspacing="0" class="td_page"">
        <tr>
            <td width="10%" height="30" align="left">员工编码</td>
            <td width="40%" height="30">00${user.id}</td>
            <td width="10%"   align="left">&nbsp;</td>
            <td width="40%">&nbsp;</td>
        </tr>
        <input style="display:none" name="id" type="text" value="${user.id}" >
        <tr>
            <td width="10%" height="30" align="left">用户姓名</td>
            <td width="40%" height="30"><input name="userName" type="text" class="input" style="width:95% " required value="${user.userName}"></td>
            <td width="10%"   align="left">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</td>
            <td width="40%"><select name="sex" size="1" class="box" required style="width:95%">
                <option value="男" selected>男　　　　　　　　　　　　　</option>
                <option value="女">女　　　　　　　　　　　　</option>
            </select>
            </td>
        </tr>
        <tr>
            <td width="10%" height="30" align="left">登陆帐号</td>
            <td width="40%" height="30"><input name="account" type="text" class="input" style="width:95% " required value="${user.account}"></td>
            <td width="10%" align="left">登陆密码</td>
            <td width="40%" valign="middle"><input name="password" type="password" class="input" style="width:95% " required value="${user.password}">
            </td>
        </tr>
        <tr>
            <td width="10%" height="30" align="left"> 所属部门</td>
            <td width="40%" height="30"><font>
                <select name="department" size="1" class="box" required style="width:95%">
                    <option value="财务部">财务部　　　　　　　　　　　　　</option>
                    <option value="市场部">市场部　　　　　　　　　　　　</option>
                    <option selected>人事部</option>
                </select>
            </font></td>
            <td width="10%" align="left"> 职 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务</td>
            <td width="40%" valign="middle"><select name="duty" size="1" class="box" required style="width:95%">
                <option value="经理">经理　　　　　　　　　　　　　</option>
                <option value="主任">主任　　　　　　　　　　　　</option>
                <option value="普通员工" selected>普通员工 </option>
            </select>
            </td>
        </tr>
        <!-- <tr>
          <td width="10%" height="30" align="left"> 直属上级</td>
          <td width="40%" height="30"><font>
            <select name="fldSex" size="1" class="box" style="width:95%">
              <option value="人事部经理" selected>人事部经理 </option>
              <option value="人事部主任">人事部主任 </option>
            </select>
          </font></td>
          <td width="10%" align="left"> 内部邮件</td>
          <td width="40%" valign="middle"><input name="queryName" type="text" class="input" style="width:95% " value="zhangsan@163.com">
          </td>
        </tr> -->
        <tr>
            <td width="10%" height="30" align="left"> 外部邮件</td>
            <td width="40%" height="30"><font>
                <input name="email" type="text" class="input" required style="width:95% " value="${user.email}">
            </font></td>
            <td width="10%" align="left">移动电话</td>
            <td width="40%" valign="middle"><input name="mobile_telephone_num" type="text" class="input" required style="width:95% " value="${user.mobile_telephone_num}">
            </td>
        </tr>
        <tr>
            <td width="10%" height="30" align="left">家庭电话</td>
            <td width="40%" height="30"><font>
                <input name="family_telephone_num" type="text" class="input" style="width:95% " required value="${user.family_telephone_num}">
            </font></td>
            <td width="10%" align="left">办公电话</td>
            <td width="40%" valign="middle"><input name="work_telephone_num" type="text" class="input" required style="width:95% " value="${user.work_telephone_num}">
            </td>
        </tr>
        <tr>
            <td width="10%" height="30" align="left">传真号码</td>
            <td width="40%" height="30"><font>
                <input name="fax_num" type="text" class="input" required style="width:95% " value="${user.fax_num}">
            </font></td>
            <td width="10%" align="left">MSN</td>
            <td width="40%" valign="middle"><input name="MSN" type="text" class="input" required style="width:95% " value="${user.MSN}">
            </td>
        </tr>
        <tr>
            <td width="10%" height="30" align="left"> 生日</td>
            <td width="40%" height="30"><font>
                <input name="birthday" type="text" class="input" required style="width:95% " value="${user.birthday}">
            </font></td>
            <td width="10%" align="left"> 个人主页</td>
            <td width="40%" valign="middle"><input name="personal_page" type="text" class="input" required style="width:95% " value="${user.personal_page}">
            </td>
        </tr>
        <tr>
            <td height="30" colspan="4" align="left"> <font>&nbsp; </font>
                <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="10%">通讯地址</td>
                        <td><font>
                            <input name="address" type="text" class="input" required style="width:98% " value="${user.address}">
                        </font></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="left"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="10%">备注</td>
                    <td><textarea name="remarks" rows="5" class="box" required style="width:98% ">${user.remarks}</textarea></td>
                </tr>
            </table></td>
        </tr>
        </table><br>
        <table width="95%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="right" class="td_page"><div>
                    <input name="Submit" type="submit" class="buttonface02" onClick="xiugai()" value="  修改  ">
                    &nbsp;
                    <input name="Submit" type="reset" class="buttonface02" value="  重置  ">		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="&#21592;&#24037;&#31649;&#29702;.htm">返回上一页</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </div></td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>

