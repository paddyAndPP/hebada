<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
        .left {
            width: 210px;
            float: left;
        }

        .right {
            width: 830px;
            padding: 40px;
            padding-bottom: 20px;
            background-color: white;
            float: right;
        }

        a.store {
            display: inline-block;
            float: left;
            margin-right: 69px;
            margin-bottom: 20px;
        }

        a.store img {
            border: 1px solid #cccccc;
            width: 154px;
            height: 197px;
        }

        a.store div {
            text-align: center;
            color: black;
            width: 156px;
            height: 23px;
            overflow: hidden;
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
    <div id="head1" style="height: 140px;">
        <img class="alternate" src="images/store.jpg"/>
        <div style="position:absolute; width:100%; z-index:1;">
            <div style="position:absolute; height:139px; width:100%; left:50%; margin-left:-960px;">
                <img src="images/logoBg.jpg"/>
                <img src="images/menuBg.jpg"/>
            </div>
            <div id="fa-menu">
                <img src="images/logo.png" style="position:absolute; top:19px;"/>
                <img src="images/phone.png" style="position:absolute; top:31px; right:0;"/>
                <ul id="menu">
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/index" style="padding-left:0;"><img
                                src="images/menu1.jpg"/>&nbsp;&nbsp;<span>首页</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/zxdt"><img
                                src="images/menu2.jpg"/>&nbsp;&nbsp;<span>最新活动</span></a>
                        <div></div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/gywm"><img
                                src="images/menu3.jpg"/>&nbsp;&nbsp;<span>关于我们</span></a>
                        <div>
                            <a href='${pageContext.request.contextPath}/jdl/gsjs'>公司介绍</a>
                            <a href='${pageContext.request.contextPath}/jdl/ryzz'>资质荣誉</a>
                            <a href='${pageContext.request.contextPath}/jdl/zlhz'>战略合作</a>
                            <a href='${pageContext.request.contextPath}/jdl/jmzc'>加盟政策</a>
                            <a href='${pageContext.request.contextPath}/jdl/lxfs'>联系方式</a>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/dtxx"><img
                                src="images/menu4.jpg"/>&nbsp;&nbsp;<span>动态信息</span></a>
                        <div>
                            <a href='${pageContext.request.contextPath}/jdl/gsxw'>公司新闻</a>
                            <a href='${pageContext.request.contextPath}/jdl/bxzs'>保险知识</a>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/wlsc"><img
                                src="images/menu5.jpg"/>&nbsp;&nbsp;<span>网络商城</span></a>
                        <div>
                            <a href='${pageContext.request.contextPath}/jdl/lzlj'>泸州老窖</a>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/fwwd"><img
                                src="images/menu6.jpg"/>&nbsp;&nbsp;<span>服务网点</span></a>
                        <div></div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/zlxz" style="padding-right:0;"><img
                                src="images/menu7.jpg"/>&nbsp;&nbsp;<span>资料下载</span></a>
                        <div></div>
                    </li>
                </ul>
            </div>
        </div>
        <script>
            $("#menu>li").hover(
                    function () {
                        $(">div", this).show("fast");
                        $(">a>span", this).css("color", "yellow");
                    },
                    function () {
                        $(">div", this).hide("fast");
                        $(">a>span", this).css("color", "white");
                    }
            );
        </script>
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
            <a href='javascript:void(0);' class='store'><img src='${pageContext.request.contextPath}/images/company/product/zuidong.jpg'/>
                <div>醉天下·醉东</div>
            </a>
            <a href='javascript:void(0);' class='store'><img src='${pageContext.request.contextPath}/images/company/product/zuinan.jpg'/>
                <div>醉天下·醉南</div>
            </a>
            <a href='javascript:void(0);' class='store'><img src='${pageContext.request.contextPath}/images/company/product/zuixi.jpg'/>
                <div>醉天下·醉西</div>
            </a>
            <a href='javascript:void(0);' class='store'><img src='${pageContext.request.contextPath}/images/company/product/xo1.jpg'/>
                <div>白兰地·XO</div>
            </a>
            <a href='javascript:void(0);' class='store'><img src='${pageContext.request.contextPath}/images/company/product/dahongpao.jpg'/>
                <div>大红袍</div>
            </a>

            <div class='clear'></div>
            <%--<div style='text-align:center'><br>共有：<strong>24</strong>条&nbsp;每页显示：<strong>12</strong>条&nbsp;&nbsp;&nbsp;[首页]&nbsp;[上一页]&nbsp;<a
                    class='c' href="?Page=2">[下一页]</a>&nbsp;<a class='c'
                                                               href="?Page=2">[尾页]</a>&nbsp;&nbsp;&nbsp;页次：<strong>1</strong>/2&nbsp;转到:<select
                    name="Page"
                    onchange="javascript:window.location='?Page='+this.options[this.selectedIndex].value+'';">
                <option value="1" selected>1</option>
                <option value="2">2</option>
            </select>&nbsp;&nbsp;<br><br></div>--%>
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
</body>
<script src="js/function.js"></script>
</html>
