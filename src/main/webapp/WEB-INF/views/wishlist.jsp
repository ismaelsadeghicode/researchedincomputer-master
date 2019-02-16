<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <div id="container">
        <div class="container">
            <!-- Breadcrumb Start-->
            <ul class="breadcrumb">
                <li><a href="index.html"><i class="fa fa-home"></i></a></li>
                <li><a href="#">لینک های مرتبط </a></li>
                <%--<li><a href="wishlist.html">لیست علاقه مندی من</a></li>--%>
            </ul>
            <!-- Breadcrumb End-->
            <div class="row">
                <!--Middle Part Start-->
                <div id="content" class="col-sm-12">
                    <h1 class="title">لینک سایت های مرتبط</h1>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <td class="text-right">شماره</td>
                                <td class="text-center"> تصویر سایت</td>
                                <td class="text-left">نام سایت</td>
                                <td class="text-left">آدرس سایت</td>
                                <td class="text-right">توضیحات</td>
                                <td class="text-right">لینک</td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="text-center"><a href="product.html"><img src="<c:url value="/resources/image/product/samsung_tab_1-50x50.jpg"/>" alt="تبلت ایسر" title="تبلت ایسر" /></a></td>
                                <td class="text-left"><a href="product.html">آیپاد کلاسیک</a></td>
                                <td class="text-left">محصول 20</td>
                                <td class="text-right">موجود</td>
                                <td class="text-right"><div class="price"> 400000 تومان </div></td>
                                <td class="text-right"><button class="btn btn-primary" title="" data-toggle="tooltip" onClick="cart.add('48');" type="button" data-original-title="افزودن به سبد"><i class="fa fa-shopping-cart"></i></button>
                                <a class="btn btn-danger" title="" data-toggle="tooltip" href="http://localhost/2.2.0.0-compiled/index.php?route=account/wishlist&amp;remove=48" data-original-title="حذف"><i class="fa fa-times"></i></a></td>
                            </tr>
                          </tbody>
                        </table>
                    </div>
                </div>
                <!--Middle Part End -->
            </div>
        </div>
    </div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>