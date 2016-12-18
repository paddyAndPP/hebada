<%--
  Created by IntelliJ IDEA.
  User: aiiajj
  Date: 2016/12/10
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Full Layout - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/bootstrap/easyui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/home/home.js"></script>

</head>
<body>
<div class="easyui-layout" style="width:100%;height:100%">
    <div data-options="region:'north'" style="height:50px"></div>
    <div data-options="region:'south',split:true" style="height:50px;"></div>
   <%-- <div data-options="region:'east',split:true" title="East" style="width:180px;">
    </div>--%>
    <div data-options="region:'west',split:true" title="West" style="width: 20%;">
        <div class="easyui-accordion tab-menus" data-options="fit:true,border:false">
            <div title="Title1" style="padding:10px;" data-options="selected:true">
                <shiro:hasRole name="manager">
                    <span class="tab_link" url="../guestBook/guestBookList">客户留言</span>
                    <span class="tab_link" url="../user/userList">用户管理</span>
                    <a href="javascript:void(0);" class="tab-menu">客户留言</a>
                    <a href="javascript:void(0);" class="tab-menu">content1</a>
                    <a href="javascript:void(0);" class="tab-menu">content1</a>
                </shiro:hasRole>
            </div>
            <div title="系统管理"  style="padding:10px;">
                <span >人员管理</span>
                <span>权限管理</span>
                <span>系统参数</span>
            </div>
            <div title="新闻管理" style="padding:10px">
                <span class="tab_link" style="display: block" url="${pageContext.request.contextPath}/news/">新闻发布</span>
                <span class="tab_link" style="display: block" url="${pageContext.request.contextPath}/news/list">新闻列表</span>
                <span style="display: block">草稿箱</span>
            </div>
        </div>
    </div>
    <div class="easyui-tabs" data-options="region:'center'">
    </div>
</div>

<script type="text/javascript">

    $(function () {
        $(".tab_link").click(function () {
            var self = this;
            var content = '<iframe id="mainFrame" name="mainFrame" scrolling="auto" frameborder="0"  src="' + $(self).attr("url")
                    // + '" style=\"width:1190px;height:470px;\"></iframe>';
                    + '" style=\"width:100%;height:99.5%;\"></iframe>';;
            var text = $(self).text();
            if ($(".easyui-tabs").tabs('exists', text)) {
                $('.easyui-tabs').tabs('select', text);
                var tab = $('.easyui-tabs').tabs('getSelected');
                /* tab.panel('refresh', url); */

                $('.easyui-tabs').tabs('update', {
                    tab: tab,
                    options: {
                        content : content
                    }
                });
            } else {
                $('.easyui-tabs').tabs('add', {
                    title : text,
                    closable : true,
                    content : content
                });
            }
            /*$.ajax({
                url:$(self).attr("url"),
                type : "post",
                success : function(data){
                    content = data;
                    if ($(".easyui-tabs").tabs('exists', text)) {
                        $('.easyui-tabs').tabs('select', text);
                        var tab = $('.easyui-tabs').tabs('getSelected');
                        /!* tab.panel('refresh', url); *!/

                        $('.easyui-tabs').tabs('update', {
                            tab: tab,
                            options: {
                                content : content
                            }
                        });
                    } else {
                        $('.easyui-tabs').tabs('add', {
                            title : text,
                            closable : true,
                            content : content
                        });
                    }
                }
            });*/

            /*$(".easyui-tabs").tabs("add",{
                //href:$(this).attr("url"),
                title:$(this).text(),
                closable:true,
                //content:"<h1>sdfsdfsdf</h1>&lt;script&gt;window.location.href='../guestBook/getGuestBookList'&lt;script&gt;"
                content:"<div title=\"结果下载\" data-options=\"closable:true,href:'../guestBook/guestBookList'\" style=\"padding:20px;\"></div>"
             });
            alert("11")*/
        });


    });
</script>
</body>
</html>
