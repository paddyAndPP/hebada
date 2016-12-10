<%--
  Created by IntelliJ IDEA.
  User: aiiajj
  Date: 2016/12/10
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

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

<div class="row">
    <div class="col-lg-12">
        <div class="panel">
            <%--<div class="panel-heading bk-bg-primary">
                <h6><i class="fa fa-table red"></i><span class="break"></span>Combined All Table</h6>
                <div class="panel-actions">
                    <a href="table.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                    <a href="table.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                    <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                </div>
            </div>--%>
            <div class="panel-body" style="display: block;">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-condensed table-hover">
                        <thead>
                        <tr>
                            <th>序號</th>
                            <th>客戶姓名</th>
                            <th>電話</th>
                            <th>郵箱</th>
                            <th>地址</th>
                            <th>狀態</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>石龍飛</td>
                            <td>18396352825</td>
                            <td>530155968@qq.com</td>
                            <td>福建省武平縣</td>
                            <td>已處理</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>石龍飛</td>
                            <td>18396352825</td>
                            <td>530155968@qq.com</td>
                            <td>福建省武平縣</td>
                            <td>已處理</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>石龍飛</td>
                            <td>18396352825</td>
                            <td>530155968@qq.com</td>
                            <td>福建省武平縣</td>
                            <td>已處理</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>石龍飛</td>
                            <td>18396352825</td>
                            <td>530155968@qq.com</td>
                            <td>福建省武平縣</td>
                            <td>已處理</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>石龍飛</td>
                            <td>18396352825</td>
                            <td>530155968@qq.com</td>
                            <td>福建省武平縣</td>
                            <td>已處理</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>石龍飛</td>
                            <td>18396352825</td>
                            <td>530155968@qq.com</td>
                            <td>福建省武平縣</td>
                            <td>已處理</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>石龍飛</td>
                            <td>18396352825</td>
                            <td>530155968@qq.com</td>
                            <td>福建省武平縣</td>
                            <td>已處理</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>石龍飛</td>
                            <td>18396352825</td>
                            <td>530155968@qq.com</td>
                            <td>福建省武平縣</td>
                            <td>已處理</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

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
<script tpye="text/javascript">
    $(function () {


    });


</script>
</body>
</html>
