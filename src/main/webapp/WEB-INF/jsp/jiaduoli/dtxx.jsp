<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link type="text/css" rel="stylesheet" href="css/Base.css" />
<link type="text/css" rel="stylesheet" href="css/Modify.css" />
<!--[if lt IE 9]>
    <script src="js/jquery-1.9.1.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
    <script src="js/jquery-2.1.1.js"></script>
<!--<![endif]-->
<title>动态信息</title>
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
					<div class="leftMenuTitle"><img src="images/dot1.png" />&nbsp;&nbsp;News ���Ŷ�̬</div>
					<div class="leftMenuContent">
						<a href='news.asp?classid=16'>��˾����<img src='images/arrow1.png' /></a><a href='news.asp?classid=17'>����֪ʶ<img src='images/arrow1.png' /></a>
					</div>
				</div>
			</div>
			<div class="right">
				<div class='newsList'><img class='smallimage' src='/images/UpFile/image/20161117/20161117133091789178.jpg' /><p>���ζ���-��Ʒ���С�������������ů��</p><div>
	��������~�ζ�����������ů��~�ûʼҷ�ʢ����פ�ζ����������ƽ̨���ͼ���������~���һ��ů����~ 


	 


	���ûʼҷġ���Ʒ�ƴ�����1986�꣬רҵ���¼ҷ���ҵ20���꣬�Ⱥ��ٻ��й����Ʋ�Ʒ������������������Ʒ�������й������̱ꡱ��������Ч���Ƚ���ҵ���ȳƺţ�����6�걻��Ϊ������ʡ�����̱�</div><a href='news.asp?classid=16&id=96'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20161027/20161027141414631463.jpg' /><p>���ζ���-��Ʒ���С������������ɿ����뵶</p><div>
	�й����뵶��һƷ�� ---�ɿ�ʢ����פ�ζ�����Ʒ�������ƽ̨������������Ǹ�������ů�������~ ˫ͷ�����Դ����ͷ��ȫ��ˮϴ�Զ���磬������˳���������������


	 


	


	 


	


	 
</div><a href='news.asp?classid=16&id=95'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20161027/20161027140988148814.png' /><p>���ζ���-��Ʒ���С����´�Ʒ��С�ҵ�ǿ����פ</p><div>
	����С�ҵ����´�ǿ�Ƶ�½�ζ�����Ʒ�������ƽ̨��~Ʒ���б���ѡ���������΢�������ܵ緹�ҡ���˹�῾�䡢����һ�������ھ�ե֭����˫��ѹ����...�ζ���������������������

 

	


	


	 


	

 

	
</div><a href='news.asp?classid=16&id=94'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160831/20160831101229822982.jpg' /><p>���ζ���-��Ʒ���С���ͼ--���ܼ�ʻ ��������</p><div>
	


	


	


	 


	�ζ�����һ�ذ�����---��ͼ���ӣ�������װ�������ֻ����������ע�ζ������ں�jdl1919�򲦴�02586297866��ѯ�� 

 

	 


	 
</div><a href='news.asp?classid=16&id=93'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160722/20160722104862226222.jpg' /><p>���ζ���-��Ʒ���С���в�Ҷ¡������</p><div>
	  


	 ������һ���޾���������һ���޲� 


	  �ζ�������󰮲���ʿ��������������¡���Ƴ����װ��Ҷ 


	  �ڸд��� ��װ���� Ʒ�ʱ�֤  

 

	


	
</div><a href='news.asp?classid=16&id=92'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160621/20160621135661406140.jpg' /><p>���ζ���-��Ʒ���С�һ������ ��������</p><div>
	�ζ���Я���й�̫ƽ�����������Ƴ� 


	����98Ԫ���� ����10�����Ᵽ�ϣ� 


	 

 

	 


	�ζ���ȫ�������ŵ�����

 

	���½�ζ����ٷ��̳ǽ���ѡ�� 


	������ѯ���µ�86297866 


	
</div><a href='news.asp?classid=16&id=91'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160523/20160523093582198219.jpg' /><p>���ζ���-��Ʒ���С�ę́����ͬ��¡������</p><div>
	 


	 


	Ʒ����ę́����ͬ�콴����53�� 


	�г��ۣ�680Ԫ/ƿ 


	���:500ml*6/�� 


	�ζ���ȫ�������˵���ѿ�ʼ�����ͣ������뵽����ѯ��ȡ 


	����ͬ����ʼ챨�� 

 

	
</div><a href='news.asp?classid=16&id=90'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160511/201605111050007373.JPG' /><p>���ζ���-��Ʒ���С�����ʢ���ºȷ�</p><div> 

	 

 

	Ʒ��������ű��ɰ����Ѿ� 


	�г��ۣ�238Ԫ/ƿ 


	���:750ml*6/�� 


	�ζ���ȫ�������˵���ѿ�ʼ�����ͣ������뵽����ѯ��ȡ 


	 

 

	Ʒ�������㾭��ɺ����Ѿ� 


	�г��ۣ�178Ԫ/ƿ 


	��</div><a href='news.asp?classid=16&id=89'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160503/20160503091763896389.jpg' /><p>���ζ���-��Ʒ���С��ϽѴ�����ϲ��¡������</p><div>
	 


	


	Ʒ�����ϽѴ�����ϲ��42�� 


	�г��ۣ�98/ƿ 


	���:500ml*12/�� 


	�ζ���ȫ�������˵���ѿ�ʼ�����ͣ������뵽����ѯ��ȡ 


	��ϲ����ʼ챨�� 


	 


	 


	 


	
</div><a href='news.asp?classid=16&id=88'>More</a></div><div class='newsList'><img class='smallimage' src='/images/UpFile/image/20160407/20160407163277707770.png' /><p>���ζ���-��Ʒ���С�����Һ�������Ʒ¡������</p><div>
	 

 

	Ʒ��������Һ�������Ʒ52�� 


	�г��ۣ�618/ƿ 


	���:500ml*6/�� 


	�ζ���ȫ�������˵���ѻ𱬿��ۣ������뵽����ѯ 
</div><a href='news.asp?classid=16&id=87'>More</a></div><div class="mCenter"  style='text-align:center'><br>���У�<strong>26</strong>��&nbsp;ÿҳ��ʾ��<strong>10</strong>��&nbsp;&nbsp;&nbsp;[��ҳ]&nbsp;[��һҳ]&nbsp;<a class='c' href="?Page=2">[��һҳ]</a>&nbsp;<a class='c' href="?Page=3">[βҳ]</a>&nbsp;&nbsp;&nbsp;ҳ�Σ�<strong>1</strong>/3&nbsp;ת��:<select name="Page" onchange="javascript:window.location='?Page='+this.options[this.selectedIndex].value+'';"><option value="1" selected>1</option><option value="2">2</option><option value="3">3</option></select>&nbsp;&nbsp;<br><br></div>
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
	  <td style="padding-left:20px;">��Ȩ����&copy;���ռζ�����ó���޹�˾<br />

				��ַ������ʡ�Ͼ��й�¥������·8��3��802<br />
				���ߣ�400-816-5519 / 18100625066 / 025-86293833<br />
				�ֻ���17701592688
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
