// JavaScript Document
// 为所有有二级菜单的一级菜单添加标签
//回顶部
$(window).scroll(function() {
    if ($(window).scrollTop() > 200) {
        $("#back-to-top").fadeIn(200);
    } else {
        $("#back-to-top").fadeOut(200);
    }
});
//微信弹出
$(function (a) {
    $("<b class='sl-icon'></b>").insertBefore(".sub-menu");
    a(".qr").hover(function() {
            a(this).find(".weixin_content").slideDown(200)
        },
        function() {
            a(this).find(".weixin_content").hide(0)
        })
});
//日期生成
$(function () {
    $.ajax({
        type: "GET",
        url: "/tools/getDate_ajax.ashx",
        success: function (data) {
            $("#calendar_wrap").append(data);
        }

    });
})
// 字体大小写切换
jQuery(document).ready(function ($) {
    //调节字体大小
    $('#font-change span').click(function () {
        // 选择器
        var selector = '.entry,.entry p';
        // 每次增加字体大小
        var increment = 1;
        // 默认字体大小
        var font_size = 13;
        // 获取当前字体大小和单位
        var fs_css = $(selector).css('fontSize');
        var fs_css_c = parseFloat(fs_css, 10);
        var fs_unit = fs_css.slice(-2);
        var id = $(this).attr('id');
        switch (id) {
            case 'font-dec': fs_css_c -= increment; break;
            case 'font-inc': fs_css_c += increment; break;
            default: fs_css_c = font_size;
        }
        $(selector).css('fontSize', fs_css_c + fs_unit);
        return false;
    });
});

var duoshuoQuery = { short_name: "acity" };
(function () {
    var ds = document.createElement('script');
    ds.type = 'text/javascript'; ds.async = true;
    ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.unstable.js';
    ds.charset = 'UTF-8';
    (document.getElementsByTagName('head')[0]
     || document.getElementsByTagName('body')[0]).appendChild(ds);
})();