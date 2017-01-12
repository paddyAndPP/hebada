<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品列表</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/bootstrap/easyui.css">
</head>
<body>

<div style="margin-top: 20px;margin-left: 20px;">
    <div id="queryParams" style="float:left;padding-right: 12px;">
        <label>名称：</label><input type="text" id="name"  class="easyui-textbox" data-options="prompt:'请输入名称'"/>
        <label>类型：</label>
        <select  id="type" class="easyui-combobox" style="width:80px;">
            <option value=""></option>
            <option value="1">习酒</option>
            <option value="2">大红袍</option>
            <option value="3">洋酒</option>
        </select>
        <span id="search" class="easyui-linkbutton" data-options="iconCls:'icon-search'" style="width:80px; ">查询</span>

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
    <form style="padding:8%;">
        <input type="hidden" id="add_win_rowId" />
        <input type="hidden" id="add_win_rowIndex" />
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" name="add_win_name" id="add_win_name"style="width:80%" data-options="label:'名称:',prompt:'请输入名称...'">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-filebox" name="add_win_pic" id="add_win_pic" style="width:80%" data-options="label:'主图：'">
            <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" id="add_win_upload">上传</a>
            <input type="hidden" id="add_win_url">
        </div>
        <div style="margin-bottom:20px" style="display: none;"  id="picPre">
           <img id="add_win_pic_url"/>
        </div>
        <div style="margin-bottom:20px">
            <select  id="add_win_type" class="easyui-combobox" label="类型：" style="width:80%;" data-options="enabble:true">
                <option value="1">习酒</option>
                <option value="2">大红袍</option>
                <option value="3">洋酒</option>
            </select>
        </div>
        <div style="margin-bottom:20px; color: red;">
           <p>建议：上传440*440的图片</p>
        </div>
    </form>
    <div style="text-align: center;">
        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" id="add_win_save">确定</a>
        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" id="add_win_cancle">取消</a>
    </div>
</div>

<div id="edit_win" style="display:none;">
    <form style="padding:8%;">
        <input type="hidden" id="edit_win_rowId" />
        <input type="hidden" id="edit_win_rowIndex" />
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" name="add_win_name" id="edit_win_name"style="width:80%" data-options="label:'名称:',prompt:'请输入名称...'">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-filebox" name="edit_win_pic" id="edit_win_pic" style="width:80%" data-options="label:'主图：'">
            <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" id="edit_win_upload">上传</a>
            <input type="hidden" id="edit_win_url">
        </div>
        <div style="margin-bottom:20px" style="display: none;"  id="edit_picPre">
            <img id="edit_win_pic_url" width="100"  height="100"/>
        </div>
        <div style="margin-bottom:20px">
            <select  id="edit_win_type" class="easyui-combobox" label="类型：" style="width:80%;" data-options="enable:true">
                <option value="1">习酒</option>
                <option value="2">大红袍</option>
                <option value="3">洋酒</option>
            </select>
        </div>
        <div style="margin-bottom:20px; color: red;">
            <p>建议：上传440*440的图片</p>
        </div>
    </form>
    <div style="text-align: center;">
        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" id="edit_win_save">确定</a>
        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" id="edit_win_cancle">取消</a>
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
                {field:'productName',title:'产品名',width:50,align:'center'},
                {field:'type',title:'类型',width:50,align:'center'},
                {field:'imageHtml',title:'产品图片',align:'center',width:80}
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
        
        //确定新增
        $("#add_win_save").on("click",function(){
            var name = $("#add_win_name").textbox("getValue");
            if(name == ""){
                $.messager.alert("提示","请输入名称！","info");
                $("#add_win_name").focus();
                return false;
            }
            var pic_url = $("#add_win_url").val();
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
            $.ajax({
                type : "post",
                url : "${pageContext.request.contextPath}/product/saveProduct",
                data : {
                    name : name,
                    type : type,
                    pic_url:pic_url
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
            $("#add_win_url").val("");
            $("#picPre").hide();
            $("#add_win").window("close");
        })

        //修改功能 --begin
        //点击修改按钮
        $("#edit").on("click",function () {
            var object = $("#tb").datagrid("getSelected");
            if(!!!object){
                $.messager.alert("提示","请选择要修改的记录！",'info');
                return false;
            }
            $("#edit_win_rowId").val(object.id);
            $.ajax({
                type : "get",
                url : "${pageContext.request.contextPath}/product/" +　object.id,
                success : function (data) {
                    $("#edit_win_name").textbox("setValue", data.name);
                    $("#edit_win_url").val(data.picUrl);
                    $("#edit_win_pic_url").attr("src", data.picUrl);
                    $("#edit_picPre").show();
                    $("#edit_win_type").combobox("select",data.type);
                }
            });


            $("#edit_win").window({
                width:500,
                height:500,
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
                        $.messager.alert("提示","请输入名称！","info");
                        $("#edit_win_name").focus();
                        return false;
                    }
                    var pic_url = $("#edit_win_url").val();
                    if(pic_url == ""){
                        $.messager.alert("提示","请上传主图！","info");
                        return false;
                    }
                    var type = $("#edit_win_type").combobox("getValue");
                    if(type == ""){
                        $.messager.alert("提示","请选择类型！","info");
                        $("#edit_win_type").focus();
                        return false;
                    }
                    $.ajax({
                        type : "post",
                        url : "${pageContext.request.contextPath}/product/updateProduct",
                        data : {
                            id : $("#edit_win_rowId").val(),
                            name : name,
                            type : type,
                            pic_url:pic_url
                        },
                        success : function (data) {
                            $("#edit_win_cancle").trigger("click");
                            $("#search").trigger("click");
                        }
                    });
                }
            })

        })

        //取消修改
        $("#edit_win_cancle").on("click",function(){
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
                        url : "../product/deleteProduct",
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

        //上传图片 begin

        $("#add_win_upload").on("click",function(){
            var domId = "add_win_pic";
            uploadImg(domId, function (data) {
                var imgPre = document.getElementById("add_win_pic_url");
                imgPre.src = data.url;
                $("#add_win_url").val(data.url);
                imgPre.width = 100;
                imgPre.height= 100;
                $("#picPre").show();
            });
        });

        $("#edit_win_upload").on("click",function(){
            var domId = "edit_win_pic";
            uploadImg(domId, function (data) {
                var imgPre = document.getElementById("edit_win_pic_url");
                imgPre.src = data.url;
                $("#edit_win_url").val(data.url);
                imgPre.width = 100;
                imgPre.height= 100;
                $("#edit_picPre").show();
            });
        });

        function uploadImg(domId, callback){
            var url = "";
            var formData = new FormData();
            if($("input[name='" + domId+ "']")[0].files.length <=0 ) {
                $.messager.alert("提示","请添加要上传的图片!",'info');
                return false;
            }
            formData.append("file", $("input[name='"+ domId +"']")[0].files[0]);
            $.ajax({
                url: "${pageContext.request.contextPath}/image/upload/single",
                type: "POST",
                async:false,
                data: formData,
                /**
                 *必须false才会自动加上正确的Content-Type
                 */
                contentType: false,
                /**
                 * 必须false才会避开jQuery对 formdata 的默认处理
                 * XMLHttpRequest会对 formdata 进行正确的处理
                 */
                processData: false,
                success: function (data) {
                    callback(data);
                },
                error: function () {
                    $.messager.alert("提示","上传失败！",'info');
                }
            });


        }

        //上传图片 end
    });
</script>
</body>
</html>
