<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.login" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2016/11/1 22:14:03.
		本页面代码由DTcms模板引擎生成于 2016/11/1 22:14:03. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>会员登录 - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("\" name=\"description\" />\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/acity");
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/lhgdialog/lhgdialog.js?skin=idialog\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/acity");
	templateBuilder.Append("/js/login_validate.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("<script type=\"text/javascript\">\r\n    $(function () {\r\n        $(\"#menu > li\").hover(function () { $(this).children(\".sub-menu\").fadeIn('slow'); }, function () { $(this).children(\".sub-menu\").fadeOut('slow'); });\r\n    })\r\n</");
	templateBuilder.Append("script>\r\n<div class=\"header\">\r\n<div class=\"header-content wrapper\">\r\n	 <div class=\"hgroup\">\r\n      <h1 class=\"left\"><a href=\"http://www.yizuocity.com/\" title=\"一座城池\"> 一座城池 </a></h1>\r\n      <span class=\"blog-title left\">成功就是不懈的努力加上一点点机会，努力是加法，机会是乘法，两者兼备才会得到最大的结果！</span></div>\r\n    <!-- logoend --> \r\n    <!-- 搜索 -->\r\n    <div class=\"search-form right\">\r\n      <input class=\"search-input\" id=\"keywords\" name=\"keywords\" type=\"text\" placeholder=\"站内搜索…\" onkeydown=\"if(event.keyCode==13){SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');return false};\" >\r\n      <span class=\"search-submit right\">\r\n      <input title=\"站内搜索\" type=\"submit\" value=\"\" onclick=\"SiteSearch('");
	templateBuilder.Append(linkurl("search"));

	templateBuilder.Append("', '#keywords');\">\r\n      </span>\r\n        </div>\r\n</div>\r\n\r\n  <div class=\"clearfix\"></div>\r\n  <div class=\"header-nav\">\r\n    <div class=\"header-menu\">\r\n      <ul id=\"menu\" class=\"menu\">\r\n        <li class=\"menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home\"><a href=\"/\">首页</a></li>\r\n        <li class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children\"> <a href=\"");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("\">编程开发</a>\r\n          <ul class=\"sub-menu\">\r\n              ");
	DataTable dtNew = get_category_child_list("news", 0);

	foreach(DataRow dr in dtNew.Rows)
	{

	templateBuilder.Append("\r\n            <li class=\"menu-item menu-item-type-taxonomy menu-item-object-category\"><a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n          </ul>\r\n        </li>\r\n        <li class=\"menu-item menu-item-type-taxonomy menu-item-object-category\"><a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\">资源下载</a>\r\n             <ul class=\"sub-menu\">\r\n                ");
	DataTable dtdown = get_category_child_list("down", 0);

	foreach(DataRow dr in dtdown.Rows)
	{

	templateBuilder.Append("\r\n            <li class=\"menu-item menu-item-type-taxonomy menu-item-object-category\"><a href=\"");
	templateBuilder.Append(linkurl("down_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n                 </ul>\r\n        </li>\r\n        <li class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children\"><a href=\"");
	templateBuilder.Append(linkurl("goods"));

	templateBuilder.Append("\">美食</a>\r\n          <ul class=\"sub-menu\">\r\n                    ");
	DataTable dtFood = get_category_child_list("goods", 0);

	foreach(DataRow dr1 in dtFood.Rows)
	{

	templateBuilder.Append("\r\n            <li class=\"menu-item menu-item-type-taxonomy menu-item-object-category\"><a href=\"");
	templateBuilder.Append(linkurl("goods_list",Utils.ObjectToStr(dr1["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr1["title"]) + "</a></li>\r\n              ");
	}	//end for if

	templateBuilder.Append("\r\n          </ul>\r\n        </li>\r\n        <li class=\"menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children\"><a href=\"");
	templateBuilder.Append(linkurl("photo"));

	templateBuilder.Append("\">影音娱乐</a> \r\n          <ul class=\"sub-menu\">\r\n                 ");
	DataTable dtphoto = get_category_child_list("photo", 0);

	foreach(DataRow dr2 in dtphoto.Rows)
	{

	templateBuilder.Append("\r\n            <li class=\"menu-item menu-item-type-taxonomy menu-item-object-category\"><a href=\"");
	templateBuilder.Append(linkurl("photo_list",Utils.ObjectToStr(dr2["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr2["title"]) + "</a></li>\r\n  ");
	}	//end for if

	templateBuilder.Append("\r\n          </ul>\r\n        </li>\r\n        <li class=\"menu-item menu-item-type-post_type menu-item-object-page\"><a href=\"");
	templateBuilder.Append(linkurl("content","about"));

	templateBuilder.Append("\">关于博主</a></li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n </div> ");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"boxwrap\">\r\n  <div class=\"main_box\">\r\n    <h1 class=\"main_tit\">\r\n      会员登录<strong>Login</strong>\r\n    </h1>\r\n\r\n    <div class=\"login-box\">\r\n    <div class=\"left-box\">\r\n      <form id=\"loginform\" name=\"loginform\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_login\">\r\n      <dl>\r\n        <dt>用户名：</dt>\r\n        <dd><input id=\"txtUserName\" name=\"txtUserName\" class=\"input txt\" type=\"text\" maxlength=\"50\" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>密　码：</dt>\r\n        <dd><input id=\"txtPassword\" name=\"txtPassword\" class=\"input txt required\" type=\"password\" maxlength=\"100\" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt></dt>\r\n        <dd>\r\n          <input id=\"chkRemember\" name=\"chkRemember\" class=\"checkbox\" type=\"checkbox\" style=\"vertical-align:middle\">\r\n          <label class=\"red\" for=\"chkRemember\">一周内自动登录</label>\r\n        </dd>\r\n      </dl>\r\n      <dl>\r\n        <dt></dt>\r\n        <dd>\r\n          <input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" class=\"btn_login\" value=\"登 录\" />\r\n          <a href=\"");
	templateBuilder.Append(linkurl("repassword","confirm"));

	templateBuilder.Append("\">忘记密码？</a>\r\n        </dd>\r\n      </dl>\r\n      <dl id=\"msgtips\">\r\n        <dt></dt>\r\n        <dd></dd>\r\n      </dl>\r\n      <input id=\"turl\" name=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(turl));
	templateBuilder.Append("\" />\r\n      </form>\r\n      <!--第三方登录-->\r\n      <div class=\"oauth_inner\">\r\n        <label>其它登录方式</label>\r\n        <div class=\"oauth_list\">\r\n          ");
	DataTable oauth_list = get_oauth_app_list(0, "");

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n          ");
	foreach(DataRow dr in oauth_list.Rows)
	{

	templateBuilder.Append("\r\n          <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("api/oauth/" + Utils.ObjectToStr(dr["api_path"]) + "/index.aspx\"><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" /></a>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </div>\r\n      </div>\r\n      <!--/第三方登录-->\r\n    </div>\r\n    <div class=\"center-box\"></div>\r\n    <div class=\"right-box\">\r\n      <p class=\"note\">我们诚挚地邀请您加入<br />DTcms—100%开源的CMS</p>\r\n      <p>如果您还没有会员账户</p>\r\n      <p class=\"button\">\r\n        <a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">立即注册</a>\r\n      </p>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n  </div>\r\n\r\n    <div class=\"clear\"></div>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<!--网站底部-->\r\n<div class=\"footer\">\r\n  <div class=\"footer-bottom-wrap\">\r\n    <div class=\"footer-bottom wrapper\">\r\n      <p class=\"left\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webcopyright));
	templateBuilder.Append("<a href=\"http://www.miitbeian.gov.cn\" target=\"_blank\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webcrod));
	templateBuilder.Append("</a></p>\r\n        <h3 class=\"left h3\" style=\"display: inline-block;margin: 0px 10px 0px 100px;\">最新访客</h3>\r\n      <div class=\"left\"><ul class=\"ds-recent-visitors\"></ul> </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n\r\n<!--回到顶部-->\r\n<div id=\"back-to-top\" style=\"display: block;\"><a class=\"side top-btn\" href=\"#top\" title=\"返回顶部\">Top</a></div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
