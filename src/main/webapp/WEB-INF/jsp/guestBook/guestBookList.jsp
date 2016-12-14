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
<div style="margin-top: 20px;margin-left: 20px;">
    <div id="queryParams" style="float:left;">
        <label>姓名：</label><input type="text" id="name"  class="easyui-textbox" data-options="prompt:'请输入姓名'"/>

        <label>状态</label>
        <select  id="status" class="easyui-combobox" style="width:80px;">
            <option value=""></option>
            <option value="0">未读</option>
            <option value="1">跟进</option>
            <option value="2">结束</option>
        </select>

        <span id="search" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:80px">查询</span>

    </div>
    <div style="margin-left: 50px;">
        <a href="javascript:void(0);" id="edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">跟进</a>
        <a href="javascript:void(0);" id="remove"  class="easyui-linkbutton" data-options="iconCls:'icon-remove'">删除</a>

    </div>
</div>
<table id="tb" style="margin-top: 20px;"></table>
<input type="hidden" id="rowIndex"></body>
<div id="win" style="display:none;">
    <div style="margin: 20px auto;">

        <p><label>姓名：</label><input class="easyui-textbox" id="win_name" readonly="readonly"/></p>
        <p><label>电话：</label><input class="easyui-textbox" id="win_tel" readonly="readonly"/></p>
        <p><label>地址：</label><input class="easyui-textbox" id="win_address" readonly="readonly"/></p>
        <p><label>邮箱：</label><input class="easyui-textbox" id="win_email" readonly="readonly"/></p>
        <p><label>留言：</label><input class="easyui-textbox" id="win_content" readonly="readonly"/></p>
        <p>
            <label>状态：</label>
            <select  id="win_status" class="easyui-combobox" style="width:140px;">
                <option value="1">跟进</option>
                <option value="2">结束</option>
            </select>
        </p>
        <p>
            <label>备注：</label>
            <input id="win_note" class="easyui-textbox" data-options="multiline:true" style="width:142px;height:50px" />
        </p>
        <input type="hidden" id="win_rowId" />
        <input type="hidden" id="win_rowIndex" />
        <p>
            <a href="javascript:void(0);" class="easyui-linkbutton" id="win_save">确定</a>
            <a href="javascript:void(0);" class="easyui-linkbutton" id="win_cancle">取消</a>
        </p>
    </div>

</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/home/home.js"></script>
<script tpye="text/javascript">
    $(function () {

        $('#tb').datagrid({
             url:'../guestBook/getGuestBookList',
             columns:[[
                {field:'id',title:'id',width:80,hidden:true},
                {field:'name',title:'姓名',width:50},
                {field:'tel',title:'电话',align:'center',width:80},
                {field:'address',title:'地址',width:80,align:'center'},
                {field:'email',title:'邮箱',width:80,align:'center'},
                {field:'content',title:'留言',width:150,align:'left'},
                {field:'createTime',title:'留言时间',width:80,align:'center'},
                {field:'note',title:'备注',width:150,align:'left'},
                {field:'status',title:'状态',width:80,align:'center'}
            ]],
            title:"留言列表",
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
            onClickRow:function(rowIndex, rowData){
                $("#rowIndex").val(rowIndex);
            }

        });

        $("#search").on("click",function () {
            $("#tb").datagrid("reload",{
                status:$("#status").combobox("getValue"),
                name:$("#name").val()
            });
        });

        $("#edit").on("click",function(){

            var object = $("#tb").datagrid("getSelected");
            if(!!!object){
                $.messager.alert("提示","请选择要跟进的记录！",'info');
                return false;
            }
            var status = object.status;
            if(status == 2){
                $.messager.alert("提示","该留言不需要跟进！",'info');
                return false;
            }
            $("#win_name").textbox("setText",object.name);
            $("#win_tel").textbox("setText",object.tel);
            $("#win_address").textbox("setText",object.address);
            $("#win_email").textbox("setText",object.email);
            $("#win_content").textbox("setText",object.content);
            $("#win_rowId").val(object.id);

            $("#win").window({
                width:300,
                height:400,
                title : "跟进",
                minimizable:false,
                maximizable:false,
                closable:true,
                shadow:true,
                inline:true
            });
        });

        $("#remove").on("click",function(){
            var object = $("#tb").datagrid("getSelected");
            $.messager.confirm('提示','确定删除该行记录？',function(r){
                if (r){
                    $.ajax({
                        url : "../guestBook/deleteGuestBook",
                        type : "post",
                        dataType : "json",
                        data : {
                            id : object.id
                        },
                        success : function(data){
                            if(data){
                                $("#search").trigger("click");
                            }
                        }
                    });
                }
             });
        });

        $("#win_save").on("click",function(){
            var status = $("#win_status").combobox("getValue");
            if(status==""){
                $.messager.alert("提示","请选择跟进的结果！","info");
                return false;
            }
            if(status == "2"){
                $.messager.confirm("提示","确定要结束跟进？",function(r){
                    if(!r){
                        $("#win_cancle").trigger("click");

                    }
                });
            }
            var note = $("#win_note").textbox("getValue");
            var id = $("#win_rowId").val();
            $.ajax({
                type : "post",
                url : "../guestBook/followGuestBook",
                data : {
                    status : status,
                    note : note,
                    id : id
                },
                success : function(data){
                    console.log(data);
                    if(data){
                        $("#win_cancle").trigger("click");
                        $("#search").trigger("click");
                    }
                }
            });
        })


        $("#win_cancle").on("click",function(){
            $("#win_note").textbox("setValue","");
            $("#win_status").combobox("select",1);
            $("#win").window("close");
        })
    });


</script>
</body>
</html>
