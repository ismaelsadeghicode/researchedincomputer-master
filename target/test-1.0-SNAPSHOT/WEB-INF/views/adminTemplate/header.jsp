<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8"/>
    <link href="image/icon/icon.png" rel="icon"/>
    <title>مدیریت وب سایت</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    <!-- GLOBAL STYLES -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/bootstrap/css/bootstrap.rtl.css"/> "/>
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/main.css"/> "/>
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/theme.css"/> "/>
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/MoneAdmin.css"/> "/>
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/Font-Awesome/css/font-awesome.css"/> "/>
    <!--END GLOBAL STYLES -->

    <!-- PAGE LEVEL STYLES -->
    <link href="<c:url value="/resources/assets/css/layout2.css"/> " rel="stylesheet"/>
    <link href="<c:url value="/resources/assets/plugins/flot/examples/examples.css"/> " rel="stylesheet"/>
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/timeline/timeline.css"/> "/>
    <!-- END PAGE LEVEL  STYLES -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<!-- END HEAD-->
<!-- BEGIN BODY-->
<body class="padTop53 ">

<!-- MAIN WRAPPER -->
<div id="wrap">

    <!-- HEADER SECTION -->
    <div id="top">

        <nav class="navbar navbar-inverse navbar-fixed-top " style="padding: 10px;">
            <a data-original-title="Show/Hide Menu" data-placement="bottom" data-tooltip="tooltip"
               class="accordion-toggle btn btn-primary btn-sm visible-xs" data-toggle="collapse" href="#menu"
               id="menu-toggle">
                <i class="icon-align-justify"></i>
            </a>
            <!-- LOGO SECTION -->
            <header class="navbar-header">

                <a href="/" class="navbar-brand">
                    <img src="<c:url value="/resources/image/logo.png"/> " alt="" height="30"/>
                    <h1 class="site-title"> پنل مدیریتی </h1>
                </a>
            </header>
            <!-- END LOGO SECTION -->
            <ul class="nav navbar-top-links navbar-left">

            </ul>

        </nav>

    </div>
    <!-- END HEADER SECTION -->


    <!-- MENU SECTION -->
    <div id="right">
        <div class="media user-media well-small">
            <a class="user-link" href="#">
                <img class="media-object img-thumbnail user-img" alt="تصویر کاربر" src="#"/>
            </a>
            <br/>
            <div class="media-body">
                <h5 class="media-heading"><a>کاربر : </a> ${pageContext.request.userPrincipal.name}</h5>
                <ul class="list-unstyled user-info">

                    <li>
                        <a class="btn btn-success btn-xs btn-circle" style="width: 10px;height: 12px;"></a> آنلاین

                    </li>

                </ul>
            </div>
            <br/>
        </div>

        <ul id="menu" class="collapse">


            <li class="panel">
                <a href="Admin.html">
                    <i class="icon-table"></i> داشبورد


                </a>
            </li>


            <li class="panel ">
                <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle collapsed"
                   data-target="#form-nav">
                    <i class="icon-home"></i>
                    خانه

                </a>

            </li>


            <li class="panel ">
                <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle"
                   data-target="#component-nav">
                    <i class="icon-tasks"> </i>
                    مدیریت کنفرانس ها
                    <%--<span class="pull-left">--%>
                    <%--<i class="icon-angle-right"></i>--%>
                    <%--</span>--%>
                    <%--&nbsp; <span class="label label-default">3</span>&nbsp;--%>
                </a>
                <ul class="collapse" id="component-nav">
                    <li class=""><a href="button.html"><i class="icon-angle-left"></i> مشاهده </a></li>
                    <li class=""><a href="icon.html"><i class="icon-angle-left"></i> ویرایش </a></li>
                    <li class=""><a href="progress.html"><i class="icon-angle-left"></i> حذف </a></li>
                </ul>
            </li>


            <li class="panel">
                <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#DDL-nav">
                    <i class=" icon-tasks"></i>
                    مدیریت مجله ها
                    <%--<span class="pull-left">--%>
                    <%--<i class="icon-angle-right"></i>--%>
                    <%--</span>--%>
                    <%--&nbsp; <span class="label label-default">3</span>&nbsp;--%>
                </a>
                <ul class="collapse" id="DDL-nav">
                    <li><a href="#"><i class="icon-angle-left"></i> مشاهده </a></li>
                    <li><a href="#"><i class="icon-angle-left"></i> ویرایش </a></li>
                    <li><a href="#"><i class="icon-angle-left"></i> حذف </a></li>
                </ul>
            </li>
            <li class="panel">
                <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle"
                   data-target="#pagesr-nav">
                    <i class="icon-table"></i>
                    دسته ها
                    <%--<span class="pull-left">--%>
                    <%--<i class="icon-angle-right"></i>--%>
                    <%--</span>--%>
                    <%--&nbsp; <span class="label label-info">6</span>&nbsp;--%>
                </a>
                <ul class="collapse" id="pagesr-nav">
                    <li><a href="pages_calendar.html"><i class="icon-angle-left"></i> مدیریت منو </a></li>
                </ul>
            </li>


            <li class="panel">
                <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#DDL4-nav">
                    <i class=" icon-folder-open-alt"></i>
                    فایل
                    <%--<span class="pull-left">--%>
                    <%--<i class="icon-angle-right"></i>--%>
                    <%--</span>--%>
                    <%--&nbsp; <span class="label label-warning">5</span>&nbsp;--%>

                </a>
                <ul class="collapse" id="DDL4-nav">
                    <li>

                    <li><a href="#"><i class="icon-angle-left"></i> مشاهده فایل</a></li>
                    <li><a href="#"><i class="icon-angle-left"></i> ویرایش فایل </a></li>
                    <li><a href="#"><i class="icon-angle-left"></i> آپلود فایل </a></li>
                    <li><a href="#"><i class="icon-angle-left"></i> حذف فایل </a></li>
                </ul>
            </li>


            <li class="panel">
                <a href="#" data-parent="#menu" data-toggle="collapse" class="accordion-toggle"
                   data-target="#error-nav">
                    <i class="icon-warning-sign"></i> صفحات خطاها

                    <%--<span class="pull-left">--%>
                    <%--<i class="icon-angle-right"></i>--%>
                    <%--</span>--%>
                    <%--&nbsp; <span class="label label-danger">3</span>&nbsp;--%>
                </a>
                <ul class="collapse" id="error-nav">
                    <!-- <li><a href="errors_403.html"><i class="icon-angle-left"></i> خطای 403  </a></li> -->
                    <li><a href="errors_404.html"><i class="icon-angle-left"></i> خطای 404 </a></li>
                    <!-- <li><a href="errors_405.html"><i class="icon-angle-left"></i> خطای 405  </a></li> -->
                    <!-- <li><a href="errors_500.html"><i class="icon-angle-left"></i> خطای 500  </a></li> -->
                    <!-- <li><a href="errors_503.html"><i class="icon-angle-left"></i> خطای 503  </a></li> -->
                </ul>
            </li>


            <li><a href="gallery.html"><i class="icon-film"></i> گالری تصاویر </a></li>
            <li><a href="tables.html"><i class="icon-table"></i> جدول ها </a></li>
            <li><a href="maps.html"><i class="icon-map-marker"></i> نقشه ها </a></li>


            <li>
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <a href="<c:url value="/j_spring_security_logout"/>" >
                        </c:if>
                            <i class="icon-signin"></i> صفحه ورود
                    </a>

            </li>

        </ul>

    </div>
    <!--END MENU SECTION -->


    <!--PAGE CONTENT -->
    <div id="content">
        <div class="inner" style="min-height: 700px;">

            <!--BLOCK SECTION -->
            <div class="row">
                <div class="col-lg-12">
                    <div style="text-align: center;">

                        <a class="quick-btn" href="/admin">
                            <i class="icon-home icon-2x"></i>
                            <span>خانه</span>
                            <span class="label label-success"></span>
                        </a>


                        <a class="quick-btn" href="<c:url value="/admin/conferancInventory"/> ">
                            <i class="icon-align-justify icon-2x"></i>
                            <span> کنفرانس ها </span>
                            <span class="label label-danger"></span>
                        </a>

                        <a class="quick-btn" href="#">
                            <i class="icon-globe icon-2x"></i>
                            <span> مجلات علمی </span>
                            <span class="label label-danger"></span>
                        </a>

                        <a class="quick-btn" href="<c:url value="/admin/papierInventory"/>">
                            <i class="icon-check icon-2x"></i>
                            <span> مقالات </span>
                            <span class="label label-danger"></span>
                        </a>

                        <%--<a class="quick-btn" href="#">--%>
                            <%--<i class="icon-envelope icon-2x"></i>--%>
                            <%--<span>پیغام ها</span>--%>
                            <%--<span class="label label-success"></span>--%>
                        <%--</a>--%>

                        <a class="quick-btn" href="#">
                            <i class="icon-folder-open icon-2x"></i>
                            <span>فایل</span>
                            <span class="label label-success"></span>
                        </a>

                        <a class="quick-btn" href="/admin/usersInventory">
                            <i class="icon-user icon-2x"></i>
                            <span>کاربران</span>
                            <span class="label label-success"></span>
                        </a>

                        <a class="quick-btn" href="<c:url value="/j_spring_security_logout"/>">
                            <i class="icon-share-alt icon-2x"></i>
                            <span>خروج</span>
                            <span class="label label-success"></span>
                        </a>


                    </div>

                </div>

            </div>

