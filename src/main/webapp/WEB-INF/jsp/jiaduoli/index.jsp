<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>和八达</title>
    <base href=<%=basePath%>>
    <link href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" rel="shortcut icon"/>
    <link type="text/css" rel="stylesheet" href="css/Base.css"/>
    <link type="text/css" rel="stylesheet" href="css/Modify.css"/>
    <style>
        * {
            font-size: 12px;
        }

        #left {
            width: 325px;
            float: left;
        }

        #right {
            width: 790px;
            float: right;
        }

        .title {
            font-size: 17px;
            line-height: 27px;
            padding: 2px 20px;
            background: url(images/title.jpg) repeat-x;
            color: white;
            border-radius: 5px;
        }

        .button1 {
            font-size: 14px;
            padding: 4px 10px;
            background-color: #efe5ca;
            border: 1px solid #a2a2a2;
            border-radius: 5px;
            color: black;
        }

        .list {
            margin: 20px auto;
            border-bottom: 1px dotted #a2a2a2;
        }

        a.link {
            display: block;
            height: 30px;
            line-height: 30px;
            color: black;
        }

        a.link:hover {
            color: red;
        }

        a.link .span1 {
            float: left;
            line-height: inherit;
            max-width: 255px;
            max-height: 30px;
            overflow: hidden;
        }

        a.link .span2 {
            float: right;
            color: #292929;
            line-height: inherit;
            max-height: 30px;
            overflow: hidden;
        }

        .table1 {
            margin-top: 10px;
        }

        .table1 td {
            height: 30px;
            color: black;
        }

        .show {
            width: 9000px;
            position: absolute;
            top: 0;
        }

        .show a {
            display: inline-block;
            padding: 0 110px;
            float: left;
        }

        .show a div {
            color: black;
            font-size: 13px;
            text-align: center;
            width: 154px;
            height: 38px;
            line-height: 38px;
            overflow: hidden;
        }

        #lt:hover, #gt:hover {
            cursor: pointer;
        }

        .link1 a {
            display: block;
            height: 27px;
            line-height: 27px;
            color: black;
        }

        .link1 a:hover {
            color: red;
        }

        .link2 a {
            display: block;
            width: 74px;
            float: left;
            border: 1px solid #8f8f8f;
            border-radius: 5px;
            text-align: center;
            font-size: 14px;
            margin: 6px 0;
        }

        a.link:hover {
            color: red;
        }

        /* 新增 */
        .show a img {
            max-height: 440px;
        }

        .pic_left {
            left: 5%;
        }

        .pic_right {
            right: 5%;
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
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
    <script>
        $(function () {
            $(".span1,.table1 a,.link1 a").prepend("&bull;&nbsp;&nbsp;");
            var copy = $(".show").html();
            $(".show").append(copy);
            $(".link2>a:nth-child(3n+1)").css("margin-right", 11);
            $(".link2>a:nth-child(3n)").css("float", "right");
        });
    </script>
</head>
<body>
<div id="Base">
    <div id="head">
        <a class="alternate" style="left: 0;margin-left: 0;"><img src="images/company/advertise/pic2.jpg" class="ad"/></a>
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


        </script>
    </div>
    <div id="middle">
        <div id="left">
            <div class="list" style="padding-bottom:16px;margin-top:0;">
                <span class="title">厦门和八达</span>
                <p>
                    厦门和八达贸易有限公司（简称：厦和八达）是一家新崛起的全国连锁型服务机构，总部位于中国福建自由贸易试验区厦门片区（保税港区）。公司实力雄厚，经营业务涵盖了酒店服务、保险、服装、酒水、电子产品等众多行业领域。</p>
                <img src="images/index1.jpg" alt=""/>

                <div>
                    <p><span style="color:#a7190a;font-size:16px;">厦门和八达</span><br/>
                        加盟热线：400-990-4554<br/>
                        咨询地址：中国福建自由贸易试验区厦门片区（保税港区）海景东路18号<br/>
                    </p>
                </div>

            </div>
            <div class="list" style="padding-bottom:2px">
                <span class="title">新闻动态</span>
                <p>
                    <a target="_blank" class='link' href='${pageContext.request.contextPath}/jdl/drinks'><span
                            class='span1'>【习酒】贵州习酒荣获2016中国标准创新贡献奖！</span><span
                            class='span2'>2016-11-30</span></a>
                    <a target="_blank" class='link' href='${pageContext.request.contextPath}/jdl/tea'><span
                            class='span1'>【大红袍】武夷岩茶大红袍的制作工艺流程！</span><span class='span2'>2016-12-03</span></a>
                </p>
            </div>
            <div class="list" style="display: none;">
                <span class="title">保险知识</span>
                <table class="table1">
                    <tr>
                        <td width="33%"><a href="news.asp?classid=17&id=65">车辆损失险</a></td>
                        <td width="33%"><a href="news.asp?classid=17&id=66">交强险</a></td>
                        <td><a href="news.asp?classid=17&id=67">第三者责任险</a></td>
                    </tr>
                    <tr>
                        <td><a href="news.asp?classid=17&id=68">盗抢险</a></td>
                        <td><a href="news.asp?classid=17&id=69">玻璃单独破碎险</a></td>
                        <td><a href="news.asp?classid=17&id=70">自燃险</a></td>
                    </tr>
                </table>
            </div>

            <div>
                <img src="images/company/common/qrcode.jpg" width="325" height="325" alt="厦门和八达，习酒醉天下"/>
            </div>
        </div>
        <div id="right">
            <div style="background-color:#ede9de;height: 500px;">
                <div style="color:#a6180a;font-size:17px;text-align:center;line-height:250%;">习酒 ・ 醉天下</div>
                <table>
                    <tr>
                        <td id="lt" style="width:32px;padding:0 5px;padding-bottom:38px;"><img src="images/lt.png"
                                                                                               alt=""/></td>
                        <td style="overflow:hidden; height:440px; position:relative; vertical-align:top;">
                            <div class="show">
                                <a href='javascript:void(0);'><img src='images/company/product/zuidong.jpg' width=""/>
                                    <div>醉东</div>
                                </a>
                                <a href='javascript:void(0);'><img src='images/company/product/zuinan.jpg'/>
                                    <div>醉南</div>
                                </a>
                                <a href='javascript:void(0);'><img src='images/company/product/zuixi.jpg'/>
                                    <div>醉西</div>
                                </a>
                                <a href='javascript:void(0);'><img src='images/company/product/xo1.jpg'/>
                                    <div>XO</div>
                                </a>
                                <a href='javascript:void(0);'><img src='images/company/product/dahongpao.jpg'/>
                                    <div>大红袍</div>
                                </a>
                            </div>
                        </td>
                        <td id="gt" style="width:32px;padding:0 5px;padding-bottom:38px;"><img src="images/gt.png"
                                                                                               alt=""/></td>
                    </tr>
                </table>
                <script>
                    var speed = 4000;
                    function Marquee() {
                        if ($(".show").parent().scrollLeft() >= ($(".show>a:eq(0)").outerWidth() * $(".show>a").length / 2)) {
                            $(".show").parent().scrollLeft(0);
                        }
                        $(".show").parent().animate({
                            scrollLeft: $(".show").parent().scrollLeft() + $(".show>a:eq(0)").outerWidth()
                        }, 2000);

                    }
                    //launch
                    var sliding = setInterval(Marquee, speed);
                    $(".show").parent().parent().hover(function () {
                        //mouseOver:stop
                        clearInterval(sliding);
                    }, function () {
                        //mouseOut:launch
                        sliding = setInterval(Marquee, speed);
                    });
                    $("#lt>img").click(function () {
                        if ($(".show").parent().is(":animated")) {
                            $(".show").parent().stop(false, true).animate();
                        } else {
                            if ($(".show").parent().scrollLeft() == 0) {
                                $(".show").parent().scrollLeft($(".show>a:eq(0)").outerWidth() * ($(".show>a").length / 2));
                            }
                            $(".show").parent().animate({
                                scrollLeft: $(".show").parent().scrollLeft() - $(".show>a:eq(0)").outerWidth()
                            }, "fast");
                        }
                    });
                    $("#gt>img").click(function () {
                        if ($(".show").parent().is(":animated")) {
                            $(".show").parent().stop(false, true).animate();
                        } else {
                            if ($(".show").parent().scrollLeft() >= ($(".show>a:eq(0)").outerWidth() * $(".show>a").length / 2)) {
                                $(".show").parent().scrollLeft(0);
                            }
                            $(".show").parent().animate({
                                scrollLeft: $(".show").parent().scrollLeft() + $(".show>a:eq(0)").outerWidth()
                            }, "fast");
                        }
                    });
                </script>
            </div>
            <div style="float:left;width:250px;margin-left:60px;margin-top:40px;">
                <img src="images/index-culture.jpg" alt=""/>
                <img src="images/index-culture.png" style="margin-top:15px;" alt=""/>
                <p style="color:black;">
                    经营理念：诚信、创新<br/>
                    诚信是公司经营之本，厦和八达秉持诚信经营的原则，业务和产品上恪守诚信原则，
                    给客户和加盟商营造良好的氛围。在做到产品持续创新的同时，还将做好服务创新，
                    同时提升公司的硬实力和软实力，让公司成为业界的佼佼者。<br/>
                    企业精神：团队 责任 理想 信念

                </p>
            </div>
            <div style="float:left;width:250px;margin-top:40px;margin-left: 150px;">
                <img src="images/index-partner.jpg" alt=""/>
                <img src="images/index-partner.png" style="margin-top:15px;" alt=""/>
                <p class="link1">
                    <a href="http://www.gzxijiu.cn/" target="_blank">贵州茅台酒厂(集团)习酒有限责任公司</a>
                    <a href="javascript:void(0);">法国波尔多·欧豪酒业</a>
                    <a href="javascript:void(0);">福建南平中道百丈茶业有限公司</a>
                </p>
            </div>
            <%--<div style="float:left;width:250px;margin-top:40px;">
                <img src="images/index-partner2.png" style="margin-top:15px;" alt="" />
                <p class="link1">
                    <a href="#" target="_blank">江苏苏博律师事务所</a>
                </p>
            </div>--%>
            <%--<div style="float:right;width:250px;margin-top:40px;">
                <img src="images/index-map.jpg" alt="" />
                <img src="images/index-partner2.png" style="margin-top:15px;margin-bottom:10px;" alt="" />
                <p class="link1">
                    <a href="#" target="_blank">江苏苏博律师事务所</a>
                </p>
                <div class="link2">
                    <a href='net.asp?classid=14&id=432'>扬州</a><a href='net.asp?classid=14&id=433'>无锡</a><a href='net.asp?classid=14&id=434'>江阴</a><a href='net.asp?classid=14&id=435'>太仓</a><a href='net.asp?classid=14&id=436'>南京建邺</a><a href='net.asp?classid=14&id=437'>昆山</a><a href='net.asp?classid=14&id=438'>苏州常熟</a><a href='net.asp?classid=14&id=444'>常州金坛</a><a href='net.asp?classid=14&id=445'>南京六合</a><a href='net.asp?classid=14&id=447'>徐州邳州</a><a href='net.asp?classid=14&id=448'>徐州泉山</a><a href='net.asp?classid=14&id=449'>镇江润州</a><a href='net.asp?classid=14&id=460'>盐城亭湖</a><a href='net.asp?classid=14&id=461'>宿迁宿城区</a><a href='net.asp?classid=14&id=463'>宿迁泗阳</a><a href='net.asp?classid=14&id=465'>镇江丹阳</a><a href='net.asp?classid=14&id=466'>徐州云龙区</a><a href='net.asp?classid=14&id=467'>镇江丹徒</a><a href='net.asp?classid=14&id=468'>浙江温州</a><a href='net.asp?classid=14&id=469'>淮安清河店</a><a href='net.asp?classid=14&id=470'>宿迁沭阳</a><a href='net.asp?classid=14' style='background-color:#a19e96;'>>> More</a><div class='clear'></div>
                </div>
            </div>--%>
            <div class="clear"></div>
            <%--<div style="margin-top:20px;padding-top:20px;border-top:1px dotted #a2a2a2;">
                <a href="about.asp?classid=9&id=426"><img src="images/join2.jpg" style="padding-bottom:15px; margin-bottom:15px;" /></a>
            </div>--%>
        </div>
    </div>
    <div class="clear"></div>
    <div id="bottom">
        <table id="ch-bottom">
            <tr>
                <td style="width: 20%;"></td>
                <td style="width: 20%;text-align: right"><img src="images/company/common/logo.png" alt="厦门和八达,习酒醉天下"/>
                </td>
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
<script type="text/javascript">
    $(function () {
        $(".alternate").css("width", $(document).width());
    })
</script>
</body>
</html>
