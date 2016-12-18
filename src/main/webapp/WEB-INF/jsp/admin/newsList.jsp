<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻列表</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/bootstrap/easyui.css">
</head>
<body>
<div style="margin-top: 20px;margin-left: 20px;">
    <div id="queryParams" style="float:left;">
        <label>标题：</label><input type="text" id="title"  class="easyui-textbox" data-options="prompt:'请输入标题'"/>
        <span id="search" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:80px">查询</span>
    </div>
    <div style="margin-left: 50px;">
        <a href="javascript:void(0);" id="add" class="easyui-linkbutton" data-options="iconCls:'icon-add'">新增</a>
        <a href="javascript:void(0);" id="edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">修改</a>
        <a href="javascript:void(0);" id="remove"  class="easyui-linkbutton" data-options="iconCls:'icon-remove'">删除</a>
    </div>
</div>
<table id="tb" style="margin-top: 20px;"></table>
<input type="hidden" id="rowIndex">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/home/home.js"></script>
<script type="text/javascript" >
    $(function(){
        $("#tb").datagrid({
            url:'../news/list',
            columns:[[
                {field:'id',title:'id',width:80,hidden:true},
                {field:'title',title:'标题'},
                {field:'top',title:'是否置顶',width:50,align:'center'},
                {field:'content',title:'新闻内容',align:'center',width:80}
            ]],
            title:"新闻列表",
            fitColumns:true,
            striped:true,
            method:"POST",
            idField :  "id",
            loadMsg:"数据加载中，请稍后...",
            pagination : true,
            rownumbers:true,
            singleSelect:true,
            pageNumber:1,
            pageSize:20,
            onClickRow:function(rowIndex, rowData){
                $("#rowIndex").val(rowIndex);
            }
        });

        //点击查询按钮
        $("#search").on("click",function(){
            $("#tb").datagrid("reload",{
                title : $("#title").textbox("getValue")
            })
        });

        $("#remove").on("click",function () {
            var object = $("#tb").datagrid("getSelected");
            if(!!!object){
                $.messager.alert("提示","请选择要删除的记录！",'info');
                return false;
            }
            $.messager.confirm("提示","确定删除这条记录？",function (r) {
                if(r){
                    $.ajax({
                        type : "post",
                        url : "../user/deleteUser",
                        data : {
                            id : object.id
                        },
                        success : function (data) {
                            if(data){
                                $("#search").trigger("click");
                            }else{
                                $.messager.alert("提示","删除失败！",'info');
                            }
                        }
                    });
                }
            })
        })
    });
</script>
</body>
</html>
