<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DTcms.Web.admin.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理员登录</title>
<%--<link href="skin/default/style.css" rel="stylesheet" type="text/css" />--%>
<link href="skin/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../scripts/jquery/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
    $(function () {
        //检测IE
        if ('undefined' == typeof (document.body.style.maxHeight)) {
            window.location.href = 'ie6update.html';
        }
        //初始化表单验证
        $("#btnSubmit").click(function () {
            if (!CheckForm("txtUserName", "用户名")) {
                return false;
            }
            if (!CheckForm("txtPassword", "密码")) {
                return false;
            }
            return true;
        });
        var CheckForm = function (_txtId, msg) {
            var thisObj = $("#" + _txtId);
            if ($.trim(thisObj.val()) == "") {
                alert(msg + "不能为空~~！");
                thisObj.focus();
                return false;
            }
            else { return true;}

        }
    });
</script>
</head>
<body>
        <div class="wrap">
            <p class="logo">
                <img src="skin/LoginImages/logo.png" width="169" height="58">
                <span><b><i>后台管理系统</i></b></span>
            </p>
            <div class="content">
                <div class="login">
                    <form id="form1" runat="server">
                        <ul>
                            <li>
                                <p>
                                    帐号：
                                </p>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="input" placeholder="用户名" title="用户名"></asp:TextBox></li>
                            <li>
                                <p>
                                    密码：
                                </p>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password" placeholder="密码" title="密码"></asp:TextBox>
                           </li>
                            <li>
                              <asp:Button ID="btnSubmit" runat="server" Text="登录" CssClass="btn" OnClick="btnSubmit_Click" />
                            </li>
                        </ul>
                       </form>
                    <div><span id="msgtip" style="color: red;" runat="server"></span></div>
                </div>
                <div class="seo">
                    <strong>东方在线高端定制服务</strong>
                    <p><span class="blue">联系地址：</span>深圳市宝安前进一路华丰商务大厦A座二层</p>
                    <p><span class="blue">企业邮箱：</span>server@pcdzsw.com</p>
                    <p class="tel">服务热线：0755-23282605</p>
                </div>
                <div class="footer">
                    <dl class="f1">
                        <dt>营销型网站建设</dt>
                        <dd><a href="http://pcdzsw.com/yingxiaoxingwangzhan/" target="_blank">8年网站建设实战经验，为企业做有价值的营销网站。东方在线深圳营销网站第一品牌，拒绝没有营销理念的网站！</a></dd>
                    </dl>
                    <dl class="f2">
                        <dt>电商运营服务</dt>
                        <dd><a href="http://shop1385602960384.1688.com/" target="_blank">专注于诚信通旺铺装修设计，为企业打造独一无二的营销旺铺，东方在线为您量身定做。</a></dd>
                    </dl>
                    <dl class="f3">
                        <dt>企业邮箱</dt>
                        <dd><a href="http://pcdzsw.com/bossmail/" target="_blank">无限空间，安全存储！邮件管家，邮件召回！高效客户端，移动办公！</a></dd>
                    </dl>
                </div>
            </div>
        </div>
</body>
</html>