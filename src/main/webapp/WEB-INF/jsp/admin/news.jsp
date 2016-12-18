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
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" id="title" name="title" style="width:100%" data-options="label:'标题:',required:true">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-datetimebox"  id="dateTime" name="birthday" style="width:100%"
                   data-options="label:'发布时间:',required:true,showSeconds:true">
        </div>
        <div style="margin-bottom:20px">
            <select class="easyui-combobox" id="isTop" name="isTop" label="是否置顶:" style="width:100%"><option value="true">是</option><option value="false">否</option></select>
        </div>
        <div style="margin-bottom:20px">
            <select class="easyui-combobox" id="description" name="description" label="概要:" style="width:100%"><option value="true">是</option><option value="false">否</option></select>
        </div>
        <div style="margin-bottom:20px">
            <label class="textbox-label textbox-label-before" style="padding: 10px 0px;">发布内容: </label>
            <textarea name="content"  style="width:100%;height:400px;visibility:hidden;"></textarea>
        </div>
    </form>
    <div style="text-align:center;padding:5px 0">
        <a href="javascript:void(0)" class="easyui-linkbutton" id="btn-submit" style="width:80px">Submit</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" id="btn-clear" style="width:80px">Clear</a>
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
        
        $("#btn-submit").on("click", function () {
            var data ={
                title:$("#title").val(),
                dateTime:$("#dateTime").textbox('getValue'),
                content:editor.html(),
                top:$("#isTop").combo("getValue")
            };
            $.ajax({
                type:"POST",
                url:"${pageContext.request.contextPath}/news/save",
                data:JSON.stringify(data),
                contentType:"application/json",
                success:function (result) {
                    //跳转到列表
                    console.log(result);
                },
                error:function () {
                    
                }
            });
        });
        
        $("#btn-clear").on("click", function () {
            editor.html('');
            $("#title, #dateTime, #isTop").val("");
        });
    });
</script>
</body>
</html>