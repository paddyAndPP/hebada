<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品列表</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/bootstrap/easyui.css">
</head>
<body>

<div style="margin-top: 20px;margin-left: 20px;">
    <div id="queryParams" style="float:left;">
        <label>名称：</label><input type="text" id="name"  class="easyui-textbox" data-options="prompt:'请输入名称'"/>
        <label>类型：</label>
        <select  id="type" class="easyui-combobox" style="width:80px;">
            <option value=""></option>
            <option value="1">习酒</option>
            <option value="2">大红袍</option>
            <option value="3">洋酒</option>
        </select>

        <span id="search" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:80px">查询</span>

    </div>
    <div style="margin-left: 50px;">
        <a href="javascript:void(0);" id="add" class="easyui-linkbutton" data-options="iconCls:'icon-add'">新增</a>
        <a href="javascript:void(0);" id="edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">修改</a>
        <a href="javascript:void(0);" id="remove"  class="easyui-linkbutton" data-options="iconCls:'icon-remove'">删除</a>

    </div>
</div>

<table id="tb" style="margin-top: 20px;"></table>


<input type="hidden" id="rowIndex"></body>

<div id="add_win" style="display:none;">
    <div style="margin: 20px auto;">
        <p><label>名称：</label><input class="easyui-textbox" id="add_win_name" data-options="prompt:'请输入名称...'"/></p>
        <p>
            <label>主图：</label>
            <input type="file"  id="add_win_pic" data-options="prompt:'请选择图片...'"/>
            <a href="javascript:void(0);" class="easyui-linkbutton" id="add_win_upload">上传</a>
        </p>
        <p id="picPre" style="display: none;"><img id="add_win_pic_url"/></p>
        <p>
            <label>类型：</label>
            <select  id="add_win_type" class="easyui-combobox" style="width:140px;">
                <option value="1">习酒</option>
                <option value="2">大红袍</option>
                <option value="3">洋酒</option>
            </select>
        </p>
        <p>
            <label>描述</label>
            <input id="add_win_description" class="easyui-textbox" data-options="multiline:true" style="width:142px;height:50px" />
        </p>
        <input type="hidden" id="add_win_rowId" />
        <input type="hidden" id="add_win_rowIndex" />
        <p>
            <a href="javascript:void(0);" class="easyui-linkbutton" id="add_win_save">确定</a>
            <a href="javascript:void(0);" class="easyui-linkbutton" id="add_win_cancle">取消</a>
        </p>
    </div>

</div>

<div id="edit_win" style="display:none;">
    <div style="margin: 20px auto;">
        <p><label>名称：</label><input class="easyui-textbox" id="edit_win_name" data-options="prompt:'请输入名称...'"/></p>
        <p>
            <label>主图：</label>
            <input type="file"  id="edit_win_pic" data-options="prompt:'请选择图片...'"/>
            <a href="javascript:void(0);" class="easyui-linkbutton" id="edit_win_upload">上传</a>
        </p>
        <p id="edit_picPre" style="display: none;"><img id="edit_win_pic_url"/></p>
        <p>
            <label>类型：</label>
            <select  id="edit_win_type" class="easyui-combobox" style="width:140px;">
                <option value="1">习酒</option>
                <option value="2">大红袍</option>
                <option value="3">洋酒</option>
            </select>
        </p>
        <p>
            <label>描述</label>
            <input id="edit_win_description" class="easyui-textbox" data-options="multiline:true" style="width:142px;height:50px" />
        </p>
        <input type="hidden" id="edit_win_rowId" />
        <input type="hidden" id="edit_win_rowIndex" />
        <p>
            <a href="javascript:void(0);" class="easyui-linkbutton" id="edit_win_save">确定</a>
            <a href="javascript:void(0);" class="easyui-linkbutton" id="edit_win_cancle">取消</a>
        </p>
    </div>

</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/home/home.js"></script>

