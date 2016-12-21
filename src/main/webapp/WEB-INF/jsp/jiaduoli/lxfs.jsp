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
<title>关于我们</title>
<style>
	.left{width:210px; float:left;}
	.right{width:830px; padding:40px; padding-bottom:20px; background-color:white; float:right;}
	
	.introTitle1{color:#b31d0e; font-size:17px;}
	
	.coperate a{display:inline-block; float:left; margin-right:45px; margin-bottom:20px; text-align:center;}
	
	.jointitle{color:red; font-size:18px;}
	
	.certificate a{display:inline-block; float:left; width:242px; margin-bottom:20px; margin-right:25px;}
	.certificate a img{width:242px;}
	/* 新增 */
	.show a img{max-height: 440px;}
	.pic_left{left:5%;}
	.pic_right{right:5%;}
</style>
<script>
	$(function(){
		var id = 427;
		if(id == 426){
			$("#head1").height(692);
			$("#head1>img.alternate:eq(0)").attr("src","images/bg-join.jpg")	
		}

	});
</script>
</head>
<body>
	<div id="Base">
    	<div id="head1">
			<img class="alternate" src="images/about.jpg" />
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
	<div class="leftMenuTitle"><img src="images/dot1.png" />&nbsp;&nbsp;About Us 关于我们</div>
	<div class="leftMenuContent">
    	<a href='about.asp?classid=9&id=423'>公司介绍<img src='images/arrow1.png' /></a><a href='about.asp?classid=9&id=424'>资质荣誉<img src='images/arrow1.png' /></a><a href='about.asp?classid=9&id=425'>战略合作<img src='images/arrow1.png' /></a><a href='about.asp?classid=9&id=426'>加盟政策<img src='images/arrow1.png' /></a><a href='about.asp?classid=9&id=427'>联系方式<img src='images/arrow1.png' /></a>
	</div>
</div>
			</div>
			<div class="right">
				<div class="productDetail"><div class="sContentD"><p>
	<img src="images/contact1.jpg" width="512" /> 
</p>
<p>
	<img src="images/contact2.jpg" /> 
</p>
<p>
	<span style="font-size:14px;">南京总部：</span><br />
<span style="font-size:14px;"> 江苏嘉多利商贸有限公司</span><br />
<span style="font-size:14px;"> 加盟电话：400-816-5519</span><br />
<span style="font-size:14px;"> 电  话：025-86297866</span><br />
<span style="font-size:14px;"> 网  址: www.jiaduoli198.com</span><br />
<span style="font-size:14px;"> 地  址：江苏省南京市鼓楼区东宝路8号3幢802</span>
</p>
<p>
	<br />
</p></div></div><br><div align='right'><a class='c' href='javascript:window.history.go(-1)'><<&nbsp;Return</a></div>
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
