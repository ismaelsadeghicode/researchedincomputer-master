<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="image/icon/icon.png" rel="icon" />
    <title>پژوهش در کامپیوتر </title>
    <meta name="description" content="Responsive and clean html template design for any kind of ecommerce webshop">
    <!-- CSS Part Start-->

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/js/bootstrap/css/bootstrap.min.css"/> " />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/js/bootstrap/css/bootstrap-rtl.min.css"/> " />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/font-awesome/css/font-awesome.min.css"/> " />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/stylesheet.css"/> " />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/owl.carousel.css"/> " />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/owl.transitions.css"/> " />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/responsive.css"/> " />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/stylesheet-rtl.css"/> " />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/responsive-rtl.css"/> " />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans' type='text/css'>
    <!-- CSS Part End-->

    <%--add--%>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cd n.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<%--/add--%>
</head>
<body>
<div class="wrapper-wide">
    <div id="header">
        <!-- Top Bar Start-->
        <nav id="top" class="htop">
            <div class="container">
                <div class="row"> <span class="drop-icon visible-sm visible-xs"><i class="fa fa-align-justify"></i></span>
                    <div class="pull-left flip left-top">
                        <div class="links">
                            <ul>
                                <li class="mobile"><i class="fa fa-phone"></i>09016506543</li>
                                <li class="email"><a href="mailto:info@marketshop.com"><i class="fa fa-envelope"></i>researchedincomputer@gmail.com</a></li>
                                <li class="wrap_custom_block hidden-sm hidden-xs"><a>جدیدترین ها <b></b></a>
                                    <div class="dropdown-menu custom_block">
                                        <ul>
                                            <li>
                                                <table>
                                                    <tbody>
                                                    <tr>
                                                        <td><img alt="" src="<c:url value="/resources/image/conferanc/ACCSI22_poster.jpg"/> "></td>
                                                        <td><img alt="" src="<c:url value="/resources/image/conferanc/ITMAS17_poster.jpg"/> "></td>
                                                    </tr>
                                                    <tr>
                                                        <td><h4> علوم کامپیوتر </h4></td>
                                                        <td><h4> علوم کامپیوتر </h4></td>
                                                    </tr>
                                                    <tr>
                                                        <td>بیست و دومین کنفرانس ملی سالانه انجمن کامپیوترایران. </td>
                                                        <td>هفدهمین کنفرانس بین المللی مدیریت و کاربردهای فناوری و اطلاعات. </td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong><a class="btn btn-default btn-sm" href="#">ادامه مطلب</a></strong></td>
                                                        <td><strong><a class="btn btn-default btn-sm" href="#">ادامه مطلب</a></strong></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <!-- <li><a href="#">لیست علاقه مندی (0)</a></li> -->
                                <li><a href="#">کارگاه های آموزشی</a></li>
                                <li><a href="/papier/papierList">مقاله</a></li>
                            </ul>
                        </div>
                        <div id="language" class="btn-group">
                            <!-- <button class="btn-link dropdown-toggle" data-toggle="dropdown"> <span> <img src="image/flags/gb.png" alt="انگلیسی" title="انگلیسی">انگلیسی <i class="fa fa-caret-down"></i></span></button>
                            <ul class="dropdown-menu">
                              <li>
                                <button class="btn btn-link btn-block language-select" type="button" name="GB"><img src="image/flags/gb.png" alt="انگلیسی" title="انگلیسی" /> انگلیسی</button>
                              </li>
                              <li>
                                <button class="btn btn-link btn-block language-select" type="button" name="GB"><img src="image/flags/ar.png" alt="عربی" title="عربی" /> عربی</button>
                              </li>
                            </ul> -->
                        </div>
                        <div id="currency" class="btn-group">
                            <!-- <button class="btn-link dropdown-toggle" data-toggle="dropdown"> <span> تومان <i class="fa fa-caret-down"></i></span></button>
                            <ul class="dropdown-menu">
                              <li>
                                <button class="currency-select btn btn-link btn-block" type="button" name="EUR">€ Euro</button>
                              </li>
                              <li>
                                <button class="currency-select btn btn-link btn-block" type="button" name="GBP">£ Pound Sterling</button>
                              </li>
                              <li>
                                <button class="currency-select btn btn-link btn-block" type="button" name="USD">$ USD</button>
                              </li>
                            </ul> -->
                        </div>
                    </div>
                    <div id="top-links" class="nav pull-right flip">
                        <ul>

                            <c:if test="${pageContext.request.userPrincipal.name != null}">
                                <li><a href="<c:url value="/j_spring_security_logout" />">خروج</a></li>
                                <li><a> خوش امدید :${pageContext.request.userPrincipal.name} </a></li>


                                <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                    <li><a href="<c:url value="/customer/cart" />">کارت</a></li>
                                </c:if>

                                <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                                    <li><a href="<c:url value="/admin" />">پنل مدیریتی</a></li>
                                </c:if>



                            </c:if>

                            <c:if test="${pageContext.request.userPrincipal.name == null}">
                                <li><a href="<c:url value="/login" />">ورود</a></li>
                                <li><a href="<c:url value="/register" />">ثبت نام</a></li>
                            </c:if>

                            <%--<li><a href="register.html">ثبت نام</a></li>--%>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Top Bar End-->
        <!-- Header Start-->
        <header class="header-row">
            <div class="container">
                <div class="table-container">
                    <!-- Logo Start -->
                    <div class="col-table-cell col-lg-6 col-md-6 col-sm-12 col-xs-12 inner">
                        <div id="logo"><a href="/"><img class="img-responsive" src="<c:url value="/resources/image/logo.png"/> " title="MarketShop" alt="MarketShop" /></a></div>
                    </div>
                    <!-- Logo End -->
                    <!-- Mini Cart Start-->
                    <div class="col-table-cell col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div id="cart">
                            <!-- <button type="button" data-toggle="dropdown" data-loading-text="Loading..." class="heading dropdown-toggle">
                            <span class="cart-icon pull-left flip"></span>
                            <span id="cart-total">2 آیتم - 132000 تومان</span></button> -->
                            <ul class="dropdown-menu">
                                <%--<li>--%>
                                    <%--<table class="table">--%>
                                        <%--<tbody>--%>
                                        <%--<tr>--%>
                                            <%--<td class="text-center"><a href="product.html"><img class="img-thumbnail" title="کفش راحتی مردانه" alt="کفش راحتی مردانه" src="image/product/sony_vaio_1-50x50.jpg"></a></td>--%>
                                            <%--<td class="text-left"><a href="product.html">  </a></td>--%>
                                            <%--<td class="text-right">x 1</td>--%>
                                            <%--<td class="text-right"> </td>--%>
                                            <%--<td class="text-center"><button class="btn btn-danger btn-xs remove" title="حذف" onClick="" type="button"><i class="fa fa-times"></i></button></td>--%>
                                        <%--</tr>--%>
                                        <%--<tr>--%>
                                            <%--<td class="text-center"><a href="product.html"><img class="img-thumbnail" title="تبلت ایسر" alt="تبلت ایسر" src="<c:url value="/resources/image/product/samsung_tab_1-50x50.jpg"/> "></a></td>--%>
                                            <%--<td class="text-left"><a href="product.html"> </a></td>--%>
                                            <%--<td class="text-right">x 1</td>--%>
                                            <%--<td class="text-right"> </td>--%>
                                            <%--<td class="text-center"><button class="btn btn-danger btn-xs remove" title="حذف" onClick="" type="button"><i class="fa fa-times"></i></button></td>--%>
                                        <%--</tr>--%>
                                        <%--</tbody>--%>
                                    <%--</table>--%>
                                <%--</li>--%>
                                <li>
                                    <div>
                                        <table class="table table-bordered">
                                            <tbody>
                                            <%--<tr>--%>
                                                <%--<td class="text-right"><strong>جمع کل</strong></td>--%>
                                                <%--<td class="text-right">132000 تومان</td>--%>
                                            <%--</tr>--%>
                                            <%--<tr>--%>
                                                <%--<td class="text-right"><strong>کسر هدیه</strong></td>--%>
                                                <%--<td class="text-right">4000 تومان</td>--%>
                                            <%--</tr>--%>
                                            <%--<tr>--%>
                                                <%--<td class="text-right"><strong>مالیات</strong></td>--%>
                                                <%--<td class="text-right">11880 تومان</td>--%>
                                            <%--</tr>--%>
                                            <%--<tr>--%>
                                                <%--<td class="text-right"><strong>قابل پرداخت</strong></td>--%>
                                                <%--<td class="text-right">139880 تومان</td>--%>
                                            <%--</tr>--%>
                                            </tbody>
                                        </table>
                                        <p class="checkout"><a href="cart.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> مشاهده سبد</a>&nbsp;&nbsp;&nbsp;<a href="checkout.html" class="btn btn-primary"><i class="fa fa-share"></i> تسویه حساب</a></p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Mini Cart End-->
                    <!-- جستجو Start-->
                    <div class="col-table-cell col-lg-3 col-md-3 col-sm-6 col-xs-12 inner">
                        <div id="search" class="input-group">
                            <input id="filter_name" type="text" name="search" value="" placeholder="جستجو" class="form-control input-lg" />
                            <button type="button" class="button-search"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                    <!-- جستجو End-->
                </div>
            </div>
        </header>
        <!-- Header End-->
        <!-- Main آقایانu Start-->
        <div class="container">
            <nav id="menu" class="navbar">
                <div class="navbar-header"> <span class="visible-xs visible-sm"> منو <b></b></span></div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li ><a class="fa fa-home" title="خانه" href="/"><span></span></a></li>
                        <li class="mega-menu dropdown"><a>دسته ها</a>
                            <div class="dropdown-menu">
                                <div class="column col-lg-2 col-md-3"><a href="#">نرم افزار</a>
                                    <div>
                                        <ul>
                                            <!-- <li><a href="category.html">آزمون و ارزیابی نرم افزار <span>&rsaquo;</span></a> -->
                                            <!-- <div class="dropdown-menu"> -->
                                            <!-- <ul>
                                              <li><a href="category.html">زیر</a></li>
                                              <li><a href="category.html">زیردسته ها</a></li>
                                              <li><a href="category.html">زیردسته ها</a></li>
                                              <li><a href="category.html">زیردسته ها</a></li>
                                              <li><a href="category.html">زیردسته جدید</a></li>
                                            </ul> -->
                                            <!-- </div> -->
                                            <!-- </li> -->
                                            <li><a href="#" >آزمون و ارزیابی نرم افزار</a> </li>
                                            <li><a href="#" >مهندسی نرم‌افزار چابک</a> </li>
                                            <li><a href="#" >روش‌های صوری</a> </li>
                                            <li><a href="#" >مدل‌سازی</a> </li>
                                            <li><a href="#" >مهندسی وب </a> </li>
                                            <li><a href="#" >طراحی پایگاه داده‌ها و کلان داده‌ها</a> </li>
                                            <li><a href="#" >مشخصه‌های کیفی نرم‌افزار</a> </li>
                                            <li><a href="#" >سرویس‌گرایی</a> </li>
                                            <li><a href="#" >ديگر موضوعات مرتبط</a> </li>

                                            <!-- <li><a href="category.html">دخترانه<span>&rsaquo;</span></a> -->
                                            <!-- <div class="dropdown-menu">
                                              <ul>
                                                <li><a href="category.html">زیردسته ها </a></li>
                                                <li><a href="category.html">زیردسته جدید</a></li>
                                                <li><a href="category.html">زیردسته جدید</a></li>
                                              </ul>
                                            </div> -->
                                            <!-- </li> -->
                                            <!-- <li><a href="category.html">پسرانه</a></li> -->
                                            <!-- <li><a href="category.html">نوزاد</a></li> -->
                                            <!-- <li><a href="category.html">لوازم <span>&rsaquo;</span></a>
                                              <div class="dropdown-menu">
                                                <ul>
                                                  <li><a href="category.html">زیردسته های جدید</a></li>
                                                </ul>
                                              </div>
                                            </li>
                                          </ul>
                                        </div>
                                      </div>
                                      <div class="column col-lg-2 col-md-3"> <a href="category.html">هوش مصنوعی </a>
                                        <div>
                                            <!-- <ul>
                                              <li> <a href="category.html">لپ تاپ <span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                  <ul>
                                                    <li> <a href="category.html">زیردسته های جدید </a> </li>
                                                    <li> <a href="category.html">زیردسته های جدید </a> </li>
                                                    <li> <a href="category.html">زیردسته جدید </a> </li>
                                                  </ul>
                                                </div>
                                              </li>
                                              <li> <a href="category.html">رومیزی <span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                  <ul>
                                                    <li> <a href="category.html">زیردسته های جدید </a> </li>
                                                    <li> <a href="category.html">زیردسته جدید </a> </li>
                                                    <li> <a href="category.html">زیردسته جدید </a> </li>
                                                  </ul>
                                                </div>
                                              </li>
                                              <li> <a href="category.html">دوربین <span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                  <ul>
                                                    <li> <a href="category.html">زیردسته های جدید</a></li>
                                                  </ul>
                                                </div>
                                              </li>
                                              <li><a href="category.html">موبایل و تبلت <span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                  <ul>
                                                    <li><a href="category.html">زیردسته های جدید</a></li>
                                                    <li><a href="category.html">زیردسته های جدید</a></li>
                                                  </ul>
                                                </div>
                                              </li>
                                              <li><a href="category.html">صوتی و تصویری <span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                  <ul>
                                                    <li><a href="category.html">زیردسته های جدید </a> </li>
                                                    <li><a href="category.html">زیردسته جدید </a> </li>
                                                  </ul>
                                                </div>
                                              </li>
                                              <li><a href="category.html">لوازم خانگی</a> </li>
                                            </ul> -->
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"><a href="#">الگوریتم‌ و نظریه محاسبات</a>
                                    <div>
                                        <ul>
                                            <li><a href="#" >طراحی و تحلیل الگوریتم‌ها</a> </li>
                                            <li><a href="#" >هندسه محاسباتی</a> </li>
                                            <li><a href="#" >الگوریتم‌های تقریبی و تصادفی</a> </li>
                                            <li><a href="#" >پیچیدگی محاسبات</a> </li>
                                            <li><a href="#" >الگوریتم‌های موازی و توزیع‌شده</a> </li>
                                            <li><a href="#" >نظریه الگوریتمی بازی‌ها</a> </li>
                                            <li><a href="#" >روش‌های صوری در حل مسأله‌ها</a> </li>
                                            <li><a href="#" >الگوریتم‌های وب و بیوانفورماتیک</a> </li>
                                            <li><a href="#" >ديگر موضوعات مرتبط</a> </li>

                                        </ul>
                                        <!-- <ul>
                                          <li><a href="category.html">آقایان</a> </li>
                                          <li><a href="category.html">بانوان <span>&rsaquo;</span></a>
                                            <div class="dropdown-menu">
                                              <ul>
                                                <li><a href="category.html">زیردسته های جدید </a> </li>
                                                <li><a href="category.html">زیردسته ها </a> </li>
                                              </ul>
                                            </div>
                                          </li>
                                          <li><a href="category.html">دخترانه</a> </li>
                                          <li><a href="category.html">پسرانه</a> </li>
                                          <li><a href="category.html">نوزاد</a> </li>
                                          <li><a href="category.html">لوازم <span>&rsaquo;</span></a>
                                            <div class="dropdown-menu">
                                              <ul>
                                                <li><a href="category.html">زیردسته های جدید</a></li>
                                                <li><a href="category.html">زیردسته های جدید</a></li>
                                                <li><a href="category.html">زیردسته ها</a></li>
                                              </ul>
                                            </div>
                                          </li>
                                        </ul> -->
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="category.html">سيستم‌هاي هوشمند و رايانش نرم</a>
                                    <div>
                                        <ul>
                                            <li> <a href="category.html">هوش مصنوعي و يادگيري ماشين</a></li>
                                            <li> <a href="category.html">رايانش نرم</a></li>
                                            <li> <a href="category.html">شناسايي الگو</a></li>
                                            <li> <a href="category.html">پردازش زبان طبيعي</a></li>
                                            <li> <a href="category.html">سيستم‌هاي چند‌عامله</a></li>
                                            <li> <a href="category.html">ديگر موضوعات مرتبط</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="category.html">شبکه‌های کامپیوتری</a>
                                    <div>
                                        <ul>
                                            <li> <a href="#">شبكه‌هاي نرم‌افزارپذير (SDN)</a></li>
                                            <li> <a href="#">شبكه‌هاي اقتضايي خودرويي</a></li>
                                            <li> <a href="#">ارتباطات سامانه‌هاي هوشمند</a></li>
                                            <li> <a href="#">شبكه‌هاي صنعتي و بي‌درنگ</a></li>
                                            <li> <a href="#">شبكه‌هاي شناختي</a></li>
                                            <li> <a href="#">ملاحظات مصرف انرژي</a></li>
                                            <li> <a href="#">معماري پردازنده‌ها و تجهيزات شبكه</a></li>
                                            <li> <a href="#">پروتکل‌های رایانش ابری و گرید</a></li>
                                            <li> <a href="#">ديگر موضوعات مرتبط</a></li>
                                        </ul>
                                        <!-- <ul>
                                          <li> <a href="category.html">نقره <span>&rsaquo;</span></a>
                                            <div class="dropdown-menu">
                                              <ul>
                                                <li> <a href="category.html">زیردسته های جدید</a></li>
                                                <li> <a href="category.html">زیردسته های جدید</a></li>
                                              </ul>
                                            </div>
                                          </li>
                                          <li><a href="category.html">طلا <span>&rsaquo;</span></a>
                                            <div class="dropdown-menu">
                                              <ul>
                                                <li><a href="category.html">تست 1</a></li>
                                                <li><a href="category.html">تست 2</a></li>
                                              </ul>
                                            </div>
                                          </li>
                                          <li><a href="category.html">الماس</a></li>
                                          <li><a href="category.html">مروارید <span>&rsaquo;</span></a>
                                            <div class="dropdown-menu">
                                              <ul>
                                                <li><a href="category.html">زیردسته های جدید</a></li>
                                              </ul>
                                            </div>
                                          </li>
                                          <li><a href="category.html">زیورآلات آقایان</a></li>
                                          <li><a href="category.html">زیورآلات کودکان <span>&rsaquo;</span></a>
                                            <div class="dropdown-menu">
                                              <ul>
                                                <li><a href="category.html">زیردسته های جدید </a> </li>
                                              </ul>
                                            </div>
                                          </li>
                                        </ul> -->
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"><a href="category.html">امنيت داده و شبکه</a>
                                    <div>
                                        <ul>
                                            <li> <a href="#">امنيت شبكه‌هاي كامپيوتري</a></li>
                                            <li> <a href="#">امنيت شبکه‌های بی‌سيم و موبايل</a></li>
                                            <li> <a href="#">پروتكل‌هاي امنيتي</a></li>
                                            <li> <a href="#">حملات سايبري و نفوذ</a></li>
                                            <li> <a href="#">رمزنگاری</a></li>
                                            <li> <a href="#">ديگر موضوعات مرتبط</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="category.html">پردازش سيگنال</a>
                                    <div>
                                        <ul>
                                            <li> <a href="#">بينايي ماشين و پردازش تصوير</a></li>
                                            <li> <a href="#">پردازش صوت</a></li>
                                            <li> <a href="#">تشخيص و بهبود گفتار</a></li>
                                            <li> <a href="#">پردازش ويديو</a></li>
                                            <li> <a href="#">ديگر موضوعات مرتبط</a></li>

                                        </ul>
                                        <!-- <ul>
                                          <li><a href="category.html">اسباب بازی</a></li>
                                          <li><a href="category.html">بازی <span>&rsaquo;</span></a>
                                            <div class="dropdown-menu">
                                              <ul>
                                                <li><a href="category.html">تست 25</a></li>
                                              </ul>
                                            </div>
                                          </li>
                                          <li><a href="category.html">پازل</a></li>
                                          <li><a href="category.html">سرگرمی</a></li>
                                          <li><a href="category.html">متنوع</a></li>
                                          <li><a href="category.html">سلامت و امنیت</a></li>
                                        </ul> -->
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="#">فناوری اطلاعات</a>
                                    <div>
                                        <ul>
                                            <li><a href="#">زیرساخت­‌های فناوری اطلاعات</a></li>
                                            <li><a href="#">فناوری­‌های هوشمند واینترنت اشیا</a></li>
                                            <li><a href="#">امنیت</a></li>
                                            <li><a href="#">داده‌کاوی و داده‌‌های کلان</a></li>
                                            <li><a href="#">شبکه­‌های اجتماعی</a></li>
                                            <li><a href="#">معماری سازماني</a></li>
                                            <li><a href="#">مدیریت فناوری اطلاعات</a></li>
                                            <li><a href="#">ديگر موضوعات مرتبط</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="#">معماری کامپيوتر و سيستم‌هاي ديجيتال</a>
                                    <div>
                                        <ul>
                                            <li><a href="#">معماري پردازنده و حافظه</a></li>
                                            <li><a href="#">مدارهای حسابي</a></li>
                                            <li><a href="#">قابليـت اطمينان و آزمون‌پذيري</a></li>
                                            <li><a href="#">معماري­‌های موازي</a></li>
                                            <li><a href="#">مدارهاي مجتمع ديجيتال</a></li>
                                            <li><a href="#">معماری­‌های نهفته</a></li>
                                            <li><a href="#">معماری­ سيستم‌های ديجيتال </a></li>
                                            <li><a href="#">معماری پردازنده­‌های خاص‌منظوره</a></li>
                                            <li><a href="#">سيستم روی تراشه</a></li>
                                            <li><a href="#">ديگر موضوعات مرتبط</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="category.html">سيستم­های موازی و توزيعی</a>
                                    <div>
                                        <ul>
                                            <li><a href="">پردازش موازي و توزيعی</a></li>
                                            <li><a href="">سيستم‌هاي موازی و توزيعی</a></li>
                                            <li><a href="">سیستم‌های عامل</a></li>
                                            <li><a href="">اينترنت اشياء (Internet of Things)</a></li>
                                            <li><a href="">پايگاه داده موازی و توزيعی</a></li>
                                            <li><a href="">رايانش خوشه­‌ای</a></li>
                                            <li><a href="">رايانش مشبک (گريد)</a></li>
                                            <li><a href="">رايانش ابری</a></li>
                                            <li><a href="">ديگر موضوعات مرتبط</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="menu_brands dropdown"><a href="/conferancList">کنفرانس ها </a>
                            <div class="dropdown-menu">
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="<c:url value="/resources/image/product/w.jpg"/> " title="کنفرانس ملی" alt="کنفرانس ملی" /></a><a href="#"></a>کنفرانس ملی کامپیوتر  </div>
                                <!-- <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/canon_logo-60x60.jpg" title="کنون" alt="کنون" /></a><a href="#">کنون</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"> <a href="#"><img src="image/product/hp_logo-60x60.jpg" title="اچ پی" alt="اچ پی" /></a><a href="#">اچ پی</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/htc_logo-60x60.jpg" title="اچ تی سی" alt="اچ تی سی" /></a><a href="#">اچ تی سی</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/palm_logo-60x60.jpg" title="پالم" alt="پالم" /></a><a href="#">پالم</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/sony_logo-60x60.jpg" title="سونی" alt="سونی" /></a><a href="#">سونی</a> </div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/canon_logo-60x60.jpg" title="test" alt="test" /></a><a href="#">test</a> </div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/apple_logo-60x60.jpg" title="test 3" alt="test 3" /></a><a href="#">test 3</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/canon_logo-60x60.jpg" title="test 5" alt="test 5" /></a><a href="#">test 5</a> </div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/canon_logo-60x60.jpg" title="test 6" alt="test 6" /></a><a href="#">test 6</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/apple_logo-60x60.jpg" title="test 7" alt="test 7" /></a><a href="#">test 7</a> </div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/canon_logo-60x60.jpg" title="test1" alt="test1" /></a><a href="#">test1</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/apple_logo-60x60.jpg" title="test2" alt="test2" /></a><a href="#">test2</a></div> -->
                            </div>
                        </li>
                        <!-- <li class="custom-link"><a href="#">لینک های دلخواه</a></li> -->
                        <li class="dropdown wrap_custom_block hidden-sm hidden-xs"><a href="/journalList">مجله ها </a>
                            <div class="dropdown-menu custom_block">
                                <ul>
                                    <li>
                                        <table>
                                            <tbody>
                                            <tr>
                                                <td><img alt="" src="<c:url value="/resources/image/banner/IEEE.png"/> " height="70" width="150"></td>
                                                <td><img alt="" src="<c:url value="/resources/image/banner/Elsevier.png"/> " height="70" width="150"></td>
                                                <td><img alt="" src="<c:url value="/resources/image/banner/Springer.jpg"/> " height="70" width="150"></td>
                                            </tr>
                                            <tr>
                                                <td><h4>مجله IEEE</h4></td>
                                                <td><h4>مجله الزویر</h4></td>
                                                <td><h4>مجله اسپرینگر</h4></td>
                                            </tr>
                                            <tr>
                                                <td>یکی از بزرگترین پایگاه­های اطلاعاتی در زمینه مهندسی برق، تکنولوژی اطلاعات، الکترونیک، کامپیوتر، فیزیک، فیزیک کاربردی و علوم وابسته است. عنوان اصلی این پایگاه "انجمن مهندسین برق و الکترونیک امریکا" نام دارد که یکصد سال از تاسیس آن می گذرد.</td>
                                                <td>الزیویر یکی از ارائه‌دهندگان پیشروی راهکارهای اطلاعاتی است که سعی در افزایش عملکرد متخصصان حوزه‌های مختلف علمی، پزشکی و فناوری دارد؛ و تسهیلاتی را فراهم می‌آورد</td>
                                                <td>اسپرینگر در سال ۱۸۴۲فردی به نام جولیوس اسپرینگر (Julius Springer) در جشن تولد ۲۵ سالگی اش یک کتاب فروشی را در شهر برلین آلمان بنیان گذاری کرد و نام آن را اسپرینگر گذاشت.</td>
                                            </tr>
                                            <tr>
                                                <td><strong><a class="btn btn-primary btn-sm" href="#">ادامه مطلب</a></strong></td>
                                                <td><strong><a class="btn btn-primary btn-sm" href="#">ادامه مطلب</a></strong></td>
                                                <td><strong><a class="btn btn-primary btn-sm" href="#">ادامه مطلب</a></strong></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- <li class="dropdown information-link"><a>برگه ها</a> -->
                        <div class="dropdown-menu">
                            <%--<ul>--%>
                                <%--<li><a href="login.html">ورود</a></li>--%>
                                <%--<li><a href="register.html">ثبت نام</a></li>--%>
                                <%--<li><a href="category.html">دسته بندی (شبکه/لیست)</a></li>--%>
                                <%--<li><a href="product.html">محصولات</a></li>--%>
                                <%--<li><a href="cart.html">سبد خرید</a></li>--%>
                                <%--<li><a href="checkout.html">تسویه حساب</a></li>--%>
                                <%--<li><a href="compare.html">مقایسه</a></li>--%>
                                <%--<li><a href="wishlist.html">لیست آرزو</a></li>--%>
                                <%--<li><a href="search.html">جستجو</a></li>--%>
                            <%--</ul>--%>
                            <ul>
                                <li><a href="/about">درباره ما</a></li>
                                <li><a href="/droll">404</a></li>
                                <%--<li><a href="faq.html">سوالات متداول</a></li>--%>
                                <li><a href="/contact">تماس با ما</a></li>
                            </ul>
                        </div>
                        </li>
                        <li class="contact-link"><a href="/wishlist">لینک های مرتبط </a></li>
                        <li class="contact-link"><a href="/contact">تماس با ما</a></li>
                        <li class="custom-link-right"><a href="/" target="_blank">همراه شما تا موفقیت </a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- Main آقایانu End-->
    </div>