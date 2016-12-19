<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/Base.css" />
<link type="text/css" rel="stylesheet" href="css/Modify.css" />
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
</style>
<script>
	$(function(){
		$(".store:nth-child(4n-1)").css({"margin-right":0});
		$(".store:nth-child(4n)").css({"margin-right":0,"float":"right"});
	});
</script>
</head>
<body>
	<div id="Base">
    	<div id="head1">
			<img class="alternate" src="images/store.jpg" />
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
	<div class="leftMenuTitle"><img src="images/dot1.png" />&nbsp;&nbsp;Mall 网络商城</div>
	<div class="leftMenuContent">
    	<a href='store.asp?classid=11'>泸州老窖<img src='images/arrow1.png' /></a><a href='store.asp?classid=18'>贝秀堡红酒<img src='images/arrow1.png' /></a><a href='store.asp?classid=19'>五粮液<img src='images/arrow1.png' /></a><a href='store.asp?classid=20'>茅台<img src='images/arrow1.png' /></a><a href='store.asp?classid=21'>驾图盒子<img src='images/arrow1.png' /></a><a href='store.asp?classid=22'>荣事达<img src='images/arrow1.png' /></a><a href='store.asp?classid=23'>飞科<img src='images/arrow1.png' /></a><a href='store.asp?classid=24'>堂皇家纺<img src='images/arrow1.png' /></a>
	</div>
</div>
			</div>
			<div class="right">
				<a href='store.asp?classid=0&id=428' class='store'><img src='images/upfile/11-1.jpg' /><div>珍品青花瓷</div></a><a href='store.asp?classid=0&id=429' class='store'><img src='images/upfile/11-2.jpg' /><div>老窖醇香精品9</div></a><a href='store.asp?classid=0&id=431' class='store'><img src='images/upfile/11-4.jpg' /><div>泸州老窖醇香【佳酿】</div></a><a href='store.asp?classid=0&id=443' class='store'><img src='Images/UpFile/2015628135410741.jpg' /><div>泸州老窖醇香柔和</div></a><a href='store.asp?classid=0&id=456' class='store'><img src='Images/UpFile/201571511857775.jpg' /><div>泸州老窖醇香【K3】</div></a><a href='store.asp?classid=0&id=458' class='store'><img src='Images/UpFile/201571511659506.jpg' /><div>老窖醇香【醇酿珍品】</div></a><a href='store.asp?classid=0&id=488' class='store'><img src='Images/UpFile/2015928145954326.jpg' /><div>泸州老窖醇香【味之尊】</div></a><a href='store.asp?classid=0&id=489' class='store'><img src='Images/UpFile/2015928151346978.jpg' /><div>泸州老窖醇香【典藏】</div></a><a href='store.asp?classid=0&id=490' class='store'><img src='Images/UpFile/2015928151251518.jpg' /><div>泸州老窖醇香【鉴藏】</div></a><a href='store.asp?classid=0&id=509' class='store'><img src='Images/UpFile/2015102794616820.jpg' /><div>泸州老窖醇香【品鉴】 688元</div></a><a href='store.asp?classid=0&id=510' class='store'><img src='Images/UpFile/2015102794842223.jpg' /><div>老窖醇香【尊仕典藏】1288</div></a><a href='store.asp?classid=0&id=511' class='store'><img src='Images/UpFile/20151027111448621.jpg' /><div>泸州老窖【酿艺2014版52度】</div></a><div class='clear'></div><div style='text-align:center'><br>共有：<strong>24</strong>条&nbsp;每页显示：<strong>12</strong>条&nbsp;&nbsp;&nbsp;[首页]&nbsp;[上一页]&nbsp;<a class='c' href="?Page=2">[下一页]</a>&nbsp;<a class='c' href="?Page=2">[尾页]</a>&nbsp;&nbsp;&nbsp;页次：<strong>1</strong>/2&nbsp;转到:<select name="Page" onchange="javascript:window.location='?Page='+this.options[this.selectedIndex].value+'';"><option value="1" selected>1</option><option value="2">2</option></select>&nbsp;&nbsp;<br><br></div>
				<script type="text/javascript">
					$("a.store").hover(function(){
						$("div",this).css("color","red");
					},function(){
						$("div",this).css("color","black");
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
