<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/Base.css" />
<link type="text/css" rel="stylesheet" href="css/Modify.css" />
<!--[if lt IE 9]>
    <script src="js/jquery-1.9.1.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
    <script src="js/jquery-2.1.1.js"></script>
<!--<![endif]-->
<title>保险知识</title>
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
				<div class='newsList'><img class='smallimage' src='images/upfile/sec6s.jpg' /><p>自燃险</p><div>
				自燃险即车辆附加自燃损失险，它是机动车车辆损失保险的一个附加险种，在保险期间内，保险车辆在使用过程中，由于本车电路、线路、油路、供油系统、货物自身发生问题、机动车运转摩擦起火引起火灾，造成保险车辆的损失，以及被保险人在发生该保险事故时，为减少保险车辆损失而必须要支出的合理施救费用，保险公司会相应的进行赔偿。</div><a href='news.asp?classid=17&id=70'>More</a></div><div class='newsList'><img class='smallimage' src='images/upfile/sec5s.jpg' /><p>玻璃单独破碎险</p><div>
				玻璃单独破碎险，车险附加险种。
				指对车辆的风档玻璃和车窗玻璃发生单独破碎，保险公司负责赔偿。</div><a href='news.asp?classid=17&id=69'>More</a></div><div class='newsList'><img class='smallimage' src='images/upfile/sec4s.jpg' /><p>盗抢险</p><div>
				盗抢险全称是机动车辆全车盗抢险。
				机动车辆全车盗抢险的保险责任为全车被盗窃、被抢劫、被抢夺造成的车辆损失以及在被盗窃、被抢劫、被抢夺期间受到损坏或车上零部件、附属设备丢失需要修复的合理费用。可见，机动车辆全车盗抢险的保险责任包含两部分：一是因被盗窃、被抢劫、被抢夺造成的保险车辆的损失；二是因保险车</div><a href='news.asp?classid=17&id=68'>More</a></div><div class='newsList'><img class='smallimage' src='images/upfile/sec3s.jpg' /><p>第三者责任险</p><div>
				第三者责任险（简称三责险），全称：机动车第三者责任强制保险。
				是指保险人允许的合格驾驶员在使用被保险车辆过程中发生的意外事故，致使第三者遭受人身伤亡或财产的直接损失，依法应当由被保险人支付的赔偿金额，保险人会按照保险合同中的有关规定给予赔偿。同时，若经保险公司书面同意，被保险人因此发生仲裁或诉讼费</div><a href='news.asp?classid=17&id=67'>More</a></div><div class='newsList'><img class='smallimage' src='images/upfile/sec2s.jpg' /><p>交强险</p><div> 

	交强险即机动车交通事故责任强制保险。


	交强险的全称是“机动车交通事故责任强制保险”，是由保险公司对被保险机动车发生道路交通事故造成受害人（不包括本车人员和被保险人）的人身伤亡、财产损失，在责任限额内予以赔偿的强制性责任保险。交强险是中国首个由国家法律规定实行的强制保险制度。其保费是实行全国统一收</div><a href='news.asp?classid=17&id=66'>More</a></div><div class='newsList'><img class='smallimage' src='images/upfile/sec1s.jpg' /><p>车辆损失险</p><div>
车辆损失险即车主向保险公司投保的预防车辆可能造成的损失的保险。车辆损失险的保险金额可以按投保时的保险价值或实际价值确定，也可以由投保人与保险公司协商确定，但保险金额不能超出保险价值。即价值10万元的车辆，保险金额只能在10万元以内。</div><a href='news.asp?classid=17&id=65'>More</a></div><div class="mCenter"  style='text-align:center'><br>共有：<strong>6</strong>条&nbsp;每页显示：<strong>10</strong>条&nbsp;&nbsp;&nbsp;[首页]&nbsp;[上一页]&nbsp;[下一页]&nbsp;[尾页]&nbsp;&nbsp;&nbsp;页次：<strong>1</strong>/1&nbsp;转到:<select name="Page" onchange="javascript:window.location='?ClassID = 17&Page='+this.options[this.selectedIndex].value+'';"><option value="1" selected>1</option></select>&nbsp;&nbsp;<br><br></div>
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
