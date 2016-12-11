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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/themes/bootstrap/easyui.css">


</head>
<body>
<div class="easyui-layout" style="width:100%;height:100%">
    <div data-options="region:'north'" style="height:50px"></div>
    <div data-options="region:'south',split:true" style="height:50px;"></div>
   <%-- <div data-options="region:'east',split:true" title="East" style="width:180px;">
    </div>--%>
    <div data-options="region:'west',split:true" title="West" style="width: 20%;">
        <div class="easyui-accordion tab-menus" data-options="fit:true,border:false">
            <div title="Title1" style="padding:10px;">
                <a href="javascript:void(0);" class="tab-menu">content1</a>
                <a href="javascript:void(0);" class="tab-menu">content1</a>
                <a href="javascript:void(0);" class="tab-menu">content1</a>
            </div>
            <div title="Title2" data-options="selected:true" style="padding:10px;">
                <ul class="easyui-tree">
                    <li>
                        <span>My Documents</span>
                        <ul>
                            <li >
                                <em>Photos</em>
                                <ul>
                                    <li >
                                        <a class="link" data-url="../admin/index">首页</a>
                                    </li>
                                    <li>
                                        <a>Wife</a>
                                    </li>
                                    <li>
                                        <a>Company</a>
                                    </li>
                                </ul>
                            </li>
                            <li data-options="state:'closed'">
                                <span >Program Files</span>
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
            <div title="Title3" style="padding:10px">
                content3
            </div>
        </div>
    </div>
    <div class="easyui-tabs" data-options="region:'center'">
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/home/home.js"></script>

</body>
</html>
