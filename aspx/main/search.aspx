﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.search" ValidateRequest="false" %>
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
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>站内搜索 - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("\" name=\"description\" />\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append("/templates/acity");
	templateBuilder.Append("/css/index.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.10.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append("/templates/acity");
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n\r\n<div class=\"crumbs-wrap\">\r\n  <div class=\"wrapper\"> \r\n    <!-- 面包屑 -->\r\n    <div class=\"crumbs left\">当前位置 - <a title=\"返回首页\" href=\"/\">首页</a> -\r\n      搜索结果 </div>\r\n    <!-- 面包屑end --> \r\n  </div>\r\n</div> \r\n\r\n<div class=\"container wrapper\">\r\n  <div class=\"wrap\">\r\n    <div class=\"content-wrap left\">\r\n      <div class=\"content\">\r\n      ");
	DataTable list = get_search_list(15, out totalcount);

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n	  ");
	string pagelist = get_page_link(15, page, totalcount, linkurl("search","?channel_name="+channel_name+"&keyword=" + Server.UrlEncode(keyword) + "&page=__id__"));

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n      \r\n          <h1 class=\"main_tit\">\r\n          站内搜索<strong>Search</strong>\r\n         <i>搜索关健字： <b class=\"blue\">");
	templateBuilder.Append(Utils.ObjectToStr(keyword));
	templateBuilder.Append("</b> ，共有 <b class=\"red\">");
	templateBuilder.Append(Utils.ObjectToStr(totalcount));
	templateBuilder.Append("</b> 条记录</i>\r\n          </h1> \r\n           <ul class=\"search_list\">\r\n               ");
	int dr__loop__id=0;
	foreach(DataRow dr in list.Rows)
	{
		dr__loop__id++;


	templateBuilder.Append("\r\n                <li>\r\n                    <a target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["link_url"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a><span>( ");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(dr["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append(" )</span>\r\n                    <p>" + Utils.ObjectToStr(dr["remark"]) + "</p>\r\n                </li>\r\n               ");
	}	//end for if

	templateBuilder.Append("\r\n            </ul>\r\n          <div class=\"flickr\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n      </div>\r\n    </div>\r\n    <div class=\"sidebar right\">\r\n       <div class=\"sidebar-widget widget_calendar\">\r\n  <h3>日历</h3><div id=\"calendar_wrap\">\r\n\r\n    </div>\r\n    </div>\r\n                <div class=\"sidebar-widget widget_sl_hotpost\">\r\n        <h3>编程开发</h3>\r\n     	<div class=\"redfood\">\r\n            <ul>\r\n               ");
	DataTable contentlist = get_category_child_list("news", 0);

	foreach(DataRow dr in contentlist.Rows)
	{

	templateBuilder.Append("\r\n        <li><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n            </ul>\r\n        </div>\r\n        </div>\r\n      <div class=\"sidebar-widget widget_sl_hotpost\">\r\n            <h3>热门文章</h3>\r\n            <ul  class=\"ds-top-threads\" data-range=\"weekly\" data-num-items=\"15\"></ul>\r\n      </div>\r\n            <h3 class=\"h3\">最新评论</h3>\r\n          <!-- 多说最新评论 start -->\r\n	<div class=\"ds-recent-comments\" data-num-items=\"10\" data-show-avatars=\"1\" data-show-time=\"1\" data-show-title=\"1\" data-show-admin=\"1\" data-excerpt-length=\"70\"></div>\r\n<!-- 多说最新评论 end -->\r\n           <div class=\"focus_list\">\r\n        <h3 class=\"h3\">友情链接</h3>\r\n        <ul>\r\n           ");
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
