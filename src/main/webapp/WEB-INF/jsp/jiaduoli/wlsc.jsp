<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta http-equiv="X-UA-Compatible" content="IE=12" />
    <link href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" rel="shortcut icon"/>
    <link type="text/css" rel="stylesheet" href="css/Base.css"/>
    <link type="text/css" rel="stylesheet" href="css/Modify.css"/>
    <!--[if lt IE 9]>
    <script src="js/jquery-1.9.1.js"></script>
    <![endif]-->
    <!--[if gte IE 9]><!-->
    <script src="js/jquery-2.1.1.js"></script>
    <!--<![endif]-->
    <title>网络商城</title>
    <style>
        .left{width:210px; float:left;}
        .right{width:830px; padding:40px; padding-bottom:20px; background-color:white; float:right;}
        a.store{display:inline-block; float:left; margin-right:69px; margin-bottom:20px;}
        a.store img{border:1px solid #cccccc; width:154px; height:197px;}
        a.store div{text-align:center; color:black; width:156px; height:23px; overflow:hidden;}

        #menu > li > div > a:hover {
            background-color: red;
            color: white;
        }

        #menu {
            width: 100%;
        }

        #menu > li {
            width: 20%;
        }

    </style>
    <script>
        $(function () {
            $(".store:nth-child(4n-1)").css({"margin-right": 0});
            $(".store:nth-child(4n)").css({"margin-right": 0, "float": "right"});
        });
    </script>
</head>
<body>
<div id="Base">
    <div id="head">
        <a class="alternate" style="left: 0;margin-left: 0;" ><img src="images/company/advertise/pic1.jpg" class="ad"/></a>
        <div id="dot"></div>
        <div style="position:absolute; width:100%; z-index:1;">
            <div style="position:absolute; height:139px; width:100%; left:50%; margin-left:-960px;">
                <img src="images/logoBg.jpg"/>
                <img src="images/menuBg.jpg"/>
            </div>
            <div id="fa-menu">
                <img src="images/company/common/logo.png" style="position:absolute; top:19px;" class="pic_left"/>
                <img src="images/company/common/phone.png" style="position:absolute; top:31px; " class="pic_right"/>
                <ul id="menu">
                    <li>
                        <a href="${pageContext.request.contextPath}/" style="padding-left:0;"><img
                                src="images/menu1.jpg"/>&nbsp;&nbsp;<span>首页</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/gywm"><img
                                src="images/menu3.jpg"/>&nbsp;&nbsp;<span>关于我们</span></a>
                        <div>
                            <a href='${pageContext.request.contextPath}/jdl/gsjs'>公司介绍</a>
                            <a href='${pageContext.request.contextPath}/jdl/ryzz'>资质荣誉</a>
                            <a href='${pageContext.request.contextPath}/jdl/jmzc'>加盟政策</a>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/dtxx"><img
                                src="images/menu4.jpg"/>&nbsp;&nbsp;<span>动态信息</span></a>
                        <div>
                            <a href='${pageContext.request.contextPath}/jdl/gsxw'>公司新闻</a>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/wlsc"><img
                                src="images/menu5.jpg"/>&nbsp;&nbsp;<span>网络商城</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div id="middle">
        <div class="left">
            <div class="leftMenu">
                <div class="leftMenuTitle"><img src="images/dot1.png"/>&nbsp;&nbsp;Mall 网络商城</div>
                <div class="leftMenuContent">
                    <a href='javascript:void(0);'>所有产品<img src='images/arrow1.png'/></a>
                    <%--<a href='store.asp?classid=18'>XO<img src='images/arrow1.png'/></a>
                    <a href='store.asp?classid=19'>大红袍<img src='images/arrow1.png'/></a>--%>
                </div>
            </div>
        </div>
        <div class="right">
            <c:forEach items="${productList}" var="product">
                <a href='javascript:void(0);' class='store'><img src='${product.picUrl}' width="" alt="${product.name}"/>
                    <div>${product.name}</div>
                </a>
            </c:forEach>
            <div class='clear'></div>

            <script type="text/javascript">
                $("a.store").hover(function () {
                    $("div", this).css("color", "red");
                }, function () {
                    $("div", this).css("color", "black");
                });
            </script>
        </div>
        <div class="clear"></div>
    </div>

    <div id="bottom">
        <table id="ch-bottom">
            <tr>
                <td style="width: 20%;"></td>
                <td style="width: 20%;text-align: right"><img src="images/company/common/logo.png" alt="厦门和八达,习酒醉天下" /></td>
                <td style="text-align: center;width: 20%;">
                    版权所有&copy;厦门和八达贸易有限公司
                    <br />
                    <br/>
                    <a href="http://www.beianbaba.com/icp/hebada.com">闽ICP备16036924号</a>
                </td>
                <td  style="text-align: left;width: 20%;">
                    Copyright 2016 hebada.com<br />
                    <br />
                    All Rights Reserved.
                </td>
                <td style="width: 20%;"></td>
            </tr>
        </table>
    </div>

</div>
<script type="text/javascript">
    $(function () {
        $(".alternate").css("width", $(document).width());
    })
</script>
</body>

</html>
