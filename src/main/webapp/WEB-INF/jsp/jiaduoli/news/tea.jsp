<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="<%=basePath%>"/>
<meta http-equiv="X-UA-Compatible" content="IE=12" />
<link href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" rel="shortcut icon"/>
<link type="text/css" rel="stylesheet" href="css/Base.css"/>
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
        <a class="alternate" style="left: 0;margin-left: 0;"><img src="images/company/advertise/pic1.jpg" class="ad"/></a>
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
                <div class="newsTitle">【大红袍】武夷岩茶大红袍的制作工艺流程！</div>
                <div class="s_0" style="text-align:center;font-size:12px;">公司新闻 | 2016-12-3 | 阅读: 599</div>
                <div class="s_2">
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;作为传统手工技艺国家级非物质文化遗产，武夷岩茶（大红袍）传统制作技艺源于明末，成于清初。大红袍的精制主要流程包括：毛茶→初拣→分筛→复拣→风选→初焙→匀堆→拣杂装箱，下面就详细介绍武夷岩茶（大红袍）制作技艺。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;武夷岩茶（大红袍）制作工艺流程共有10道工序，即采摘、萎凋、做青、双炒双揉、初焙、扬簸晾索及拣剔、复焙、团包和补火等。武夷岩茶（大红袍）既有绿茶的清香、红茶的甘醇，又独具"岩骨花香"的乌龙茶神韵。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;萎凋：萎凋是鲜叶丧失水分的过程。其标准为新梢顶端弯曲，第二叶明显下垂且叶面大部分失去光泽，失水率约为10%-15%.此过程对大红袍香型的形成和能否有醇厚的滋味关系极大。其中日光萎凋是最好的萎凋方式。萎凋时，将鲜叶置于谷席、布垫等萎凋器上，摊叶厚度1-2kg/m2.阳光强烈时要二晒二凉，晒青程度以叶面光泽消失，青气不显，清香外溢，叶质柔软，手持茶梢基部，顶叶能自然下垂为度。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;判断做青适度与否，通常于亮处透视第二片叶，以叶面呈亮黄色，叶缘呈焦枯色，近叶缘之叶内呈淡黄色，靠近主脉及叶柄处呈淡黄绿色，俗称"三节叶"为做青叶的理想状态。前期较嫩原料，叶片由于失水不平衡而收缩面叶下凹的"汤匙形",以手触之，柔软如棉；后期原料硬化则有刺手感。嗅之，青草气逐渐为花果香所替代，清香向熟香转化，即谓之兰花香，具有幽而清，浓而不浊、香甜扑鼻之感。做青在岩茶制作中占有特殊地位，费时最长，一般需要8～12h.若操之过急，苦水未清，则会给茶汤滋味带来不良影响。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;杀青：杀青是结束做青工序的标志，是固定毛茶品质和做青质量的主要因素。主要采取高温破坏茶青中的酶活性，防止做青叶的继续氧化，同时使做青叶失去部分水分呈热软态，为后道揉捻工序提供基础条件。其杀青标准：叶态干软，叶张边缘起白泡状，手揉紧后无水溢出且呈粘手感，青气去尽呈清香味即可。出青时需快速出尽，特别是最后出锅的尾量需快速，否则易过火变焦，使毛茶茶汤出现混浊和焦粒，即俗称"拉锅".杀青火候需要掌握前中期旺火高温，后期低火低温出锅。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;揉捻：揉捻是形成武夷岩茶外形和影响茶叶制率的主要因素。揉捻时应做到：杀青叶需快速盛进揉捻机乘热揉捻，以便达到最佳效果；装茶量需达揉捻机盛茶桶高1/2以上至满桶；揉捻过程掌握先轻压1-2次，即采用轻-重-轻，以利桶内茶叶的自动翻拌和整形。初揉后即可投入锅中复炒，使茶条回软利于复揉，又补充杀青之不足。并使已外滥的茶汁中之糖类、酶类等直接与高温锅接触，起轻度焦化而形成岩茶的韵昧，时间虽仅30s,却对品质起很大作用。复揉除使条形紧结外，还能提高茶汤浓度。复揉手法与初揉相同，揉20余下即可进行"走水焙".
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;走水焙：岩茶"走水焙"在一个密闭的焙间中用培笼进行。在各个不同温度（90-120℃）的焙窟上以"流水法"操作。使复揉叶经历高、低、高不同温度的烘焙，达六七成干下焙。整个过程10多分钟。速度快、工作紧张，故又称"抡水焙".
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;簸扇、凉索与拣剐：走水焙下焙后，簸扇去片末，然后摊凉5-6h,以增进后熟作用，使滋味醇和、色泽沙黄而浦润。再经拣剔去除梗与茶朴，即可复培。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;炖火与趁热装箱：拣剔后的茶条先以90-100℃的培温复焙1-2h,再改用70-90℃低温"文火慢炖".这是武夷岩茶特有的过程、对增进汤色、耐泡、滋味醇和、香气熟化等有很好效果。最后趁热装箱，也是一种热处理过程，对品质也有一定良好影响。
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;毛茶拼配和付制：拼配应根据拟生产的成品茶的要求，制订不同产地、不同季别、不同等级的毛茶配料比例的正常方案。拼配应遵循执行标准、稳定质量、兼顾全局、统筹安排、充分利用、提高效率的原则。
                    </p>
                    <p>
                        <img title="" alt="" src="${pageContext.request.contextPath}/images/company/news/tea.jpg"
                             width="600" height="561">
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