<script type="text/javascript" >

    $(function(){
        $("#tb").datagrid({
            url:'../product/getProductList',
            columns:[[
                {field:'id',title:'id',width:80,hidden:true},
                {field:'name',title:'姓名',width:50,align:'center'},
                {field:'description',title:'描述',width:50,align:'center'},
                {field:'picUrl',title:'主图地址',align:'center',width:80}
            ]],
            title:"产品列表",
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

        //点击查询按钮
        $("#search").on("click",function(){
            $("#tb").datagrid("reload",{
                name : $("#name").textbox("getValue"),
                type : $("#type").combobox("getValue")
            })
        });

        //点击新增按钮
        $("#add").on("click",function(){
            $("#add_win").window({
                width:500,
                height:500,
                title : "新增",
                minimizable:false,
                maximizable:false,
                closable:true,
                shadow:true,
                inline:true
            });
        });

        //新增功能 --begin
        
        //选择图片并显示
        $("#add_win_pic").on("change",function () {
            var url;
            if (navigator.userAgent.indexOf("MSIE")>=1) { // IE
                url = document.getElementById("add_win_pic").value;
            } else if(navigator.userAgent.indexOf("Firefox")>0) { // Firefox
                url = window.URL.createObjectURL(document.getElementById("add_win_pic").files.item(0));
            } else if(navigator.userAgent.indexOf("Chrome")>0) { // Chrome
                url = window.URL.createObjectURL(document.getElementById("add_win_pic").files.item(0));
            }
            var imgPre = document.getElementById("add_win_pic_url");
            imgPre.src = url;
            imgPre.width = 400;
            $("#picPre").show();
        });
        //确定新增
        $("#add_win_save").on("click",function(){
            var name = $("#add_win_name").textbox("getValue");
            if(name == ""){
                $.messager.alert("提示","请输入名称！","info");
                $("#add_win_name").focus();
                return false;
            }
            var pic_url = $("#add_win_pic_url").attr("src");
            if(pic_url == ""){
                $.messager.alert("提示","请上传主图！","info");
                return false;
            }
            var type = $("#add_win_type").combobox("getValue");
            if(type == ""){
                $.messager.alert("提示","请选择类型！","info");
                $("#add_win_type").focus();
                return false;
            }
            var description = $("#add_win_description").textbox("getValue");
            if(description == ""){
                $.messager.alert("提示","请输入描述！","info");
                $("#add_win_description").focus();
                return false;
            }

            $.ajax({
                type : "post",
                url : "../product/addProduct",
                data : {
                    name : name,
                    account : account,
                    role_id : role_id,
                    password : password
                },
                success : function (data) {
                    $("#add_win_cancle").trigger("click");
                    $("#search").trigger("click");
                }
            });
        });
        //取消新增
        $("#add_win_cancle").on("click",function(){
            $("#add_win_type").combobox("select",0);
            $("#add_win_description").textbox("setValue","");
            $("#add_win_name").textbox("setValue","");
            $("#add_win_pic").val("");
            $("#add_win_pic_url").attr("src","");
            $("#picPre").hide();
            $("#add_win").window("close");
        })

        //新增功能 --end


        //修改功能 --begin
        //点击修改按钮
        $("#edit").on("click",function () {
            var object = $("#tb").datagrid("getSelected");
            if(!!!object){
                $.messager.alert("提示","请选择要修改的记录！",'info');
                return false;
            }
            $("#edit_win_name").textbox("setValue",object.name);
            $("#edit_win_account").textbox("setValue",object.account);
            $("#edit_win_password").textbox("setValue",object.password);
            $("#edit_win_role").combobox("select",object.role_id-1);
            $("#edit_win_rowId").val(object.id);
            $("#edit_win").window({
                width:300,
                height:400,
                title : "修改",
                minimizable:false,
                maximizable:false,
                closable:true,
                shadow:true,
                inline:true
            });
        })

        //确定修改
        $("#edit_win_save").on("click",function () {
            $.messager.confirm('提示','确定修改该行记录？',function (r) {
                if(!r){
                    return false;
                }else{
                    var name = $("#edit_win_name").textbox("getValue");
                    if(name == ""){
                        $.messager.alert("提示","请输入用户名！","info");
                        $("#edit_win_account").focus();
                        return false;
                    }
                    var account = $("#edit_win_account").textbox("getValue");
                    if(account == ""){
                        $.messager.alert("提示","请输入登录名！","info");
                        $("#edit_win_account").focus();
                        return false;
                    }
                    var password = $("#edit_win_password").textbox("getValue");
                    if(password == ""){
                        $.messager.alert("提示","请输入密码！","info");
                        $("#edit_win_password").focus();
                        return false;
                    }
                    var role_id = $("#edit_win_role").combobox("getValue");
                    if(role_id == ""){
                        $.messager.alert("提示","请选择角色！","info");
                        return false;
                    }
                    $.ajax({
                        type : "post",
                        url : "../user/updateUser",
                        data : {
                            id : $("#edit_win_rowId").val(),
                            name : name,
                            account : account,
                            password : password,
                            role_id : role_id
                        },
                        success : function (data) {
                            if(data) {
                                $("#edit_win_cancle").trigger("click");
                                $("#search").trigger("click");
                            }else{
                                $.messager.alert("提示","修改失败！","info");

                            }
                        }
                    });
                }
            })

        })

        //取消修改
        $("#edit_win_cancle").on("click",function(){
            $("#edit_win_role").combobox("select",0);
            $("#edit_win_password").textbox("setValue","");
            $("#edit_win_name").textbox("setValue","");
            $("#edit_win_account").textbox("setValue","");
            $("#edit_win").window("close");
        })

        //新增功能 --end

        //删除
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
