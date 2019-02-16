<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="container">
    <div class="container">
        <!-- Breadcrumb Start-->
        <ul class="breadcrumb">
            <li><a href="index.html"><i class="fa fa-home"></i></a></li>
            <li><a href="search.html">مقاله</a></li>
        </ul>
        <!-- Breadcrumb End-->
        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-12">
                <h1 class="title"> مقاله های علمی </h1>

                <%--<label>شاخص جستجو</label>--%>
                <%--<div class="row">--%>
                <%--<div class="col-sm-4">--%>
                <%--<input type="text" class="form-control" placeholder="Keywords" value="iphone" name="search">--%>
                <%--</div>--%>
                <%--<div class="col-sm-3">--%>
                <%--<select class="form-control" name="category_id">--%>
                <%--<option value="0">همه دسته ها</option>--%>
                <%--<option value="59">البسه</option>--%>
                <%--<option value="61">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;آقایان</option>--%>
                <%--<option value="93">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته ها</option>--%>
                <%--<option value="94">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته ها</option>--%>
                <%--<option value="95">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته ها</option>--%>
                <%--<option value="96">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته ها</option>--%>
                <%--<option value="91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته جدید</option>--%>
                <%--<option value="60">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;بانوان</option>--%>
                <%--<option value="62">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;دخترانه</option>--%>
                <%--<option value="98">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته ها</option>--%>
                <%--<option value="97">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته جدید</option>--%>
                <%--<option value="99">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته جدید</option>--%>
                <%--<option value="63">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;پسرانه</option>--%>
                <%--<option value="64">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;نوزاد</option>--%>
                <%--<option value="65">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;لوازم</option>--%>
                <%--<option value="120">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="66">الکترونیکی</option>--%>
                <%--<option value="67">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;لپ تاپ</option>--%>
                <%--<option value="100">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="102">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="101">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته جدید</option>--%>
                <%--<option value="68">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;رومیزی</option>--%>
                <%--<option value="103">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="104">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته جدید</option>--%>
                <%--<option value="105">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته جدید</option>--%>
                <%--<option value="33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;دوربین</option>--%>
                <%--<option value="110">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="69">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;موبایل و تبلت</option>--%>
                <%--<option value="106">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="107">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="70">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;صوتی و تصویری</option>--%>
                <%--<option value="108">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="109">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته جدید</option>--%>
                <%--<option value="71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;لوازم خانگی</option>--%>
                <%--<option value="20">کفش</option>--%>
                <%--<option value="27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;آقایان</option>--%>
                <%--<option value="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;بانوان</option>--%>
                <%--<option value="115">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="116">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته ها</option>--%>
                <%--<option value="42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;دخترانه</option>--%>
                <%--<option value="41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;پسرانه</option>--%>
                <%--<option value="40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;نوزاد</option>--%>
                <%--<option value="72">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;لوازم</option>--%>
                <%--<option value="117">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="118">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="119">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته ها</option>--%>
                <%--<option value="18">ساعت</option>--%>
                <%--<option value="46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ساعت مردانه</option>--%>
                <%--<option value="45">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ساعت زنانه</option>--%>
                <%--<option value="47">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ساعت بچگانه</option>--%>
                <%--<option value="37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;لوازم</option>--%>
                <%--<option value="25">جواهرات</option>--%>
                <%--<option value="29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;نقره</option>--%>
                <%--<option value="111">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="112">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;طلا</option>--%>
                <%--<option value="35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;تست 1</option>--%>
                <%--<option value="36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;تست 2</option>--%>
                <%--<option value="30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;الماس</option>--%>
                <%--<option value="31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;مروارید</option>--%>
                <%--<option value="113">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیورآلات آقایان</option>--%>
                <%--<option value="43">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیورآلات کودکان</option>--%>
                <%--<option value="114">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زیردسته های جدید</option>--%>
                <%--<option value="17">زیبایی و سلامت</option>--%>
                <%--<option value="57">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;عطر و ادکلن</option>--%>
                <%--<option value="24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;آرایشی</option>--%>
                <%--<option value="44">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ضد آفتاب</option>--%>
                <%--<option value="48">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;مراقبت از پوست</option>--%>
                <%--<option value="49">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;مراقبت از چشم</option>--%>
                <%--<option value="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;مراقبت از مو</option>--%>
                <%--<option value="34">کودک و نوزاد</option>--%>
                <%--<option value="51">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;اسباب بازی</option>--%>
                <%--<option value="52">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;بازی</option>--%>
                <%--<option value="58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;تست 25</option>--%>
                <%--<option value="53">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;پازل</option>--%>
                <%--<option value="54">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;سرگرمی</option>--%>
                <%--<option value="55">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;متنوع</option>--%>
                <%--<option value="56">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;سلامت و امنیت</option>--%>
                <%--<option value="38">ورزشی</option>--%>
                <%--<option value="39">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;دوچرخه سواری</option>--%>
                <%--<option value="73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;دویدن</option>--%>
                <%--<option value="74">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;شنا</option>--%>
                <%--<option value="75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;فوتبال</option>--%>
                <%--<option value="76">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;گلف</option>--%>
                <%--<option value="77">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;موج سواری</option>--%>
                <%--<option value="78">خانه و باغچه</option>--%>
                <%--<option value="79">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;لوازم خواب</option>--%>
                <%--<option value="80">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;خوراک</option>--%>
                <%--<option value="81">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;لوازم منزل</option>--%>
                <%--<option value="82">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;آشپزخانه</option>--%>
                <%--<option value="83">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;روشنایی</option>--%>
                <%--<option value="84">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ابزارها</option>--%>
                <%--<option value="85">خوراک</option>--%>
                <%--<option value="86">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;نوشیدنی</option>--%>
                <%--<option value="87">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;تنقلات</option>--%>
                <%--<option value="88">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;میان وعده</option>--%>
                <%--<option value="89">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;خشک بار</option>--%>
                <%--<option value="90">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;شکلات</option>--%>
                <%--</select>--%>
                <%--</div>--%>
                <%--<div class="col-sm-3">--%>
                <%--<input type="button" class="btn btn-primary" id="button-search" value="جستجو">--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--<br>--%>
                <div class="product-filter">
                    <div class="row">
                        <div class="col-md-4 col-sm-5">
                            <div class="btn-group">
                                <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip"
                                        title="لیستی"><i class="fa fa-th-list"></i></button>
                                <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip"
                                        title="صفحه"><i class="fa fa-th"></i></button>
                            </div>
                            <a href="compare.html" id="compare-total">نحوه نمایش</a></div>

                    </div>
                </div>

                <br/>

                <div class="row products-category">
                    <div class="product-layout product-list col-xs-12">
                        <c:forEach items="${papiers}" var="papiers">
                        <div class="product-thumb">
                            <div class="image"><a href="<spring:url value="/papier/viewPapier/${papiers.papierId}"/>">
                                <img width="50" height="50" src="<c:url value="/resources/imagePapier/${papiers.papierId}.png"/>"
                                                                           alt="${papiers.papierTitle}ُ"
                                                                           title="${papiers.papierTitle}"
                                                                           class="img-responsive"/></a></div>
                            <div>
                                <div class="caption">
                                    <h4><a href="product.html">${papiers.papierTitle}</a></h4>
                                    <p class="description">${papiers.papierDescription}

                                    </p>
                                    <p class="price"><span class="price-new">${papiers.papierPrice}</span>${papiers.journal}
                                        <%--<span  class="saving">${papiers.papierStatus}</span>--%>
                                        <span  class="price-tax"></span></p>
                                </div>
                                <div class="button-group">
                                    <button class="btn-primary" type="button" onClick="">
                                        <a href="<spring:url value="/papier/viewPapier/${papiers.papierId}"/>"></a>
                                        <span>مشاهده</span></button>
                                    <div class="add-to-links">
                                            <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                                            <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>

                    <%--<div class="product-layout product-list col-xs-12">--%>
                    <%--<div class="product-thumb">--%>
                    <%--<div class="image"><a href="product.html"><img src="image/product/nikon_d300_1-200x200.jpg" alt="دوربین دیجیتال حرفه ای" title="دوربین دیجیتال حرفه ای" class="img-responsive" /></a></div>--%>
                    <%--<div>--%>
                    <%--<div class="caption">--%>
                    <%--<h4><a href="product.html">دوربین دیجیتال حرفه ای</a></h4>--%>
                    <%--<p class="description"> طراحی حرفه ای با بهره گیری از آخرین تکنولوژی روز برای رسیدن به تجربه ای کاملا متفاوت در عکاسی حرفه ای ...</p>--%>
                    <%--<p class="price"> <span class="price-new">92000 تومان</span> <span class="price-old">98000 تومان</span> <span class="saving">-6%</span> <span class="price-tax">بدون مالیات : 75000 تومان</span> </p>--%>
                    <%--</div>--%>
                    <%--<div class="button-group">--%>
                    <%--<button class="btn-primary" type="button" onClick="cart.add('31');"><span>افزودن به سبد</span></button>--%>
                    <%--<div class="add-to-links">--%>
                    <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                    <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="product-layout product-list col-xs-12">--%>
                    <%--<div class="product-thumb">--%>
                    <%--<div class="image"><a href="product.html"><img src="image/product/FinePix-Long-Zoom-Camera-200x200.jpg" alt="دوربین فاین پیکس" title="دوربین فاین پیکس" class="img-responsive" /></a></div>--%>
                    <%--<div>--%>
                    <%--<div class="caption">--%>
                    <%--<h4><a href="product.html">دوربین فاین پیکس</a></h4>--%>
                    <%--<p class="description">محصولات 8--%>
                    <%--..</p>--%>
                    <%--<p class="price"> 122000 تومان <span class="price-tax">بدون مالیات : 100000 تومان</span> </p>--%>
                    <%--</div>--%>
                    <%--<div class="button-group">--%>
                    <%--<button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>--%>
                    <%--<div class="add-to-links">--%>
                    <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                    <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="product-layout product-list col-xs-12">--%>
                    <%--<div class="product-thumb">--%>
                    <%--<div class="image"><a href="product.html"><img src="image/product/ipod_shuffle_1-200x200.jpg" alt="لپ تاپ hp پاویلیون" title="لپ تاپ hp پاویلیون" class="img-responsive" /></a></div>--%>
                    <%--<div>--%>
                    <%--<div class="caption">--%>
                    <%--<h4><a href="product.html">لپ تاپ hp پاویلیون</a></h4>--%>
                    <%--<p class="description">بهترین انتخاب.--%>
                    <%--در میان سیستم های میان رده. مناسب برای کارهای روزمره..</p>--%>
                    <%--<p class="price"> 122000 تومان <span class="price-tax">بدون مالیات : 100000 تومان</span> </p>--%>
                    <%--</div>--%>
                    <%--<div class="button-group">--%>
                    <%--<button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>--%>
                    <%--<div class="add-to-links">--%>
                    <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                    <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="product-layout product-list col-xs-12">--%>
                    <%--<div class="product-thumb">--%>
                    <%--<div class="image"><a href="product.html"><img src="image/product/palm_treo_pro_1-200x200.jpg" alt="موبایل HTC M7" title="موبایل HTC M7" class="img-responsive" /></a></div>--%>
                    <%--<div>--%>
                    <%--<div class="caption">--%>
                    <%--<h4><a href="product.html">موبایل HTC M7</a></h4>--%>
                    <%--<p class="description">تجربه ای جدید از به کار گیری دیوایس های موبایل در تمامی فعالیت های روزانه شما ...</p>--%>
                    <%--<p class="price"> 377000 تومان <span class="price-tax">بدون مالیات : 279000 تومان</span> </p>--%>
                    <%--</div>--%>
                    <%--<div class="button-group">--%>
                    <%--<button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>--%>
                    <%--<div class="add-to-links">--%>
                    <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                    <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="product-layout product-list col-xs-12">--%>
                    <%--<div class="product-thumb">--%>
                    <%--<div class="image"><a href="product.html"><img src="image/product/macbook_1-200x200.jpg" alt="آیدیا پد یوگا" title="آیدیا پد یوگا" class="img-responsive" /></a></div>--%>
                    <%--<div>--%>
                    <%--<div class="caption">--%>
                    <%--<h4><a href="product.html">آیدیا پد یوگا</a></h4>--%>
                    <%--<p class="description"> پردازشگر اینتل core i7--%>

                    <%--با به کار گیری پردازشگر قدرتمند اینتل با سرعت 2.1 گیگاهرتز ...</p>--%>
                    <%--<p class="price"> 900000 تومان <span class="price-tax">بدون مالیات : 800000 تومان</span> </p>--%>
                    <%--<div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>--%>
                    <%--</div>--%>
                    <%--<div class="button-group">--%>
                    <%--<button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>--%>
                    <%--<div class="add-to-links">--%>
                    <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                    <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="product-layout product-list col-xs-12">--%>
                    <%--<div class="product-thumb">--%>
                    <%--<div class="image"><a href="product.html"><img src="image/product/iphone_1-200x200.jpg" alt="آیفون 7" title="آیفون 7" class="img-responsive" /></a></div>--%>
                    <%--<div>--%>
                    <%--<div class="caption">--%>
                    <%--<h4><a href="product.html">آیفون 7</a></h4>--%>
                    <%--<p class="description">انقلابی در تمامی مدل های آیفون تا امروز با احساسی بی نظیر از به کار گیری ...</p>--%>
                    <%--<p class="price"> 2200000 تومان <span class="price-tax">بدون مالیات : 2 میلیون تومان</span> </p>--%>
                    <%--<div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>--%>
                    <%--</div>--%>
                    <%--<div class="button-group">--%>
                    <%--<button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>--%>
                    <%--<div class="add-to-links">--%>
                    <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                    <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="product-layout product-list col-xs-12">--%>
                    <%--<div class="product-thumb">--%>
                    <%--<div class="image"><a href="product.html"><img src="image/product/macbook_air_1-200x200.jpg" alt="لپ تاپ ایلین ور" title="لپ تاپ ایلین ور" class="img-responsive" /></a></div>--%>
                    <%--<div>--%>
                    <%--<div class="caption">--%>
                    <%--<h4><a href="product.html">لپ تاپ ایلین ور</a></h4>--%>
                    <%--<p class="description">لپ تاپ های نام آشنای Alien Ware محصولی بی نظیر از کمپانی دل ...</p>--%>
                    <%--<p class="price"> <span class="price-new">10 میلیون تومان</span> <span class="price-old">12 میلیون تومان</span> <span class="saving">-5%</span> <span class="price-tax">بدون مالیات : 9 میلیون تومان</span> </p>--%>
                    <%--</div>--%>
                    <%--<div class="button-group">--%>
                    <%--<button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>--%>
                    <%--<div class="add-to-links">--%>
                    <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                    <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="product-layout product-list col-xs-12">--%>
                    <%--<div class="product-thumb">--%>
                    <%--<div class="image"><a href="product.html"><img src="image/product/ipod_nano_1-200x200.jpg" alt="پخش کننده موزیک" title="پخش کننده موزیک" class="img-responsive" /></a></div>--%>
                    <%--<div>--%>
                    <%--<div class="caption">--%>
                    <%--<h4><a href="product.html">پخش کننده موزیک</a></h4>--%>
                    <%--<p class="description"> پخش کننده همراه در جیب شما.--%>

                    <%--کوچک و سبک با کیفیت پخش بسیار بالا و امکانات متنوع برای استفاده ی همه روزه ...</p>--%>
                    <%--<p class="price"> 122000 تومان <span class="price-tax">بدون مالیات : 100000 تومان</span> </p>--%>
                    <%--</div>--%>
                    <%--<div class="button-group">--%>
                    <%--<button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>--%>
                    <%--<div class="add-to-links">--%>
                    <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                    <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="product-layout product-list col-xs-12">--%>
                    <%--<div class="product-thumb">--%>
                    <%--<div class="image"><a href="product.html"><img src="image/product/ipod_classic_1-200x200.jpg" alt="آیپاد نسل 5" title="آیپاد نسل 5" class="img-responsive" /></a></div>--%>
                    <%--<div>--%>
                    <%--<div class="caption">--%>
                    <%--<h4><a href="product.html">آیپاد نسل 5</a></h4>--%>
                    <%--<p class="description"> و باز هم امکانات بیشتر.--%>

                    <%--عرضه شده در نسخه های 80 و 100 گیگابایتی در رنگ های متنوع...</p>--%>
                    <%--<p class="price"> 122000 تومان <span class="price-tax">بدون مالیات : 100000 تومان</span> </p>--%>
                    <%--</div>--%>
                    <%--<div class="button-group">--%>
                    <%--<button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>--%>
                    <%--<div class="add-to-links">--%>
                    <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                    <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="product-layout product-list col-xs-12">--%>
                    <%--<div class="product-thumb">--%>
                    <%--<div class="image"><a href="product.html"><img src="image/product/ipod_touch_1-200x200.jpg" alt="سامسونگ گلکسی s7" title="سامسونگ گلکسی s7" class="img-responsive" /></a></div>--%>
                    <%--<div>--%>
                    <%--<div class="caption">--%>
                    <%--<h4><a href="product.html">سامسونگ گلکسی s7</a></h4>--%>
                    <%--<p class="description">تکنولوژی تاچ بی نظیر و بی همتا.--%>
                    <%--با امکاناتی که شاید حتی تا امروز فکرشان را هم نمیکردید ...</p>--%>
                    <%--<p class="price"> <span class="price-new">62000 تومان</span> <span class="price-old">122000 تومان</span> <span class="saving">-50%</span> <span class="price-tax">بدون مالیات : 50000 تومان</span> </p>--%>
                    <%--</div>--%>
                    <%--<div class="button-group">--%>
                    <%--<button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>--%>
                    <%--<div class="add-to-links">--%>
                    <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                    <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="product-layout product-list col-xs-12">--%>
                    <%--<div class="product-thumb">--%>
                    <%--<div class="image"><a href="product.html"><img src="image/product/samsung_tab_1-200x200.jpg" alt="تبلت ایسر" title="تبلت ایسر" class="img-responsive" /></a></div>--%>
                    <%--<div>--%>
                    <%--<div class="caption">--%>
                    <%--<h4><a href="product.html">تبلت ایسر</a></h4>--%>
                    <%--<p class="description">باریک ترین تبلت دنیا با عمر باطری بسیار بالا و کاربرد در انواع فعالیت های روزانه.</p>--%>
                    <%--<p class="price"> <span class="price-new">98000 تومان</span> <span class="price-old">240000 تومان</span> <span class="saving">-5%</span> <span class="price-tax">بدون مالیات : 80000 تومان</span> </p>--%>
                    <%--<div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>--%>
                    <%--</div>--%>
                    <%--<div class="button-group">--%>
                    <%--<button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>--%>
                    <%--<div class="add-to-links">--%>
                    <%--<button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی ها" onClick=""><i class="fa fa-heart"></i> <span>افزودن به علاقه مندی ها</span></button>--%>
                    <%--<button type="button" data-toggle="tooltip" title="مقایسه این محصول" onClick=""><i class="fa fa-exchange"></i> <span>مقایسه این محصول</span></button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                </div>
                <div class="row">
                    <div class="col-sm-6 text-left">
                        <ul class="pagination">
                            <li class="active"><span>1</span></li>
                            <%--<li><a href="#">2</a></li>--%>
                            <li><a href="#">&gt;</a></li>
                            <li><a href="#">&gt;|</a></li>
                        </ul>
                    </div>
                    <%--<div class="col-sm-6 text-right">نمایش 1 تا 12 از 15 (مجموع 2 صفحه)</div>--%>
                    <div class="col-sm-6 text-right">نمایش 1 صفحه</div>
                </div>
            </div>
            <!--Middle Part End -->
        </div>
    </div>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp" %>