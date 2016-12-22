<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="<%=basePath%>"/>
<meta http-equiv="X-UA-Compatible" content="IE=12" />
<link type="text/css" rel="stylesheet" href="css/Base.css"/>
<link href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" rel="shortcut icon"/>
<link type="text/css" rel="stylesheet" href="css/Modify.css"/>
<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
<!--<![endif]-->
<title>动态信息</title>
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
    #menu > li > div >a:hover{
        background-color: red;
        color: white;
    }
    #menu {
        width:100%;
    }
    #menu > li{
        width:20%;
    }
    .pic_left{left:5%;}
    .pic_right{right:5%;}
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
                        <a href="${pageContext.request.contextPath}/jdl/gsjs"><img
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
    <div id="middle" style="width: 1170px;">
        <div class="left">
            <div class="leftMenu">
                <div class="leftMenuTitle"><img src="images/dot1.png"/>&nbsp;&nbsp;News 新闻动态</div>
                <div class="leftMenuContent">
                    <a href='${pageContext.request.contextPath}/jdl/gsxw'>公司新闻<img src='images/arrow1.png'/></a>
                    <a href='news.asp?classid=17' style="display: none;">保险知识<img src='images/arrow1.png'/></a>
                </div>
            </div>
        </div>
        <div class="right" style="min-height: 326px;">
            <div class="newsShow">
                <div class="newsTitle">【习酒】贵州习酒荣获2016中国标准创新贡献奖！</div>
                <div class="s_0" style="text-align:center;font-size:12px;">公司新闻 | 2016-11-30 | 阅读: 599</div>
                <div class="s_2">
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;近日，国家质检总局和国家标准委联合印发了《关于公布2016年中国标准创新贡献奖获奖名单的通知》，公布了2016年中国标准创新贡献奖名单。其中，由贵州省产品质量监督检验院，贵州茅台酒有限责任公司，贵州茅台酒厂（集团）习酒有限责任公司等单位制定的国家标准《酱香型白酒》（GB/T26760-2011）荣获2016年中国标准创新贡献三等奖。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;据悉，“中国标准创新贡献奖”是国家质量监督检验检疫总局和国家标准化管理委员会共同设立的、标准化领域的全国性奖项，是国家在标准化方面设立的最高荣誉。 </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;酱香酒是中国人最爱的蒸馏酒品种之一。近些年，除了酱香鼻祖茅台与习酒以外，很多品牌也涌入了酱香酒市场，市场竞争愈演愈烈，也出现了部分商家鱼目混珠、浑水摸鱼、以次充好等现象。茅台与习酒作为酱香酒行业的领先者，有责任、有义务在国家层面、国际层面推广+并提升酱香酒的行业整体形象。因此，在不断的探索酱香新技术、坚守工艺的基础上，联合开展了对酱香酒国际标准的研究与探索。 </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;业内人士指出，《酱香型白酒》国家标准被检测机构广泛采用，使全国酱香型白酒价值与品质都得到了极大提升。该标准实施以后，贵州、四川、湖南、山东、广东等地400多家企业宣传采用该标准组织生产。
                    </p>
                    <p>
                        <img title="" alt="" src="${pageContext.request.contextPath}/images/company/news/news_1.jpg" width="600" height="561">
                    </p>
                </div>
            </div>
            <div align="right"><a class="c" href="javascript:history.go(-1)">&lt;&lt;&nbsp;Return</a></div>
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