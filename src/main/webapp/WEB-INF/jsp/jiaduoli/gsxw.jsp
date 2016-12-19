<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<title>公司新闻</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/Base.css" />
<link type="text/css" rel="stylesheet" href="css/Modify.css" />
<!--[if lt IE 9]>
    <script src="js/jquery-1.9.1.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
    <script src="js/jquery-2.1.1.js"></script>
<!--<![endif]-->

<style>
	.left{width:210px; float:left;}
	.right{width:830px; padding:40px; padding-bottom:20px; background-color:white; float:right;}
	.newsList{padding:17px; border-bottom:1px dotted #cccccc; height:126px; overflow:hidden; position:relative;}
	.newsList img{float:left; margin-right:30px;}
	.newsList .smallimage {width:188px;height:126px;}
	.newsList p{font-size:16px; color:#2e91e3; margin:5px auto;}
	.newsList div{float:left; width:520px; height:88px; overflow:hidden;}
	.newsList a{background:#971306; color:white; position:absolute; right:17px; bottom:17px; padding:0 10px;}
	
	.newsTitle{border-bottom:1px dotted #cccccc; color:#2e91e3; font-size:18px;}
	
	.security{font-size:17px;}
</style>
<script>
	$(function(){
		$(".net:nth-child(4n-1)").css({"margin-right":0});
		$(".net:nth-child(4n)").css({"margin-right":0,"float":"right"});
	});
</script>
</head>
<body>
	<div id="Base">
    	<div id="head1">
			<img class="alternate" src="images/news.jpg" />
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
			<div class="left">
				<div class="leftMenu">
					<div class="leftMenuTitle"><img src="images/dot1.png" />&nbsp;&nbsp;News 新闻动态</div>
					<div class="leftMenuContent">
						<a href='news.asp?classid=16'>公司新闻<img src='images/arrow1.png' /></a><a href='news.asp?classid=17'>保险知识<img src='images/arrow1.png' /></a>
					</div>
				</div>
			</div>
			<div class="right">
				<div class='newsList'><img class='smallimage' src='/images/UpFile/image/20161117/20161117133091789178.jpg' /><p>【嘉多利-新品上市】这个冬天给你温暖！</p><div>
	天气渐冷~嘉多利给您送温暖啦~堂皇家纺盛大入驻嘉多利免费赠送平台！送家人送朋友~大家一起暖洋洋~ 


	 


	“堂皇家纺”，品牌创立于1986年，专业从事家纺行业20余年，先后荣获“中国名牌产品”、“国家质量免检产品”、“中国驰名商标”、“质量效益先进企业”等称号，连续6年被评为“江苏省著名商标</div><a href='news.asp?classid=16&id=96'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20161027/20161027141414631463.jpg' /><p>【嘉多利-新品上市】爱他就送他飞科剃须刀</p><div>
	中国剃须刀第一品牌 ---飞科盛大入驻嘉多利新品免费赠送平台、快来给你的那个他送上暖心礼物吧~ 双头浮动自带充电头，全身水洗自动充电，三档柔顺吹风机等你来挑！


	 


	


	 


	


	 
</div><a href='news.asp?classid=16&id=95'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20161027/20161027140988148814.png' /><p>【嘉多利-新品上市】荣事达品质小家电强势入驻</p><div>
	国民小家电荣事达强势登陆嘉多利新品免费赠送平台啦~品质有保障选择更多样，微电脑智能电饭煲、迪斯尼烤箱、烫涮一体锅、大口径榨汁机、双胆压力锅...嘉多利，竭力满足您的需求！

 

	


	


	 


	

 

	
</div><a href='news.asp?classid=16&id=94'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160831/20160831101229822982.jpg' /><p>【嘉多利-新品上市】驾图--智能驾驶 悦享生活</p><div>
	


	


	


	 


	嘉多利又一重磅上新---驾图盒子，将汽车装进您的手机！详情请关注嘉多利公众号jdl1919或拨打02586297866咨询。 

 

	 


	 
</div><a href='news.asp?classid=16&id=93'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160722/20160722104862226222.jpg' /><p>【嘉多利-新品上市】礼盒茶叶隆重上市</p><div>
	  


	 国不可一日无君，君不可一日无茶 


	  嘉多利给广大爱茶人士带来福音啦，现隆重推出礼盒装茶叶 


	  口感纯正 包装精美 品质保证  

 

	


	
</div><a href='news.asp?classid=16&id=92'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160621/20160621135661406140.jpg' /><p>【嘉多利-新品上市】一卡在手 意外无忧</p><div>
	嘉多利携手中国太平洋人寿联合推出 


	你买98元美酒 我送10万意外保障！ 


	 

 

	 


	嘉多利全国各大门店有售

 

	或登陆嘉多利官方商城进行选购 


	详情咨询请致电86297866 


	
</div><a href='news.asp?classid=16&id=91'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160523/20160523093582198219.jpg' /><p>【嘉多利-新品上市】茅台普天同庆隆重上市</p><div>
	 


	 


	品名：茅台普天同庆酱香型53° 


	市场价：680元/瓶 


	规格:500ml*6/箱 


	嘉多利全国各加盟店均已开始火爆赠送，详情请到店咨询领取 


	普天同庆的质检报告 

 

	
</div><a href='news.asp?classid=16&id=90'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160511/201605111050007373.JPG' /><p>【嘉多利-新品上市】开启盛夏新喝法</p><div> 

	 

 

	品名：麒麟古堡干白葡萄酒 


	市场价：238元/瓶 


	规格:750ml*6/箱 


	嘉多利全国各加盟店均已开始火爆赠送，详情请到店咨询领取 


	 

 

	品名：贝秀经典干红葡萄酒 


	市场价：178元/瓶 


	规</div><a href='news.asp?classid=16&id=89'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160503/20160503091763896389.jpg' /><p>【嘉多利-新品上市】老窖醇香醉喜庆隆重上市</p><div>
	 


	


	品名：老窖醇香醉喜庆42° 


	市场价：98/瓶 


	规格:500ml*12/箱 


	嘉多利全国各加盟店均已开始火爆赠送，详情请到店咨询领取 


	醉喜庆的质检报告 


	 


	 


	 


	
</div><a href='news.asp?classid=16&id=88'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160407/20160407163277707770.png' /><p>【嘉多利-新品上市】五粮液礼宾级佳品隆重上市</p><div>
	 

 

	品名：五粮液礼宾级佳品52° 


	市场价：618/瓶 


	规格:500ml*6/箱 


	嘉多利全国各加盟店均已火爆开售，详情请到店咨询 
</div><a href='news.asp?classid=16&id=87'>More</a></div><div class="mCenter"  style='text-align:center'><br>共有：<strong>26</strong>条&nbsp;每页显示：<strong>10</strong>条&nbsp;&nbsp;&nbsp;[首页]&nbsp;[上一页]&nbsp;<a class='c' href="?ClassID = 16&Page=2">[下一页]</a>&nbsp;<a class='c' href="?ClassID = 16&Page=3">[尾页]</a>&nbsp;&nbsp;&nbsp;页次：<strong>1</strong>/3&nbsp;转到:<select name="Page" onchange="javascript:window.location='?ClassID = 16&Page='+this.options[this.selectedIndex].value+'';"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option></select>&nbsp;&nbsp;<br><br></div>
				<script type="text/javascript">
					$(".newsList").hover(function(){
						$("a",this).css({"color":"yellow","right":"0px"});
						$("p",this).css("color","#971306");
					},function(){
						$("a",this).css({"color":"white","right":"17px"});
						$("p",this).css("color","#2e91e3");
					});
				</script>
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

	</div>
</body>
<script src="js/function.js"></script>
</html>
