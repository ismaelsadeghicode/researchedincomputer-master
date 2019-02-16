<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div id="container">
    <div class="container">
        <!-- Breadcrumb Start-->
        <ul class="breadcrumb">
            <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/" itemprop="url"><span
                    itemprop="title"><i class="fa fa-home"></i></span></a></li>
            <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="category.html" itemprop="url"><span
                    itemprop="title">مقاله</span></a></li>
            <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="product.html" itemprop="url"><span
                    itemprop="title">${conferanc.conferancName}</span></a></li>
        </ul>
        <!-- Breadcrumb End-->
        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-9">
                <div itemscope itemtype="http://schema.org/محصولات">
                    <h1 class="title" itemprop="name">${papier.papierName}</h1>
                    <div class="row product-info">
                        <div class="col-sm-6">
                            <div class="image"><img class="img-responsive" itemprop="image" id="zoom_01"
                                                    src="<c:url value="/resources/imagePapier/${papier.papierId}.png"/> "
                                                    title="#" alt="#"
                                                    data-zoom-image="<c:url value="#"/> "/>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <ul class="list-unstyled description">
                                <li><b>نام مقاله :</b> <a href="#"><span
                                        itemprop="brand">${papier.papierName}</span></a></li>
                                <li><b>شماره مقاله :</b> <span itemprop="mpn">${papier.papierId}</span></li>
                                <li><b> عنوان مقاله:</b>${papier.papierTitle}</li>
                                <li><b> شرح مقاله:</b>${papier.papierDescription}</li>
                                <li><h3>تاریخ های مهم:</h3>${papier.volume}</li>
                                <li><b> تاریخ مقاله:</b>${papier.papierPrintYear}</li>
                                <li><b>:issue</b>${papier.issue}</li>
                                <li><b>:DOI</b>${papier.DOI}</li>
                                <li><b>  نام مجله:</b>${papier.journal}</li>
                                <li><b>  زبان:</b>${papier.language}</li>
                                <li><b> قیمت:</b>${papier.papierPrice}</li>
                                <li><b>:URL</b>${papier.URL}</li>
                                <li><b>شماره صفحه:</b> <span class="instock">${papier.startPages}</span></li>
                            </ul>


                            <br/>

                            <c:set var = "role" scope="page" value="${param.role}" />
                            <c:set var = "url" scope="page" value="/papier/papierList" />
                            <c:if test="${role='admin'}">
                                <c:set var="url" scope="page" value="/admin/papierInventory" />
                            </c:if>

                            <p ng-controller="cartCtrl">
                                <a href="<c:url value = "${url}" />" class="btn btn-default">بازگشت</a>
                                <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${papier.papierId}')"><span class="glyphicon glyphicon-shopping-cart"></span> افزودن به سبد خرید </a>
                                <a href="<spring:url value="/cart"/>" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> نمایش سبد خرید </a>
                            </p>
                            <!-- <ul class="price-box">
                              <li class="price" itemprop="offers" itemscope itemtype="http://schema.org/Offer"><span class="price-old">12 میلیون تومان</span> <span itemprop="price">10 میلیون تومان<span itemprop="availability" content="موجود"></span></span></li>
                              <li></li>
                              <li>بدون مالیات : 9 میلیون تومان</li>
                            </ul> -->
                            <div id="product">
                                <!-- <h3 class="subtitle">انتخاب های در دسترس</h3> -->
                                <!-- <div class="form-group required">
                                  <label class="control-label">رنگ</label>
                                  <select class="form-control" id="input-option200" name="option[200]">
                                    <option value=""> --- لطفا انتخاب کنید --- </option>
                                    <option value="4">مشکی </option>
                                    <option value="3">نقره ای </option>
                                    <option value="1">سبز </option>
                                    <option value="2">آبی </option>
                                  </select>
                                </div> -->
                                <div class="cart">
                                    <div>
                                        <!-- <div class="qty">
                                          <label class="control-label" for="input-quantity">تعداد</label>
                                          <input type="text" name="quantity" value="1" size="2" id="input-quantity" class="form-control" />
                                          <a class="qtyBtn plus" href="javascript:void(0);">+</a><br />
                                          <a class="qtyBtn mines" href="javascript:void(0);">-</a>
                                          <div class="clear"></div>
                                        </div> -->
                                        <!-- <button type="button" id="button-cart" class="btn btn-primary btn-lg">افزودن به سبد</button> -->
                                    </div>
                                    <!-- <div> -->
                                    <!-- <button type="button" class="wishlist" onClick=""><i class="fa fa-heart"></i> افزودن به علاقه مندی ها</button> -->
                                    <!-- <br /> -->
                                    <!-- <button type="button" class="wishlist" onClick=""><i class="fa fa-exchange"></i> مقایسه این محصول</button> -->
                                    <!-- </div> -->
                                </div>
                            </div>
                            <div class="rating" itemprop="aggregateRating" itemscope
                                 itemtype="http://schema.org/AggregateRating">
                                <button type="button" id="button-cart" class="btn btn-primary btn-lg">دانلود</button>

                                <!-- <meta itemprop="ratingValue" content="0" />
                                <p><span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span> <a onClick="$('a[href=\'#tab-review\']').trigger('click'); return false;" href=""><span itemprop="reviewCount">1 بررسی</span></a> / <a onClick="$('a[href=\'#tab-review\']').trigger('click'); return false;" href="">یک بررسی بنویسید</a></p> -->
                            </div>
                            <hr>
                            <!-- AddThis Button BEGIN -->
                            <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like"
                                                                                  fb:like:layout="button_count"></a>
                                <a class="addthis_button_tweet"></a>
                                <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                                <a class="addthis_button_pinterest_pinit" pi:pinit:layout="horizontal"
                                   pi:pinit:url="http://www.addthis.com/features/pinterest"
                                   pi:pinit:media="http://www.addthis.com/cms-content/images/features/pinterest-lg.png"></a>
                                <a class="addthis_counter addthis_pill_style"></a></div>
                            <script type="text/javascript"
                                    src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-514863386b357649"></script>
                            <!-- AddThis Button END -->
                        </div>
                    </div>

                </div>
            </div>

            <aside id="column-right" class="col-sm-3 hidden-xs">
                <h3>پیشنهاد ما </h3>

                <table class="table">
                    <c:forEach items="${papiers}" var="conferanc">
                        <tbody>
                        <tr>
                            <td>
                                <div class="image"><img src=<c:url value="/resources/images/${conferanc.papierId}.png"/> ""  class="img-responsive" /></div>
                            </td>
                            <td>${conferanc.papierTitle}</td>
                            <td><a href="<spring:url value="/conferancList/viewConferanc/${conferanc.papierId}"/>">
                                <span class="btn btn-default btn-line"> مشاهده </span></a></td>
                        </tr>
                        </tbody>
                    </c:forEach>
                </table>


        </div>
    </div>


    <div class="list-group">

    </div>

    <div class="side-item">
        <div class="product-thumb clearfix">

        </div>

    </div>
    </aside>
    <!--Right Part End -->
</div>
<%--</div>--%>
<%-- </div>--%>

<%--برای سبد خرید--%>
<script src="<c:url value="/resources/js/controller.js?v3" /> "></script>


<%@include file="/WEB-INF/views/template/footer.jsp" %>