<%--
  Created by IntelliJ IDEA.
  User: aiiajj
  Date: 2016/12/10
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/bootstrap/easyui.css">
</head>
<body>
<div id="queryParams">
    <label>姓名：</label><input type="text" id="name"  class="easyui-textbox" data-options="prompt:'请输入姓名'"/>

    <label>状态</label>
    <select type="text" id="status" class="easyui-combobox" style="width:80px;">
        <option value=""></option>
        <option value="0">未读</option>
        <option value="1">跟进</option>
        <option value="2">结束</option>
    </select>

    <span id="search" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:80px">查询</span>

</div>
<table id="tb"></table>
<input type="hidden" id="rowId"></body>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/home/home.js"></script>
<script tpye="text/javascript">
    $(function () {
        $("#search").on("click",function () {
            $("#tb").datagrid("reload",{
                status:$("#status").combobox("getValue"),
                name:$("#name").val()
            });
        });


        $('#tb').datagrid({
             url:'../guestBook/getGuestBookList',
             columns:[[
                {field:'id',title:'id',width:80,hidden:true},
                {field:'name',title:'姓名',width:80},
                {field:'tel',title:'电话',align:'center',width:80},
                {field:'address',title:'地址',width:80,align:'center'},
                {field:'email',title:'邮箱',width:80,align:'center'},
                {field:'content',title:'留言',width:80,align:'left'},
                {field:'createTime',title:'留言时间',width:80,align:'center'},
                {field:'status',title:'状态',width:80,align:'center'}
            ]],
            fitColumns:true,
            striped:true,
            method:"post",
            idField :  "id",
            loadMsg:"数据加载中，请稍后...",
            pagination : true,
            rownumbers:true,
            singleSelect:true,
            pageNumber:1,
            pageSize:20,
            /*queryParams:{
                status:$("#status option:selected").attr("val"),
                name:$("#name").val()
            },*/
            onClickRow:function(rowIndex, rowData){
                $("#rowId").val(rowData.id);
            }

        });

    });


</script>
</body>
</html>
