<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.article_show" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by DTcms Template Engine at 2016/11/1 22:14:04.
		本页面代码由DTcms模板引擎生成于 2016/11/1 22:14:04. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	string category_title = get_category_title(model.category_id,"影音娱乐");

	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("\" name=\"keywords\" />\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_description));
	templateBuilder.Append("\" name=\"description\" />  \r\n      <link media=\"screen\" type=\"text/css\" href=\"");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n    <!--网站位置-->\r\n<div class=\"crumbs-wrap\">\r\n  <div class=\"wrapper\"> \r\n    <!-- 面包屑 -->\r\n    <div class=\"crumbs left\">当前位置 - <a title=\"返回首页\" href=\"/\">首页</a> -\r\n      <a href=\"");
	templateBuilder.Append(linkurl("photo_list",model.category_id));

	templateBuilder.Append("\" title=\"查看");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("中的全部文章\" rel=\"category tag\">");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("</a>      -\r\n      ");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("   </div>\r\n    <!-- 面包屑end --> \r\n  </div>\r\n</div>\r\n\r\n<div class=\"container wrapper\">\r\n  <div class=\"wrap\">\r\n    <div class=\"content-wrap left\">\r\n      <div class=\"content\">\r\n       <div class=\"post-head\">\r\n        <h2>\r\n                    <a href=\"");
	templateBuilder.Append(linkurl("photo_show",model.id));

	templateBuilder.Append("\" rel=\"bookmark\" target=\"_blank\" title=\"查看详细 ");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("  \">\r\n          ");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("         </a></h2>\r\n          <div class=\"info left\">\r\n          <a href=\"http://www.yizuocity.com\" title=\"一座城池博客\">");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("</a>&nbsp; 发表于：");
	templateBuilder.Append(Utils.ObjectToStr(model.add_time));
	templateBuilder.Append("&nbsp;\r\n              <a href=\"");
	templateBuilder.Append(linkurl("photo_list",model.category_id));

	templateBuilder.Append("\" title=\"查看");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("中的全部文章\" rel=\"category tag\">");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("</a>&nbsp;<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=view_article_click&id=");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("&click=1\"></");
	templateBuilder.Append("script>次浏览&nbsp;\r\n               <span class=\"ds-thread-count\" data-thread-key=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" data-count-type=\"comments\"></span>&nbsp;\r\n          </div>\r\n        <!-- 字体大小切换 -->\r\n          <div id=\"font-change\" class=\"right\">\r\n<span class=\"left\">字体大小切换：</span>\r\n<span id=\"font-dec\"><a href=\"#\" title=\"减小字体\">小</a></span>\r\n<span id=\"font-n\"><a href=\"#\" title=\"默认大小\">中</a></span>\r\n<span id=\"font-inc\"><a href=\"#\" title=\"增大字体\">大</a></span>\r\n</div>\r\n\r\n          </div>\r\n          <div class=\"entry bggrap\">\r\n        ");
	templateBuilder.Append(Utils.ObjectToStr(model.content));
	templateBuilder.Append("\r\n          </div>\r\n          <div class=\"tags\">\r\n        关键字：<a href=\"#\" rel=\"tag\">");
	templateBuilder.Append(Utils.ObjectToStr(model.seo_keywords));
	templateBuilder.Append("</a>      </div>\r\n          \r\n         ");

	templateBuilder.Append("          <div class=\"share\">\r\n  <h3 class=\"left\">分享本文，推荐到您的社交平台：</h3>\r\n\r\n <a target=\"_blank\" href=\"http://cang.baidu.com/do/add?iu=http%3A%2F%2Fwww.yizuocity.com");
	templateBuilder.Append(Utils.ObjectToStr(NowUrl));
	templateBuilder.Append("&amp;it=");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("&amp;linkid=hjm6y313aqz\" class=\"baidu-share\" title=\"分享到百度云收藏\"></a>\r\n\r\n  <a target=\"_blank\" rel=\"nofollow\" href=\"http://connect.qq.com/widget/shareqq/index.html?url=http%3A%2F%2Fwww.yizuocity.com");
	templateBuilder.Append(Utils.ObjectToStr(NowUrl));
	templateBuilder.Append("&desc=");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("&pics=&site=bshare\" class=\"qqsq-share\" title=\"分享到QQ\"></a>\r\n\r\n  <a target=\"_blank\" rel=\"nofollow\" href=\"http://share.renren.com/share/buttonshare?link=http%3A%2F%2Fwww.yizuocity.com");
	templateBuilder.Append(Utils.ObjectToStr(NowUrl));
	templateBuilder.Append("&title=");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("\" class=\"renren-share\" title=\"分享到人人网\"></a>\r\n\r\n  <a target=\"_blank\" rel=\"nofollow\" href=\"http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=http%3A%2F%2Fwww.yizuocity.com");
	templateBuilder.Append(Utils.ObjectToStr(NowUrl));
	templateBuilder.Append("&title=");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("&pics=&summary=&desc=\" class=\"qq-share\" title=\"分享到QQ空间\"></a>\r\n\r\n  <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.kaixin001.com/rest/records.php?url=http%3A%2F%2Fwww.yizuocity.com");
	templateBuilder.Append(Utils.ObjectToStr(NowUrl));
	templateBuilder.Append("&style=11&content=");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("&stime=&sig=\" class=\"kaixin-share\" title=\"分享到开心网\"></a>\r\n\r\n  <a target=\"_blank\" rel=\"nofollow\" href=\"http://v.t.qq.com/share/share.php?title=");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("&url=http%3A%2F%2Fwww.yizuocity.com");
	templateBuilder.Append(Utils.ObjectToStr(NowUrl));
	templateBuilder.Append("&site=http://www.yizuocity.com/\" class=\"tencent-share\" title=\"分享到腾讯微博\"></a>\r\n\r\n  <a target=\"_blank\" rel=\"nofollow\" href=\"http://v.t.sina.com.cn/share/share.php?&url=http%3A%2F%2Fwww.yizuocity.com");
	templateBuilder.Append(Utils.ObjectToStr(NowUrl));
	templateBuilder.Append("&title=");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("\" class=\"sina-share\" title=\"分享到新浪微博\"></a>\r\n\r\n  <a target=\"_blank\" rel=\"nofollow\" href=\"http://t.163.com/article/user/checkLogin.do?link=http%3A%2F%2Fwww.yizuocity.com");
	templateBuilder.Append(Utils.ObjectToStr(NowUrl));
	templateBuilder.Append("&source=salonglong.com&info=");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("\" class=\"netease-share\" title=\"分享到网易微博\"></a>\r\n\r\n  <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.douban.com/recommend/?url=http%3A%2F%2Fwww.yizuocity.com");
	templateBuilder.Append(Utils.ObjectToStr(NowUrl));
	templateBuilder.Append("&title=");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("\" class=\"douban-share\" title=\"分享到豆瓣\"></a>\r\n\r\n  </div>\r\n");


	templateBuilder.Append("\r\n          <div class=\"clearfix\"></div>\r\n          <div class=\"pre-next\">\r\n        <div class=\"left\">\r\n          上一篇：：");
	templateBuilder.Append(get_prevandnext_article("photo_show", -1, "亲，已经是第一篇了！", 0).ToString());

	templateBuilder.Append("\r\n        </div>\r\n        <div class=\"right\">\r\n          下一篇：：");
	templateBuilder.Append(get_prevandnext_article("photo_show", 1, "亲，已经是最后一篇了！", 0).ToString());

	templateBuilder.Append("</div>\r\n      </div>\r\n          <!--推荐文章-->\r\n          <div class=\"same_cat_posts\">\r\n    <h3><a href=\"http://www.yizuocity.com\" title=\"一座城池博客\"></a> 推荐阅读：</h3>\r\n  <ul class=\"same_cat_posts_ul\">\r\n       ");
	DataTable dtlistphoto = get_article_list("photo", model.category_id, 6, "is_red=1 and id<>"+model.id);

	foreach(DataRow dr in dtlistphoto.Rows)
	{

	templateBuilder.Append(" \r\n       <li>\r\n      <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" target=\"_blank\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\"><img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\"></a>\r\n      <div class=\"same_cat_posts_tittle\">\r\n        <h2><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\" target=\"_blank\" title=\"详细阅读 " + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></h2>\r\n      </div>\r\n    </li>\r\n      ");
	}	//end for if

	if (dtlistphoto.Rows.Count<1)
	{

	templateBuilder.Append("\r\n          <div>同类下暂无推荐的资讯...</div>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n      </ul>\r\n</div>\r\n          <!--推荐-->\r\n                <!--评论-->\r\n      ");

	templateBuilder.Append("<!-- 多说评论框 start -->\r\n	<div class=\"ds-thread\" data-thread-key=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.id));
	templateBuilder.Append("\" data-title=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("\" data-url=\"http://www.yizuocity.com");
	templateBuilder.Append(Utils.ObjectToStr(NowUrl));
	templateBuilder.Append("\"></div>\r\n<!-- 多说评论框 end -->\r\n<!-- 多说公共JS代码 start (一个网页只需插入一次) -->\r\n<script type=\"text/javascript\">\r\n    var duoshuoQuery = { short_name: \"acity\" };\r\n    (function () {\r\n        var ds = document.createElement('script');\r\n        ds.type = 'text/javascript'; ds.async = true;\r\n        ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.unstable.js';\r\n        ds.charset = 'UTF-8';\r\n        (document.getElementsByTagName('head')[0]\r\n		 || document.getElementsByTagName('body')[0]).appendChild(ds);\r\n    })();\r\n	</");
	templateBuilder.Append("script>\r\n<!-- 多说公共JS代码 end -->\r\n\r\n");


	templateBuilder.Append("\r\n      <!--/评论-->\r\n      </div>\r\n    </div>\r\n    <div class=\"sidebar right\">\r\n  <div class=\"sidebar-widget widget_calendar\">\r\n  <h3>日历</h3><div id=\"calendar_wrap\">\r\n\r\n    </div>\r\n    </div>\r\n        <div class=\"it-list\">\r\n        <h3 class=\"h3\">影音娱乐</h3>\r\n     	<div class=\"redfood\">\r\n            <ul>\r\n               ");
	DataTable contentlist = get_category_child_list("photo", 0);

	foreach(DataRow dr in contentlist.Rows)
	{

	templateBuilder.Append("\r\n        <li><a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("photo_list",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n        ");
	}	//end for if

	templateBuilder.Append("\r\n            </ul>\r\n        </div>\r\n        </div>\r\n       <div class=\"focus_list\">\r\n        <h3 class=\"h3\">小编推荐</h3>\r\n        <ul>\r\n          ");
	DataTable redphoto = get_article_list("photo", 0, 6, "is_red=1 and img_url<>''");

	foreach(DataRow dr in redphoto.Rows)
	{

	templateBuilder.Append("\r\n          <li>\r\n            <a title=\"" + Utils.ObjectToStr(dr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("photo_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">\r\n              <img src=\"" + Utils.ObjectToStr(dr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(dr["title"]) + "\" />\r\n              <span>" + Utils.ObjectToStr(dr["title"]) + "</span>\r\n            </a>\r\n          </li>\r\n          ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n        <div class=\"focus_list\">\r\n        <h3 class=\"h3\">友情链接</h3>\r\n        <ul>\r\n           ");
	DataTable linkList1 = get_plugin_method("DTcms.Web.Plugin.Link", "link", "get_link_list", 0, "is_lock=0 and is_image=0 and is_red=1");

	foreach(DataRow dr in linkList1.Rows)
	{

	templateBuilder.Append("\r\n      <li><a target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" rel=\"nofollow\">" + Utils.ObjectToStr(dr["title"]) + "</a></li>\r\n      ");
	}	//end for if

	templateBuilder.Append("\r\n        </ul>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append("<!--网站底部-->\r\n<div class=\"footer\">\r\n  <div class=\"footer-bottom-wrap\">\r\n    <div class=\"footer-bottom wrapper\">\r\n      <p class=\"left\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webcopyright));
	templateBuilder.Append("<a href=\"http://www.miitbeian.gov.cn\" target=\"_blank\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webcrod));
	templateBuilder.Append("</a></p>\r\n        <h3 class=\"left h3\" style=\"display: inline-block;margin: 0px 10px 0px 100px;\">最新访客</h3>\r\n      <div class=\"left\"><ul class=\"ds-recent-visitors\"></ul> </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n\r\n<!--回到顶部-->\r\n<div id=\"back-to-top\" style=\"display: block;\"><a class=\"side top-btn\" href=\"#top\" title=\"返回顶部\">Top</a></div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
