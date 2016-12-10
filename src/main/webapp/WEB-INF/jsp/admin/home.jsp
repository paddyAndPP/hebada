<%--
  Created by IntelliJ IDEA.
  User: aiiajj
  Date: 2016/12/10
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Full Layout - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="../res/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../res/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="../res/easyui/demo.css">
    <script type="text/javascript" src="../res/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="../res/easyui/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout">
    <div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">north region</div>
    <div data-options="region:'west',split:true,title:'West'" style="width:250px;padding:10px;">

            <ul class="easyui-tree">
                <li>
                    <span>My Documents</span>
                    <ul>
                        <li data-options="state:'closed'">
                            <span>Photos</span>
                            <ul>
                                <li>
                                    <span><a href="../admin/index" data-options="region:'center'">首页</a></span>
                                </li>
                                <li>
                                    <span>Wife</span>
                                </li>
                                <li>
                                    <span>Company</span>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <span>Program Files</span>
                            <ul>
                                <li>Intel</li>
                                <li>Java</li>
                                <li>Microsoft Office</li>
                                <li>Games</li>
                            </ul>
                        </li>
                        <li>index.html</li>
                        <li>about.html</li>
                        <li>welcome.html</li>
                    </ul>
                </li>
            </ul>




    </div>
    <div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">east region</div>
    <div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
    <div data-options="region:'center',title:'Center'"></div>
</body>
</html>
