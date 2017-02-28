<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>资源下载 - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n     <link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/acity");
	templateBuilder.Append("/css/index.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/acity");
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n <script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/acity");
	templateBuilder.Append("/js/style.js\"></");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n <!--网站位置-->\r\n<div class=\"crumbs-wrap\">\r\n  <div class=\"wrapper\"> \r\n    <!-- 面包屑 -->\r\n    <div class=\"crumbs left\">当前位置 - <a title=\"返回首页\" href=\"/\">首页</a> -\r\n      <a href=\"");
	templateBuilder.Append(linkurl("down"));

	templateBuilder.Append("\" title=\"查看资源下载中的所有资源\" rel=\"category tag\">资源下载</a></div>\r\n    <!-- 面包屑end --> \r\n  </div>\r\n</div> \r\n\r\n<div class=\"container wrapper\">\r\n  <div class=\"wrap\">\r\n    <div class=\"content-wrap left\">\r\n      <div class=\"content\">\r\n   ");
	DataTable news_list = get_article_list("down", 0, page, "status=0", out totalcount, out pagelist, "down_list", category_id, "__id__");

	templateBuilder.Append("<!--取得一个分页DataTable-->\r\n        ");
	foreach(DataRow dr in news_list.Rows)
	{

	templateBuilder.Append("\r\n    <div class=\"post\"> \r\n          <!-- 缩略图 -->\r\n          <div class=\"post-thumb left\"> \r\n          <a class=\"boxer img-link\" rel=\"gallery\" href=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a>\r\n           <a href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" class=\"post-link\" target=\"_blank\" title=\"详细阅读 " + Utils.ObjectToStr(dr["title"]) + "\"> " + Utils.ObjectToStr(dr["title"]) + "</a>\r\n            <div class=\"thumb-bg\"></div>\r\n            <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"> </div>\r\n          <!-- 缩略图end --> \r\n          <!-- 标题 -->\r\n          <div class=\"post-head\">\r\n            <h2> <a href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" target=\"_blank\" title=\"详细阅读 " + Utils.ObjectToStr(dr["title"]) + "\"> " + Utils.ObjectToStr(dr["title"]) + "</a></h2>\r\n            <!-- 文章信息 -->\r\n            <div class=\"info\"> <a href=\"http://www.yizuocity.com\" title=\"一座城池博客\">一座城池</a>&nbsp;      发表于：" + Utils.ObjectToStr(dr["add_time"]) + "&nbsp; <a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(dr["category_id"])));

	templateBuilder.Append("\" title=\"查看");
	templateBuilder.Append(get_category_title(Utils.StrToInt(Utils.ObjectToStr(dr["category_id"]), 0), "").ToString());

	templateBuilder.Append("中的全部文章\" rel=\"category tag\">");
	templateBuilder.Append(get_category_title(Utils.StrToInt(Utils.ObjectToStr(dr["category_id"]), 0), "").ToString());

	templateBuilder.Append("</a>&nbsp;" + Utils.ObjectToStr(dr["click"]) + "次浏览&nbsp; </div>\r\n            <!-- 文章信息end --> \r\n          </div>\r\n          <!-- 标题end --> \r\n          <!-- 摘要 -->\r\n          <div class=\"excerpt\"> " + Utils.ObjectToStr(dr["zhaiyao"]) + "</div>\r\n          <!-- 摘要end --> \r\n          <a class=\"read-more\" href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" title=\"详细阅读 「" + Utils.ObjectToStr(dr["title"]) + "\" target=\"_blank\">阅读更多</a> </div>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n          <div class=\"flickr\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n      </div>\r\n    </div>\r\n    <div class=\"sidebar right\">\r\n   <div class=\"sidebar-widget widget_calendar\">\r\n  <h3>日历</h3><div id=\"calendar_wrap\">\r\n\r\n    </div>\r\n    </div>\r\n                     <div class=\"it-list\">\r\n        <h3 class=\"h3\">资源分类</h3>\r\n     	<div class=\"redfood\">\r\n            <ul>\r\n               ");
	DataTable contentlist = get_category_child_list("down", 0);

	foreach(DataRow dr in contentlist.Rows)
	{

	templateBuilder.Append("\r\n        <li><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("down_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n            </ul>\r\n        </div>\r\n        </div>\r\n      <div class=\"sidebar-widget widget_sl_hotpost\">\r\n        <h3>下载排行</h3>\r\n        <ul class=\"\">\r\n             ");
	DataTable hotNews = get_article_list("down", 0,15, ""," click asc ");

	foreach(DataRow dr2 in hotNews.Rows)
	{

	templateBuilder.Append("\r\n          <li><a href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(dr2["id"])));

	templateBuilder.Append("\" title=\"详细阅读 " + Utils.ObjectToStr(dr2["title"]) + "\">" + Utils.ObjectToStr(dr2["title"]) + "</a></li>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n     </ul>\r\n      </div>\r\n    <div class=\"focus_list\">\r\n        <h3 class=\"h3\">友情链接</h3>\r\n        <ul>\r\n           ");
	DataTable linkList1 = get_plugin_method("DTcms.Web.Plugin.Link", "link", "get_link_list", 0, "is_lock=0 and is_image=0 and is_red=1");

	foreach(DataRow dr in linkList1.Rows)
	{

	templateBuilder.Append("\r\n      <li><a target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" rel=\"nofollow\">" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n  <script type=\"text/javascript\">\r\n      // 图片延迟加载\r\n      $(function () {\r\n          $(\".content img\").lazyload({\r\n              effect: \"fadeIn\",\r\n              failurelimit: 4\r\n          });\r\n      });\r\n</");
	templateBuilder.Append("script>\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<!--网站底部-->\r\n<div class=\"footer\">\r\n  <div class=\"footer-bottom-wrap\">\r\n    <div class=\"footer-bottom wrapper\">\r\n      <p class=\"left\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webcopyright));
	templateBuilder.Append("<a href=\"http://www.miitbeian.gov.cn\" target=\"_blank\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webcrod));
	templateBuilder.Append("</a></p>\r\n        <h3 class=\"left h3\" style=\"display: inline-block;margin: 0px 10px 0px 100px;\">最新访客</h3>\r\n      <div class=\"left\"><ul class=\"ds-recent-visitors\"></ul> </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n\r\n<!--回到顶部-->\r\n<div id=\"back-to-top\" style=\"display: block;\"><a class=\"side top-btn\" href=\"#top\" title=\"返回顶部\">Top</a></div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
