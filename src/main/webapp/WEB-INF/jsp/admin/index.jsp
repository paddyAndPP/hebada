<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">

	<head>
	
		<!-- Basic -->
    	<meta charset="UTF-8" />

		<title>Dashboard | Nadhif - Responsive Admin Template</title>
		
		<!-- Mobile Metas -->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		
		<%--<!-- Import google fonts -->
        <link href="http://fonts.useso.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css" />--%>
        
		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon.png" />
		<link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-152x152.png" />
		
	    <!-- start: CSS file-->
		
		<!-- Vendor CSS-->
		<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->		
		<link href="${pageContext.request.contextPath}/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/scrollbar/css/mCustomScrollbar.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/xcharts/css/xcharts.min.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/morris/css/morris.css" rel="stylesheet" />
		
		<!-- Theme CSS -->
		<link href="${pageContext.request.contextPath}/assets/css/jquery.mmenu.css" rel="stylesheet" />
		
		<!-- Page CSS -->		
		<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/css/add-ons.min.css" rel="stylesheet" />
		
		<!-- end: CSS file-->	
	    
		
		<!-- Head Libs -->
		<script src="${pageContext.request.contextPath}/assets/plugins/modernizr/js/modernizr.js"></script>
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
			<script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.js"></script>
		<![endif]-->		
		
	</head>
	
	<body>
	
		<!-- Start: Header -->
		<div class="navbar" role="navigation">
			<div class="container-fluid container-nav">				
				<!-- Navbar Action -->
				<ul class="nav navbar-nav navbar-actions navbar-left" style="margin-top: 20px;">
					<li class="visible-md visible-lg"><a href="javascript:void(0);" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
					<li class="visible-xs visible-sm"><a href="javascript:void(0);" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>
				</ul>

				<!-- Navbar Left -->
				<div class="navbar-left"  style="margin-top: 20px;">
					<!-- Search Form -->					
					<form class="search navbar-form">
						<div class="input-group input-search">
							<input type="text" class="form-control" name="q" id="q" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
							</span>
						</div>						
					</form>
				</div>
			</div>		
		</div>
		<!-- End: Header -->
		<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >hebada</a></div>
		<!-- Start: Content -->
		<div class="container-fluid content">	
			<div class="row">
			
				<!-- Sidebar -->
				<div class="sidebar">
					<div class="sidebar-collapse">
						<!-- Sidebar Header Logo-->
						<div class="sidebar-header">
							<img src="../assets/img/logo.png" class="img-responsive" alt="" />
						</div>
						<!-- Sidebar Menu-->
						<div class="sidebar-menu">						
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-sidebar">
									<div class="panel-body text-center">								
										<div class="bk-avatar">
											<img src="../assets/img/avatar.jpg" class="img-circle bk-img-60" alt="" />
										</div>
										<div class="bk-padding-top-10">
											<i class="fa fa-circle text-success"></i> <small>${sessionScope.account }</small>
										</div>
									</div>
									<div class="divider2"></div>
									<li class="active">
										<a href="index.jsp">
											<i class="fa fa-home" aria-hidden="true"></i><span>首页</span>
										</a>
									</li>
									<li>
										<a href="page-inbox.html">
											<span class="pull-right label label-primary"><%--165  显示数字--%></span>
											<i class="fa fa-envelope" aria-hidden="true"></i><span>内容管理</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-copy" aria-hidden="true"></i><span>内容管理</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="page-activity.html"><span class="text"> 菜单管理</span></a></li>
											<li><a href="page-invoice.html"><span class="text"> 新闻管理</span></a></li>
											<li><a href="page-profile.html"><span class="text"> Profile</span></a></li>
											<li><a href="page-pricing-tables.html"><span class="text"> Pricing Tables</span></a></li>
											<li><a href="page-404.html"><span class="text"> 404</span></a></li>
											<li><a href="page-500.html"><span class="text"> 500</span></a></li>
											<li><a href="page-lockscreen.html"><span class="text"> LockScreen1</span></a></li>
											<li><a href="page-lockscreen2.html"><span class="text"> LockScreen2</span></a></li>
											<li><a href="../login.jsp"><span class="text"> Login Page</span></a></li>
											<li><a href="page-register.html"><span class="text"> Register Page</span></a></li>											
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-list-alt" aria-hidden="true"></i><span>系统管理</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="form-elements.html"><span class="text"> 用户管理</span></a></li>
											<li><a href="form-wizard.html"><span class="text"> 权限管理</span></a></li>
											<li><a href="form-dropzone.html"><span class="text"> 操作记录</span></a></li>
											<li><a href="form-x-editable.html"><span class="text"> 系统参数</span></a></li>
											<li><a href="form-editors.html"><span class="text"> Editors</span></a></li>
										</ul>
									</li>
									<li>
										<a href="../guestBook/guestBookList">
											<i class="fa fa-table" aria-hidden="true"></i><span>留言管理</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-random" aria-hidden="true"></i><span>Visual Chart</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="chart-flot.html"><span class="text"> Flot Chart</span></a></li>
											<li><a href="chart-xchart.html"><span class="text"> xChart</span></a></li>
											<li><a href="chart-other.html"><span class="text"> Other</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-tasks" aria-hidden="true"></i>
											<span>UI Elements</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="ui-progress-bars.html"><span class="text"> Progress bars</span></a></li>
											<li><a href="ui-nestable-list.html"><span class="text"> Nestable Lists</span></a></li>
											<li><a href="ui-elements.html"><span class="text"> Elements</span></a></li>
											<li><a href="ui-panels.html"><span class="text"> Panels</span></a></li>
											<li><a href="ui-buttons.html"><span class="text"> Buttons</span></a></li>
										</ul>
									</li>
									<li>
										<a href="widgets.html">
											<i class="fa fa-life-bouy" aria-hidden="true"></i><span>Widgets</span>
										</a>
									</li>
									<li>
										<a href="typography.html">
											<i class="fa fa-font" aria-hidden="true"></i><span>Typography</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-bolt" aria-hidden="true"></i><span>Icons</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="icons-font-awesome.html"><span class="text"> Font Awesome</span></a></li>
											<li><a href="icons-weathericons.html"><span class="text"> Weather Icons</span></a></li>
											<li><a href="icons-glyphicons.html"><span class="text"> Glyphicons</span></a></li>
										</ul>
									</li>
									<li>
										<a href="gallery.html">
											<i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span>
										</a>
									</li>
									<li>
										<a href="calendar.html">
											<i class="fa fa-calendar" aria-hidden="true"></i><span>Calendar</span>
										</a>
									</li>
								</ul>
							</nav>
						</div>
						<!-- End Sidebar Menu-->
					</div>
					<!-- Sidebar Footer-->
					<div class="sidebar-footer">	
						<ul class="sidebar-terms">
							<li><a href="index.jsp#">团队</a></li>
							<li><a href="index.jsp#">个人</a></li>
							<li><a href="index.jsp#">帮助</a></li>
							<li><a href="index.jsp#">关于</a></li>
						</ul>
						<div class="copyright text-center">
							copyright here
						</div>					
					</div>
					<!-- End Sidebar Footer-->
				</div>
				<!-- End Sidebar -->
		
				<!-- Main Page -->
				<div class="main ">
					<!-- Page Header -->
					<%--<div class="page-header">
						<div class="pull-left">
							<ol class="breadcrumb visible-sm visible-md visible-lg">								
								<li><a href="index.jsp"><i class="icon fa fa-home"></i>Home</a></li>
								<li class="active"><i class="fa fa-laptop"></i>Dashboard</li>
							</ol>						
						</div>
						<div class="pull-right">
							<h2>Dashboard</h2>
						</div>					
					</div>--%>
					<!-- End Page Header -->								
				</div>
			
			</div>
		</div><!--/container-->
		
		
		<!-- Modal Dialog -->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title bk-fg-primary">Modal title</h4>
					</div>
					<div class="modal-body">
						<p class="bk-fg-danger">Here settings can be configured...</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div>
			</div>
		</div><!-- End Modal Dialog -->		
		
		<div class="clearfix"></div>		
		
		
		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->				
		
		<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="../assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="../assets/vendor/skycons/js/skycons.js"></script>		
		
		<!-- Plugins JS-->		
		<script src="../assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="../assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script src="../assets/plugins/bootkit/js/bootkit.js"></script>
		<script src="../assets/plugins/moment/js/moment.min.js"></script>	
		<script src="../assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>
		<script src="../assets/plugins/touchpunch/js/jquery.ui.touch-punch.min.js"></script>
		<script src="../assets/plugins/flot/js/jquery.flot.min.js"></script>
		<script src="../assets/plugins/flot/js/jquery.flot.pie.min.js"></script>
		<script src="../assets/plugins/flot/js/jquery.flot.resize.min.js"></script>
		<script src="../assets/plugins/flot/js/jquery.flot.stack.min.js"></script>
		<script src="../assets/plugins/flot/js/jquery.flot.time.min.js"></script>
		<script src="../assets/plugins/xcharts/js/xcharts.min.js"></script>
		<script src="../assets/plugins/autosize/jquery.autosize.min.js"></script>
		<script src="../assets/plugins/placeholder/js/jquery.placeholder.min.js"></script>
		<script src="../assets/plugins/datatables/js/dataTables.bootstrap.min.js"></script>
		<script src="../assets/plugins/datatables/js/jquery.dataTables.min.js"></script>
		<script src="../assets/plugins/raphael/js/raphael.min.js"></script>
		<script src="../assets/plugins/morris/js/morris.min.js"></script>
		<script src="../assets/plugins/gauge/js/gauge.min.js"></script>		
		<script src="../assets/plugins/d3/js/d3.min.js"></script>		
		<!--<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>  delete by templatesy.com (because of google)-->
		
		<!-- Theme JS -->		
		<script src="../assets/js/jquery.mmenu.min.js"></script>
		<script src="../assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="../assets/js/pages/index.js"></script>
		
		<!-- end: JavaScript-->
		
	</body>
	
</html>