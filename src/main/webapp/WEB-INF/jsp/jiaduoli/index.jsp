<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>和八达</title>
    <base href= <%=basePath%> >
    <link type="text/css" rel="stylesheet" href="css/Base.css" />
    <link type="text/css" rel="stylesheet" href="css/Modify.css" />
    <style>
        *{font-size:12px;}
        #left{width:325px; float:left;}
        #right{width:790px; float:right;}
        .title{font-size:17px; line-height:27px; padding:2px 20px; background:url(images/title.jpg) repeat-x; color:white; border-radius:5px;}
        .button1{font-size:14px; padding:4px 10px; background-color:#efe5ca; border:1px solid #a2a2a2; border-radius:5px; color:black;}
        .list{margin:20px auto; border-bottom:1px dotted #a2a2a2;}
        a.link{display:block; height:30px; line-height:30px; color:black;}
        a.link:hover{color:red;}
        a.link .span1{float:left; line-height:inherit; max-width:255px; max-height:30px; overflow:hidden;}
        a.link .span2{float:right; color:#292929; line-height:inherit; max-height:30px; overflow:hidden;}
        .table1{margin-top:10px;}
        .table1 td{height:30px; color:black;}
        .show{width:9000px; position:absolute; top:0;}
        .show a{display:inline-block; padding:0 11px; float:left;}
        .show a div{color:black; font-size:13px; text-align:center; width:154px; height:38px; line-height:38px; overflow:hidden;}
        #lt:hover, #gt:hover{cursor:pointer;}
        .link1 a{display:block; height:27px; line-height:27px; color:black;}
        .link1 a:hover{color:red;}
        .link2 a{display:block; width:74px; float:left; border:1px solid #8f8f8f; border-radius:5px; text-align:center; font-size:14px; margin:6px 0;}
        a.link:hover{color:red;}
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
    <script>
        $(function(){
            $(".span1,.table1 a,.link1 a").prepend("&bull;&nbsp;&nbsp;");
            var copy = $(".show").html();
            $(".show").append(copy);
            $(".link2>a:nth-child(3n+1)").css("margin-right",11);
            $(".link2>a:nth-child(3n)").css("float","right");
        });
    </script>
</head>
<body>
<div id="Base">
    <div id="head">
        <a class="alternate" href="activity.asp"><img src="images/company/advertise/pic1.jpg" class="ad"/></a>
        <a class="alternate" href="activity.asp"><img src="images/company/advertise/pic2.jpg" class="ad"/></a>
        <div id="dot"></div>
        <div style="position:absolute; width:100%; z-index:1;">
            <div style="position:absolute; height:139px; width:100%; left:50%; margin-left:-960px;">
                <img src="images/logoBg.jpg" />
                <img src="images/menuBg.jpg"/>
            </div>
            <div id="fa-menu">
                <img src="images/company/common/logo.png" style="position:absolute; top:19px;" />
                <img src="images/company/common/phone.png" style="position:absolute; top:31px; right:0;" />
                <ul id="menu">
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/index" style="padding-left:0;"><img src="images/menu1.jpg" />&nbsp;&nbsp;<span>首页</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/zxdt"><img src="images/menu2.jpg" />&nbsp;&nbsp;<span>最新活动</span></a>
                        <div></div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/gywm"><img src="images/menu3.jpg" />&nbsp;&nbsp;<span>关于我们</span></a>
                        <div>
                            <a href='${pageContext.request.contextPath}/jdl/gsjs'>公司介绍</a>
                            <a href='${pageContext.request.contextPath}/jdl/ryzz'>资质荣誉</a>
                            <a href='${pageContext.request.contextPath}/jdl/zlhz'>战略合作</a>
                            <a href='${pageContext.request.contextPath}/jdl/jmzc'>加盟政策</a>
                            <a href='${pageContext.request.contextPath}/jdl/lxfs'>联系方式</a>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/dtxx"><img src="images/menu4.jpg" />&nbsp;&nbsp;<span>动态信息</span></a>
                        <div>
                            <a href='${pageContext.request.contextPath}/jdl/gsxw'>公司新闻</a>
                            <a href='${pageContext.request.contextPath}/jdl/bxzs'>保险知识</a>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/wlsc"><img src="images/menu5.jpg" />&nbsp;&nbsp;<span>网络商城</span></a>
                        <div>
                            <a href='${pageContext.request.contextPath}/jdl/lzlj'>泸州老窖</a>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/fwwd"><img src="images/menu6.jpg" />&nbsp;&nbsp;<span>服务网点</span></a>
                        <div></div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jdl/zlxz" style="padding-right:0;"><img src="images/menu7.jpg" />&nbsp;&nbsp;<span>资料下载</span></a>
                        <div></div>
                    </li>
                </ul>
            </div>
        </div>
        <script>
            $("#menu>li").hover(
                    function(){
                        $(">div",this).show("fast");
                        $(">a>span",this).css("color","yellow");
                    },
                    function(){
                        $(">div",this).hide("fast");
                        $(">a>span",this).css("color","white");
                    }
            );


        </script>
    </div>
    <div id="middle">
        <div id="left">
            <div class="list" style="padding-bottom:16px;margin-top:0;">
                <span class="title">厦门和八达</span>
                <p>厦门和八达贸易有限公司（简称：厦和八达）是一家新崛起的全国连锁型服务机构，总部位于中国福建自由贸易试验区厦门片区（保税港区）。公司实力雄厚，经营业务涵盖了酒店服务、保险、服装、酒水、电子产品等众多行业领域，总资产达十五亿元。</p>
                <img src="images/index1.jpg" alt="" />

                <div>
                    <p><span style="color:#a7190a;font-size:16px;">厦门和八达</span><br />
                        加盟热线：18100625066 / 025-86293833<br />
                        咨询地址：中国福建自由贸易试验区厦门片区（保税港区）<br />
                    </p>
                </div>

            </div>
            <div class="list" style="padding-bottom:2px">
                <span class="title">新闻动态</span>
                <p>
                    <a class='link' href='news.asp?classid=16&id=96'><span class='span1'>【新品上市】这个冬天给你温暖！</span><span class='span2'>2016-11-17</span></a><a class='link' href='news.asp?classid=16&id=95'><span class='span1'>【嘉多利-新品上市】爱他就送他飞科剃须刀</span><span class='span2'>2016-10-27</span></a><a class='link' href='news.asp?classid=16&id=94'><span class='span1'>【嘉多利-新品上市】荣事达品质小家电强势入驻</span><span class='span2'>2016-10-27</span></a><a class='link' href='news.asp?classid=16&id=93'><span class='span1'>【嘉多利-新品上市】驾图--智能驾驶 悦享生活</span><span class='span2'>2016-8-31</span></a>
                </p>
            </div>
            <div class="list">
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
                <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="323" height="194" VIEWASTEXT>
                    <param name="movie" value="vcastr22.swf">
                    <param name="quality" value="high">
                    <param name="allowFullScreen" value="true" />
                    <param name="FlashVars" value="vcastr_file=lz2015.flv&IsAutoPlay=1" />
                    <embed src="vcastr22.swf" allowFullScreen="true" FlashVars="vcastr_file=lz2015.flv&IsAutoPlay=1" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="323" height="194"></embed>
                </object>
            </div>
            <div style="padding-top:20px">
                <img src="images/code.jpg">
            </div>
        </div>
        <div id="right">
            <div style="background-color:#ede9de">
                <div style="color:#a6180a;font-size:17px;text-align:center;line-height:250%;">老窖醇香 ・ 系列酒品</div>
                <table>
                    <tr>
                        <td id="lt" style="width:32px;padding:0 5px;padding-bottom:38px;"><img src="images/lt.png" alt="" /></td>
                        <td style="overflow:hidden; height:241px; position:relative; vertical-align:top;">
                            <div class="show">
                                <a href='store.asp?classid=11&id=428'><img src='images/upfile/11-1.jpg' /><div>珍品青花瓷</div></a>
                            </div>
                        </td>
                        <td id="gt" style="width:32px;padding:0 5px;padding-bottom:38px;"><img src="images/gt.png" alt="" /></td>
                    </tr>
                </table>
                <script>
                    var speed=4000;
                    function Marquee(){
                        if($(".show").parent().scrollLeft() >= ($(".show>a:eq(0)").outerWidth() * $(".show>a").length / 2)){
                            $(".show").parent().scrollLeft(0);
                        }
                        $(".show").parent().animate({
                            scrollLeft:$(".show").parent().scrollLeft() + $(".show>a:eq(0)").outerWidth()
                        },2000);

                    }
                    //launch
                    var sliding = setInterval(Marquee,speed);
                    $(".show").parent().parent().hover(function(){
                        //mouseOver:stop
                        clearInterval(sliding);
                    },function(){
                        //mouseOut:launch
                        sliding = setInterval(Marquee,speed);
                    });
                    $("#lt>img").click(function(){
                        if($(".show").parent().is(":animated")){
                            $(".show").parent().stop(false,true).animate();
                        }else{
                            if($(".show").parent().scrollLeft() == 0){
                                $(".show").parent().scrollLeft($(".show>a:eq(0)").outerWidth() * ($(".show>a").length / 2));
                            }
                            $(".show").parent().animate({
                                scrollLeft:$(".show").parent().scrollLeft() - $(".show>a:eq(0)").outerWidth()
                            },"fast");
                        }
                    });
                    $("#gt>img").click(function(){
                        if($(".show").parent().is(":animated")){
                            $(".show").parent().stop(false,true).animate();
                        }else{
                            if($(".show").parent().scrollLeft()  >= ($(".show>a:eq(0)").outerWidth() * $(".show>a").length / 2)){
                                $(".show").parent().scrollLeft(0);
                            }
                            $(".show").parent().animate({
                                scrollLeft:$(".show").parent().scrollLeft() + $(".show>a:eq(0)").outerWidth()
                            },"fast");
                        }
                    });
                </script>
            </div>
            <div style="float:left;width:250px;margin-right:20px;margin-top:40px;">
                <img src="images/index-culture.jpg" alt="" />
                <img src="images/index-culture.png" style="margin-top:15px;" alt="" />
                <p style="color:black;">人的价值高于物的价值。嘉多利是把人的价值放在首位，物是第二位的。共同价值高于个人价值。共同的协作高于独立单干，集体高于个人。嘉多利倡导团体精神、团队文化，本意就是倡导一种共同价值高于个人价值的企业价值观，共同价值是个体价值的得以实现的保证。社会价值高于利润价值、用户价值高于生产价值。嘉多利总是把顾客满意原则作为企业价值观不可或缺的内容。</p>
            </div>
            <div style="float:left;width:250px;margin-top:40px;">
                <img src="images/index-partner.jpg" alt="" />
                <img src="images/index-partner.png" style="margin-top:15px;" alt="" />
                <p class="link1">
                    <a href="http://www.lzlj.com/" target="_blank">老窖醇香有限责任公司</a>
                    <a href="#" target="_blank">法国贝秀堡酒庄</a>					</p>
                <img src="images/index-partner2.png" style="margin-top:15px;" alt="" />
                <p class="link1">
                    <a href="#" target="_blank">江苏苏博律师事务所</a>
                </p>
            </div>
            <div style="float:right;width:250px;margin-top:40px;">
                <img src="images/index-map.jpg" alt="" />
                <img src="images/index-map.png" style="margin-top:15px;margin-bottom:10px;" alt="" />
                <div class="link2">
                    <a href='net.asp?classid=14&id=432'>扬州</a><a href='net.asp?classid=14&id=433'>无锡</a><a href='net.asp?classid=14&id=434'>江阴</a><a href='net.asp?classid=14&id=435'>太仓</a><a href='net.asp?classid=14&id=436'>南京建邺</a><a href='net.asp?classid=14&id=437'>昆山</a><a href='net.asp?classid=14&id=438'>苏州常熟</a><a href='net.asp?classid=14&id=444'>常州金坛</a><a href='net.asp?classid=14&id=445'>南京六合</a><a href='net.asp?classid=14&id=447'>徐州邳州</a><a href='net.asp?classid=14&id=448'>徐州泉山</a><a href='net.asp?classid=14&id=449'>镇江润州</a><a href='net.asp?classid=14&id=460'>盐城亭湖</a><a href='net.asp?classid=14&id=461'>宿迁宿城区</a><a href='net.asp?classid=14&id=463'>宿迁泗阳</a><a href='net.asp?classid=14&id=465'>镇江丹阳</a><a href='net.asp?classid=14&id=466'>徐州云龙区</a><a href='net.asp?classid=14&id=467'>镇江丹徒</a><a href='net.asp?classid=14&id=468'>浙江温州</a><a href='net.asp?classid=14&id=469'>淮安清河店</a><a href='net.asp?classid=14&id=470'>宿迁沭阳</a><a href='net.asp?classid=14' style='background-color:#a19e96;'>>> More</a><div class='clear'></div>
                </div>
            </div>
            <div class="clear"></div>
            <div style="margin-top:20px;padding-top:20px;border-top:1px dotted #a2a2a2;">
                <a href="about.asp?classid=9&id=426"><img src="images/join2.jpg" style="padding-bottom:15px; margin-bottom:15px;" /></a>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div id="bottom">
        <table id="ch-bottom">
            <tr>
                <td style="width:150px; border-right:1px solid #ceccc9;"><img src="images/company/common/logo.png" alt="" /></td>
                <td style="padding-left:20px;">版权所有&copy;江苏嘉多利商贸有限公司<br />

                    地址：江苏省南京市鼓楼区东宝路8号3幢802<br />
                    热线：400-816-5519 / 18100625066 / 025-86293833<br />
                    手机：17701592688
                </td>
                <td style="text-align:right;">
                    Copyright 2014-2015 jiaduoli198.com<br />
                    All Rights Reserved.
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
