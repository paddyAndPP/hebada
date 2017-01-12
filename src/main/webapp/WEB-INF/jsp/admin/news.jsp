<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻发布</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/bootstrap/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/kindeditor-4.1.9/themes/default/default.css" />
</head>
<body>
<div style="margin:20px 0;"></div>
    <form id="ff" class="easyui-form" method="post" data-options="novalidate:true">
        <input type="hidden" id="newsId" value="${news.id}">
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" id="title" name="title"  value="${news.title}" style="width:100%" data-options="label:'标题:',required:true">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-datetimebox"  id="dateTime" name="birthday"  style="width:100%"
                   data-options="label:'发布时间:',required:true,showSeconds:true" value="${news.publishTime}">
        </div>
        <div style="margin-bottom:20px">
            <select class="easyui-combobox" id="isTop" name="isTop" label="是否置顶:" style="width:100%" data-value="${news.top}"><option value="true">是</option><option value="false">否</option></select>
        </div>
        <div style="margin-bottom:20px">
            <label class="textbox-label textbox-label-before" style="padding: 10px 0px;">概要说明: </label>
            <textarea id="description" style="width: 100%;">${news.description}</textarea>
        </div>
        <div style="margin-bottom:20px">
            <label class="textbox-label textbox-label-before" style="padding: 10px 0px;">发布内容: </label>
            <textarea name="content"  style="width:100%;height:400px;visibility:hidden;">${news.content}</textarea>
        </div>
    </form>
    <div style="text-align:center;padding:5px 0">
        <a href="javascript:void(0)" class="easyui-linkbutton" id="btn-publish" style="width:80px">是否发布</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-submit'" id="btn-submit" style="width:80px">保存</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" id="btn-clear" style="width:80px">重置</a>
    </div>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/assets/plugins/kindeditor-4.1.9/kindeditor-all-min.js"></script>
<script>
    $(document).ready(function () {
        var editor;
        KindEditor.ready(function(K) {
            editor = K.create('textarea[name="content"]', {
                allowFileManager : true,
                uploadJson:"${pageContext.request.contextPath}/image/upload/single",
                useContextmenu:true
            });
        });
        
        $("#btn-submit, #btn-publish").on("click", function () {
            var data ={
                id:$("#newsId").val(),
                title:$("#title").val(),
                dateTime:$("#dateTime").textbox('getValue'),
                description:$("#description").val(),
                content:editor.html(),
                publish:false,
                top:$("#isTop").combo("getValue")
            };

            if($(this).attr("id") == "btn-publish") {
                data.publish = true;
            }
            $.ajax({
                type:"POST",
                url:"${pageContext.request.contextPath}/news/save",
                data:JSON.stringify(data),
                contentType:"application/json",
                success:function (result) {
                    if(result.status == 0){
                        $.messager.alert("提示","保存成功","info");
                        selectTab("新闻信息管理");
                    }else{
                        $.messager.alert("提示","系统异常，请联系石龙飞","error");
                    }
                },
                error:function () {
                    $.messager.alert("提示","系统异常，请联系石龙飞","error");
                }
            });
        });
        
        $("#btn-clear").on("click", function () {
            editor.html('');
            $("#title, #dateTime, #isTop").val("");
        });
    });

    function selectTab(text) {
        var tab = top.jQuery(".easyui-tabs");
        var url = "${pageContext.request.contextPath}/news/list";
        var content = '<iframe id="mainFrame" name="mainFrame" scrolling="auto" frameborder="0"  src="' + url
                + '" style=\"width:100%;height:99.5%;\"></iframe>';
        if (tab.tabs('exists', text)) {
            tab.tabs('select', text);
            var curTab = tab.tabs('getTab',text);
            tab.tabs('update', {
                tab: curTab,
                options: {
                    content : content
                }
            });
        } else {
            tab.tabs('add', {
                title : text,
                closable : true,
                content : content
            });
        }
        if($("#newsId").val() != "")
            tab.tabs("close","编辑新闻");
        else
            tab.tabs("close","新闻发布");
    }
</script>
</body>
</html>
