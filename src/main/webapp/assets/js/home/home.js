/**
 * Created by paddy.luo on 2016/12/11.
 */
$(document).ready(function () {
    menu.init();
});

var menu = {
    initEvent:function () {
        var index = 0;
        $(".tab-menu").on("click",function () {
            $(".easyui-tabs").tabs("add",{
                title: 'Tab'+index,
                content: '<div style="padding:10px">Content'+index+'</div>',
                closable: true
            })
        });

        $(".tab-menus .link").on("click",function () {
            var menuName = $(this).html(),
             url = $(this).data("url");
            $(".easyui-tabs").tabs("add",{
                title: menuName,
                href:url,
                closable: true
            })
        });
    },
    init:function () {
        this.initEvent();
    }
};