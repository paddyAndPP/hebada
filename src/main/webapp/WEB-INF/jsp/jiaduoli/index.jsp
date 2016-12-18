<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>和八达</title>
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
        <a class="alternate" href="activity.asp"><img src="images/bg1.jpg" /></a>
        <a class="alternate" href="activity.asp"><img src="images/bg2.jpg" /></a>
        <div id="dot"></div>
        <div style="position:absolute; width:100%; z-index:1;">
            <div style="position:absolute; height:139px; width:100%; left:50%; margin-left:-960px;">
                <img src="images/logoBg.jpg" />
                <img src="images/menuBg.jpg" />
            </div>
            <div id="fa-menu">
                <img src="images/logo.png" style="position:absolute; top:19px;" />
                <img src="images/phone.png" style="position:absolute; top:31px; right:0;" />
                <ul id="menu">
                    <li>
                        <a href="index.asp" style="padding-left:0;"><img src="images/menu1.jpg" />&nbsp;&nbsp;<span>首页</span></a>
                    </li>
                    <li>
                        <a href="activity.asp"><img src="images/menu2.jpg" />&nbsp;&nbsp;<span>最新活动</span></a>
                        <div></div>
                    </li>
                    <li>
                        <a href="about.asp?classid=9"><img src="images/menu3.jpg" />&nbsp;&nbsp;<span>关于我们</span></a>
                        <div>
                            <a href='about.asp?classid=9&id=423'>公司介绍</a><a href='about.asp?classid=9&id=424'>资质荣誉</a><a href='about.asp?classid=9&id=425'>战略合作</a><a href='about.asp?classid=9&id=426'>加盟政策</a><a href='about.asp?classid=9&id=427'>联系方式</a>
                        </div>
                    </li>
                    <li>
                        <a href="news.asp"><img src="images/menu4.jpg" />&nbsp;&nbsp;<span>动态信息</span></a>
                        <div>
                            <a href='news.asp?classid=16'>公司新闻</a><a href='news.asp?classid=17'>保险知识</a>
                        </div>
                    </li>
                    <li>
                        <a href="store.asp"><img src="images/menu5.jpg" />&nbsp;&nbsp;<span>网络商城</span></a>
                        <div>
                            <a href='store.asp?classid=11'>泸州老窖</a><a href='store.asp?classid=18'>贝秀堡红酒</a><a href='store.asp?classid=19'>五粮液</a><a href='store.asp?classid=20'>茅台</a><a href='store.asp?classid=21'>驾图盒子</a><a href='store.asp?classid=22'>荣事达</a><a href='store.asp?classid=23'>飞科</a><a href='store.asp?classid=24'>堂皇家纺</a>
                        </div>
                    </li>
                    <li>
                        <a href="net.asp"><img src="images/menu6.jpg" />&nbsp;&nbsp;<span>服务网点</span></a>
                        <div></div>
                    </li>
                    <li>
                        <a href="download.asp" style="padding-right:0;"><img src="images/menu7.jpg" />&nbsp;&nbsp;<span>资料下载</span></a>
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
                <span class="title">关于嘉多利</span>
                <p>公司创立于2014年5月，作为酒水行业领先的推广与资源整合平台，同年在全国孵化，并提出“买酒送车险”的创新服务模式，开创酒水推广的先河，成功策划推广“购买车险不花钱，嘉多利商贸来买单”的营销模式。企业致力于打造“中国酒文化传播第一平台”......</p>
                <img src="images/index1.jpg" alt="" />

                <div>
                    <p><span style="color:#a7190a;font-size:16px;">嘉多利中国（总公司）</span><br />
                        加盟热线：18100625066 / 025-86293833<br />
                        咨询地址：江苏南京鼓楼区东宝路8号时代天地广场3栋8楼<br />
                    </p>
                </div>

            </div>
            <div class="list" style="padding-bottom:2px">
                <span class="title">新闻动态</span>
                <p>
                    <a class='link' href='news.asp?classid=16&id=96'><span class='span1'>【嘉多利-新品上市】这个冬天给你温暖！</span><span class='span2'>2016-11-17</span></a><a class='link' href='news.asp?classid=16&id=95'><span class='span1'>【嘉多利-新品上市】爱他就送他飞科剃须刀</span><span class='span2'>2016-10-27</span></a><a class='link' href='news.asp?classid=16&id=94'><span class='span1'>【嘉多利-新品上市】荣事达品质小家电强势入驻</span><span class='span2'>2016-10-27</span></a><a class='link' href='news.asp?classid=16&id=93'><span class='span1'>【嘉多利-新品上市】驾图--智能驾驶 悦享生活</span><span class='span2'>2016-8-31</span></a>
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
                                <a href='store.asp?classid=11&id=428'><img src='images/upfile/11-1.jpg' /><div>珍品青花瓷</div></a><a href='store.asp?classid=11&id=429'><img src='images/upfile/11-2.jpg' /><div>老窖醇香精品9</div></a><a href='store.asp?classid=11&id=431'><img src='images/upfile/11-4.jpg' /><div>泸州老窖醇香【佳酿】</div></a><a href='store.asp?classid=11&id=443'><img src='Images/UpFile/2015628135410741.jpg' /><div>泸州老窖醇香柔和</div></a><a href='store.asp?classid=11&id=456'><img src='Images/UpFile/201571511857775.jpg' /><div>泸州老窖醇香【K3】</div></a><a href='store.asp?classid=11&id=458'><img src='Images/UpFile/201571511659506.jpg' /><div>老窖醇香【醇酿珍品】</div></a><a href='store.asp?classid=11&id=488'><img src='Images/UpFile/2015928145954326.jpg' /><div>泸州老窖醇香【味之尊】</div></a><a href='store.asp?classid=11&id=489'><img src='Images/UpFile/2015928151346978.jpg' /><div>泸州老窖醇香【典藏】</div></a><a href='store.asp?classid=11&id=490'><img src='Images/UpFile/2015928151251518.jpg' /><div>泸州老窖醇香【鉴藏】</div></a><a href='store.asp?classid=11&id=509'><img src='Images/UpFile/2015102794616820.jpg' /><div>泸州老窖醇香【品鉴】 688元</div></a><a href='store.asp?classid=11&id=510'><img src='Images/UpFile/2015102794842223.jpg' /><div>老窖醇香【尊仕典藏】1288</div></a><a href='store.asp?classid=11&id=511'><img src='Images/UpFile/20151027111448621.jpg' /><div>泸州老窖【酿艺2014版52度】</div></a><a href='store.asp?classid=11&id=512'><img src='Images/UpFile/20151027111733241.jpg' /><div>泸州老窖【酿艺2009版】</div></a><a href='store.asp?classid=11&id=513'><img src='Images/UpFile/2015102711311492.jpg' /><div>泸州老窖【酿艺2011版】</div></a><a href='store.asp?classid=11&id=514'><img src='Images/UpFile/20151027114139658.jpg' /><div>泸州老窖醇香【浓之雅】</div></a><a href='store.asp?classid=11&id=515'><img src='Images/UpFile/20151027114420880.jpg' /><div>泸州老窖醇香【艺之道】</div></a><a href='store.asp?classid=11&id=522'><img src='Images/UpFile/2015115155817665.jpg' /><div>泸州老窖【酿艺2012版】</div></a><a href='store.asp?classid=11&id=523'><img src='Images/UpFile/201511516126505.jpg' /><div>泸州老窖【酿艺2013版】</div></a><a href='store.asp?classid=11&id=524'><img src='Images/UpFile/201511995246641.jpg' /><div>泸州老窖【酿艺14版42度】</div></a><a href='store.asp?classid=11&id=542'><img src='Images/UpFile/20161815630699.jpg' /><div>泸州老窖【酿艺2010年版 】</div></a><a href='store.asp?classid=18&id=450'><img src='Images/UpFile/201571125225174.jpg' /><div>蓝秀458干红葡萄酒</div></a><a href='store.asp?classid=18&id=451'><img src='Images/UpFile/201571125241210.jpg' /><div>黄秀268干红葡萄酒</div></a><a href='store.asp?classid=18&id=452'><img src='Images/UpFile/201571125255492.jpg' /><div>褐秀388干红葡萄酒</div></a><a href='store.asp?classid=18&id=454'><img src='Images/UpFile/201571125311864.jpg' /><div>庞卓顿干红葡萄酒</div></a><a href='store.asp?classid=19&id=558'><img src='Images/UpFile/201646144328623.jpg' /><div>五粮液</div></a><a href='store.asp?classid=20&id=569'><img src='Images/UpFile/201641592145806.jpg' /><div>珍品老酱酱香型</div></a><a href='store.asp?classid=20&id=570'><img src='Images/UpFile/201641592524826.jpg' /><div>普天同庆红牡丹15陈酿</div></a><a href='store.asp?classid=20&id=571'><img src='Images/UpFile/201641592710944.jpg' /><div>珍藏老酱1949珍藏版</div></a><a href='store.asp?classid=20&id=572'><img src='Images/UpFile/20164159296433.jpg' /><div>普天同庆荣华富贵V30佳酿</div></a><a href='store.asp?classid=20&id=573'><img src='Images/UpFile/201641593022715.jpg' /><div>普天同庆V12陈酿</div></a><a href='store.asp?classid=20&id=574'><img src='Images/UpFile/201641593138662.jpg' /><div>普天同庆V18富贵牡丹</div></a><a href='store.asp?classid=20&id=577'><img src='Images/UpFile/201651995348483.jpg' /><div>普天同庆酱香型</div></a><a href='store.asp?classid=21&id=582'><img src='Images/UpFile/20161027133939404.jpg' /><div>驾图盒子</div></a><a href='store.asp?classid=22&id=586'><img src='Images/UpFile/20161027114114559.jpg' /><div>一体锅</div></a><a href='store.asp?classid=22&id=587'><img src='Images/UpFile/20161027134127964.jpg' /><div>榨汁机</div></a><a href='store.asp?classid=22&id=588'><img src='Images/UpFile/20161027134712177.jpg' /><div>微电脑多功能智能电饭煲</div></a><a href='store.asp?classid=22&id=589'><img src='Images/UpFile/20161027134544904.jpg' /><div>迪士尼烤箱</div></a><a href='store.asp?classid=22&id=590'><img src='Images/UpFile/20161027134326846.jpg' /><div>电压力锅</div></a><a href='store.asp?classid=22&id=591'><img src='Images/UpFile/20161027142653308.jpg' /><div>保洁柜</div></a><a href='store.asp?classid=22&id=592'><img src='Images/UpFile/2016102713450551.jpg' /><div>双胆电压力锅</div></a><a href='store.asp?classid=22&id=593'><img src='Images/UpFile/20161027134414138.jpg' /><div>煎盘</div></a><a href='store.asp?classid=22&id=594'><img src='Images/UpFile/20161027135214434.jpg' /><div>炒锅</div></a><a href='store.asp?classid=22&id=595'><img src='Images/UpFile/20161027134233777.jpg' /><div>智能电饭煲</div></a><a href='store.asp?classid=23&id=597'><img src='Images/UpFile/20161027143317958.jpg' /><div>双环极速剃须刀</div></a><a href='store.asp?classid=23&id=598'><img src='Images/UpFile/20161027134955969.jpg' /><div>全身水洗剃须刀</div></a><a href='store.asp?classid=23&id=599'><img src='Images/UpFile/20161027144122887.jpg' /><div>吹风机</div></a><a href='store.asp?classid=24&id=601'><img src='Images/UpFile/2016121215359120.jpg' /><div>舒爽沁肤被</div></a><a href='store.asp?classid=24&id=602'><img src='Images/UpFile/2016127114818910.jpg' /><div>卡奇诺全棉四件套</div></a><a href='store.asp?classid=24&id=603'><img src='Images/UpFile/2016127114511192.jpg' /><div>香语寻梦磨毛四件套</div></a><a href='store.asp?classid=24&id=604'><img src='Images/UpFile/2016127114913326.jpg' /><div>五星回弹曲线枕</div></a><a href='store.asp?classid=24&id=607'><img src='Images/UpFile/2016127135853714.jpg' /><div>皇家风范全棉四件套</div></a>
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
            <a href="about.asp?classid=9&id=426"><img src="images/join2.jpg" style="padding-bottom:15px; margin-bottom:15px;  alt="" /></a>
            </div>
        </div>

    </div>
    <div class="clear"></div>
</div>
<div id="bottom">
    <table id="ch-bottom">
        <tr>
            <td style="width:150px; border-right:1px solid #ceccc9;"><img src="images/logo1.png" alt="" /></td>
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
</body>
</html>
