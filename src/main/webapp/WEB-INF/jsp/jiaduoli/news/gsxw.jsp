<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>公司新闻</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" rel="shortcut icon"/>
    <base href=<%=basePath%>>
    <link type="text/css" rel="stylesheet" href="css/Base.css"/>
    <link type="text/css" rel="stylesheet" href="css/Modify.css"/>
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
    <![endif]-->
    <!--[if gte IE 9]><!-->
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
    <!--<![endif]-->

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

        .newsList {
            padding: 17px;
            border-bottom: 1px dotted #cccccc;
            height: 126px;
            overflow: hidden;
            position: relative;
        }

        .newsList img {
            float: left;
            margin-right: 30px;
        }

        .newsList .smallimage {
            width: 188px;
            height: 126px;
        }

        .newsList p {
            font-size: 16px;
            color: #2e91e3;
            margin: 5px auto;
        }

        .newsList div {
            float: left;
            width: 520px;
            height: 88px;
            overflow: hidden;
        }

        .newsList a {
            background: #971306;
            color: white;
            position: absolute;
            right: 17px;
            bottom: 17px;
            padding: 0 10px;
        }

        .newsTitle {
            border-bottom: 1px dotted #cccccc;
            color: #2e91e3;
            font-size: 18px;
        }

        .security {
            font-size: 17px;
        }

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

        .pic_left {
            left: 5%;
        }

        .pic_right {
            right: 5%;
        }
    </style>
    <script>
        $(function () {
            $(".net:nth-child(4n-1)").css({"margin-right": 0});
            $(".net:nth-child(4n)").css({"margin-right": 0, "float": "right"});
        });
    </script>
</head>
<body>
<div id="Base">
    <div id="head">
        <a class="alternate" style="left: 0;margin-left: 0;" ><img src="images/company/advertise/pic1.jpg" class="ad"/></a>
        <a class="alternate" style="left: 0;margin-left: 0;" ><img src="images/company/advertise/pic2.jpg" class="ad"/></a>
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
                        <a href="${pageContext.request.contextPath}/jdl/index" style="padding-left:0;"><img
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
                <div class="leftMenuTitle"><img src="images/dot1.png"/>&nbsp;&nbsp;News 新闻动态</div>
                <div class="leftMenuContent">
                    <a href='${pageContext.request.contextPath}/jdl/gsxw'>公司新闻<img src='images/arrow1.png'/></a>
                    <a href='news.asp?classid=17' style="display: none;">保险知识<img src='images/arrow1.png'/></a>
                </div>
            </div>
        </div>
        <div class="right">
            <div class='newsList'><img class='smallimage'
                                       src='${pageContext.request.contextPath}/images/company/news/news_1.jpg'/>
                <p>【习酒】贵州习酒荣获2016中国标准创新贡献奖！</p>
                <div>
                    近日，国家质检总局和国家标准委联合印发了《关于公布2016年中国标准创新贡献奖获奖名单的通知》，公布了2016年中国标准创新贡献奖名单。其中，由贵州省产品质量监督检验院，贵州茅台酒有限责任公司，贵州茅台酒厂（集团）习酒有限责任公司等单位制定的国家标准《酱香型白酒》（GB/T26760-2011）荣获2016年中国标准创新贡献三等奖。
                </div>
                <a href='${pageContext.request.contextPath}/jdl/drinks'>More</a></div>
            <div class='newsList'><img class='smallimage'
                                       src='${pageContext.request.contextPath}/images/company/news/tea.jpg'/>
                <p>【大红袍】带你领略武夷岩茶大红袍的制作工艺流程！</p>
                <div>
                    作为传统手工技艺国家级非物质文化遗产，武夷岩茶（大红袍）传统制作技艺源于明末，成于清初。大红袍的精制主要流程包括：毛茶→初拣→分筛→复拣→风选→初焙→匀堆→拣杂装箱，下面就详细介绍武夷岩茶（大红袍）制作技艺。
                    <a href='${pageContext.request.contextPath}/jdl/tea'>More</a>
                </div>
                <script type="text/javascript">
                    $(".newsList").hover(function () {
                        $("a", this).css({"color": "yellow", "right": "0px"});
                        $("p", this).css("color", "#971306");
                    }, function () {
                        $("a", this).css({"color": "white", "right": "17px"});
                        $("p", this).css("color", "#2e91e3");
                    });
                </script>
            </div>
            <div class="clear"></div>
        </div>

        <div id="bottom">
            <table id="ch-bottom">
                <tr>
                    <td style="width: 20%;"></td>
                    <td style="width: 20%;text-align: right"><img src="images/company/common/logo.png"
                                                                  alt="厦门和八达,习酒醉天下"/></td>
                    <td style="text-align: center;width: 20%;">
                        版权所有&copy;厦门和八达贸易有限公司
                        <br/>
                        <br/>
                        <a href="http://www.beianbaba.com/icp/hebada.com">闽ICP备16036924号</a>
                    </td>
                    <td style="text-align: left;width: 20%;">
                        Copyright 2016 hebada.com<br/>
                        <br/>
                        All Rights Reserved.
                    </td>
                    <td style="width: 20%;"></td>
                </tr>
            </table>
        </div>

    </div>
</div>
</body>
<script type="text/javascript">
    $(function () {
        $(".alternate").css("width", $(document).width());
    })
</script>
</html>
