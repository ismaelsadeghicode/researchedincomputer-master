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
                    itemprop="title">کنفرانس</span></a></li>
            <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="product.html" itemprop="url"><span
                    itemprop="title">${conferanc.conferancName}</span></a></li>
        </ul>
        <!-- Breadcrumb End-->
        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-9">
                <div itemscope itemtype="http://schema.org/محصولات">
                    <h1 class="title" itemprop="name">${conferanc.conferancName}</h1>
                    <div class="row product-info">
                        <div class="col-sm-6">
                            <div class="image"><img class="img-responsive" itemprop="image" id="zoom_01"
                                                    src="<c:url value="/resources/images/${conferanc.conferancId}.png"/> "
                                                    title="#" alt="#"
                                                    data-zoom-image="<c:url value="#"/> "/>
                            </div>
                             </div>
                        <div class="col-sm-6">
                            <ul class="list-unstyled description">
                                <li><b>نام کنفرانس :</b> <a href="#"><span
                                        itemprop="brand">${conferanc.conferancName}</span></a></li>
                                <li><b>شماره کنفرانس :</b> <span itemprop="mpn">${conferanc.conferancId}</span></li>
                                <li><b> عنوان کنفرانس:</b>${conferanc.title}</li>
                                <li><b> محوریت کنفرانس:</b>${conferanc.description}</li>
                                <li><h3>تاریخ های مهم:</h3></li>
                                <li><b> تاریخ ارسال:</b>${conferanc.sentData}</li>
                                <li><b> تاریخ داوری:</b>${conferanc.acceptData}</li>
                                <li><b> تاریخ ثبت نام:</b>${conferanc.costData}</li>
                                <li><b> تاریخ پذیرش:</b>${conferanc.patchData}</li>
                                <li><b> آدرس کنفرانس:</b>${conferanc.address}</li>
                                <li><b> زمینه علمی:</b>${conferanc.base}</li>
                                <li><b> شماره تماس:</b>${conferanc.phoneNumber}</li>
                                <li><b>وضعیت کنفرانس:</b> <span class="instock">${conferanc.status}</span></li>
                            </ul>
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
                    <!-- <ul class="nav nav-tabs">
                      <li class="active"><a href="#tab-description" data-toggle="tab">توضیحات</a></li>
                      <li><a href="#tab-specification" data-toggle="tab">مشخصات</a></li>
                      <li><a href="#tab-review" data-toggle="tab">بررسی (2)</a></li>
                    </ul> -->
                    <!-- <div class="tab-content">
                      <div itemprop="description" id="tab-description" class="tab-pane active">
                        <div>
                          <p><b>پردازشگر اینتل core i7</b></p>
                          <p>مک بوک جدید با پردازشگر اینتل core i7 از همیشه سریعتر ظاهر شده و آماده است که گوی سبقت را از رقبا بگیرد.</p>
                          <p><b>16 گیگابایت رم و هارد دیسک های بزرگتر</b></p>
                          <p>ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>
                          <p><b>طراحی خارق العاده و بی نظیر</b></p>
                          <p>مک بوک در واقع ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>
                          <p><b>با دوربین i-Sight درون ساخت</b></p>
                          <p>بدون نیاز به ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>
                        </div>
                      </div>
                      <div id="tab-specification" class="tab-pane">
                        <table class="table table-bordered">
                          <thead>
                            <tr>
                              <td colspan="2"><strong>حافظه</strong></td>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>تست 1</td>
                              <td>8gb</td>
                            </tr>
                          </tbody>
                          </table>
                        <table class="table table-bordered">
                        <thead>
                            <tr>
                              <td colspan="2"><strong>پردازشگر</strong></td>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>تعداد هسته</td>
                              <td>1</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                      <div id="tab-review" class="tab-pane">
                        <form class="form-horizontal">
                          <div id="review">
                            <div>
                              <table class="table table-striped table-bordered">
                                <tbody>
                                  <tr>
                                    <td style="width: 50%;"><strong><span>هاروی</span></strong></td>
                                    <td class="text-right"><span>1395/1/20</span></td>
                                  </tr>
                                  <tr>
                                    <td colspan="2"><p>ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>
                                      <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> </div></td>
                                  </tr>
                                </tbody>
                              </table>
                              <table class="table table-striped table-bordered">
                                <tbody>
                                  <tr>
                                    <td style="width: 50%;"><strong><span>اندرسون</span></strong></td>
                                    <td class="text-right"><span>1395/1/20</span></td>
                                  </tr>
                                  <tr>
                                    <td colspan="2"><p>ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>
                                      <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div></td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <div class="text-right"></div>
                          </div>
                          <h2>یک بررسی بنویسید</h2>
                          <div class="form-group required">
                            <div class="col-sm-12">
                              <label for="input-name" class="control-label">نام شما</label>
                              <input type="text" class="form-control" id="input-name" value="" name="name">
                            </div>
                          </div>
                          <div class="form-group required">
                            <div class="col-sm-12">
                              <label for="input-review" class="control-label">بررسی شما</label>
                              <textarea class="form-control" id="input-review" rows="5" name="text"></textarea>
                              <div class="help-block"><span class="text-danger">توجه :</span> HTML بازگردانی نخواهد شد!</div>
                            </div>
                          </div>
                          <div class="form-group required">
                            <div class="col-sm-12">
                              <label class="control-label">رتبه</label>
                              &nbsp;&nbsp;&nbsp; بد&nbsp;
                              <input type="radio" value="1" name="rating">
                              &nbsp;
                              <input type="radio" value="2" name="rating">
                              &nbsp;
                              <input type="radio" value="3" name="rating">
                              &nbsp;
                              <input type="radio" value="4" name="rating">
                              &nbsp;
                              <input type="radio" value="5" name="rating">
                              &nbsp;خوب</div>
                          </div>
                          <div class="buttons">
                            <div class="pull-right">
                              <button class="btn btn-primary" id="button-review" type="button">ادامه</button>
                            </div>
                          </div>
                        </form>
                      </div>
                    </div> -->
                    <!-- <h3 class="subtitle">محصولات مرتبط</h3> -->
                    <!-- <div class="owl-carousel related_pro">
                      <div class="product-thumb">
                        <div class="image"><a href="product.html"><img src="image/product/samsung_tab_1-200x200.jpg" alt="تبلت ایسر" title="تبلت ایسر" class="img-responsive" /></a></div>
                        <div class="caption">
                          <h4><a href="product.html">تبلت ایسر</a></h4>
                          <p class="price"> <span class="price-new">98000 تومان</span> <span class="price-old">240000 تومان</span> <span class="saving">-5%</span> </p>
                          <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                        </div>
                        <div class="button-group">
                          <button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>
                          <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی" onClick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="افزودن به مقایسه" onClick=""><i class="fa fa-exchange"></i></button>
                          </div>
                        </div>
                      </div>
                      <div class="product-thumb">
                        <div class="image"><a href="product.html"><img src="image/product/macbook_pro_1-200x200.jpg" alt=" کتاب آموزش باغبانی " title=" کتاب آموزش باغبانی " class="img-responsive" /></a></div>
                        <div class="caption">
                          <h4><a href="product.html"> کتاب آموزش باغبانی </a></h4>
                          <p class="price"> <span class="price-new">98000 تومان</span> <span class="price-old">120000 تومان</span> <span class="saving">-26%</span> </p>
                        </div>
                        <div class="button-group">
                          <button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>
                          <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی" onClick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="افزودن به مقایسه" onClick=""><i class="fa fa-exchange"></i></button>
                          </div>
                        </div>
                      </div>
                      <div class="product-thumb">
                        <div class="image"><a href="product.html"><img src="image/product/macbook_1-200x200.jpg" alt="آیدیا پد یوگا" title="آیدیا پد یوگا" class="img-responsive" /></a></div>
                        <div class="caption">
                          <h4><a href="product.html">آیدیا پد یوگا</a></h4>
                          <p class="price"> 900000 تومان </p>
                          <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                        </div>
                        <div class="button-group">
                          <button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>
                          <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی" onClick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="افزودن به مقایسه" onClick=""><i class="fa fa-exchange"></i></button>
                          </div>
                        </div>
                      </div>
                      <div class="product-thumb">
                        <div class="image"><a href="product.html"><img src="image/product/ipod_shuffle_1-200x200.jpg" alt="لپ تاپ hp پاویلیون" title="لپ تاپ hp پاویلیون" class="img-responsive" /></a></div>
                        <div class="caption">
                          <h4><a href="product.html">لپ تاپ hp پاویلیون</a></h4>
                          <p class="price"> 122000 تومان </p>
                        </div>
                        <div class="button-group">
                          <button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>
                          <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی" onClick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="افزودن به مقایسه" onClick=""><i class="fa fa-exchange"></i></button>
                          </div>
                        </div>
                      </div>
                      <div class="product-thumb">
                        <div class="image"><a href="product.html"><img src="image/product/ipod_touch_1-200x200.jpg" alt="سامسونگ گلکسی s7" title="سامسونگ گلکسی s7" class="img-responsive" /></a></div>
                        <div class="caption">
                          <h4><a href="product.html">سامسونگ گلکسی s7</a></h4>
                          <p class="price"> <span class="price-new">62000 تومان</span> <span class="price-old">122000 تومان</span> <span class="saving">-50%</span> </p>
                        </div>
                        <div class="button-group">
                          <button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>
                          <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی" onClick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="افزودن به مقایسه" onClick=""><i class="fa fa-exchange"></i></button>
                          </div>
                        </div>
                      </div>
                      <div class="product-thumb">
                        <div class="image"><a href="product.html"><img src="image/product/ipod_shuffle_1-200x200.jpg" alt="لپ تاپ hp پاویلیون" title="لپ تاپ hp پاویلیون" class="img-responsive" /></a></div>
                        <div class="caption">
                          <h4><a href="product.html">لپ تاپ hp پاویلیون</a></h4>
                          <p class="price"> 122000 تومان </p>
                        </div>
                        <div class="button-group">
                          <button class="btn-primary" type="button" onClick=""><span>افزودن به سبد</span></button>
                          <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="افزودن به علاقه مندی" onClick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="افزودن به مقایسه" onClick=""><i class="fa fa-exchange"></i></button>
                          </div>
                        </div>
                      </div>
                    </div> -->
                </div>
            </div>
            <!--Middle Part End -->
            <!--Right Part Start -->


            <aside id="column-right" class="col-sm-3 hidden-xs">
                <h3>پیشنهاد ما </h3>
                <%--<div class="side-item">--%>
                    <%--<div class="product-thumb clearfix">--%>


                        <%--<div class="panel-body">--%>
                            <%--<div class="table-responsive">--%>
                                <table class="table">
                                    <c:forEach items="${conferancs}" var="conferanc">
                                        <tbody>
                                        <tr>
                                            <td>
                                                <div class="image"><img src=<c:url value="/resources/images/${conferanc.conferancId}.png"/> ""  class="img-responsive" /></div>
                                            </td>
                                            <td>${conferanc.title}</td>
                                            <td><a href="<spring:url value="/conferancList/viewConferanc/${conferanc.conferancId}"/>">
                                                <span class="btn btn-default btn-line"> مشاهده </span></a></td>
                                        </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>


                                <%--<table class="table table-bordered table-hover">--%>
                                <%--<tbody>--%>
                                <%--<c:forEach items="${conferancs}" var="conferanc">--%>
                                <%--<tr>--%>
                                <%--<td><img src="#"/></td>--%>

                                <%--<td>${conferanc.title}</td>--%>
                                <%--<td>${conferanc.status}</td>--%>

                                <%--</tr>--%>
                                <%--</tbody>--%>
                                <%--</c:forEach>--%>
                                <%--</table>--%>
                            </div>
                        </div>


                        <div class="list-group">
                            <!-- <h3 class="subtitle">محتوای سفارشی</h3> -->
                            <!-- <p>این یک بلاک محتواست. هر نوع محتوایی شامل html، نوشته یا تصویر را میتوانید در آن قرار دهید. </p>
                            <p> در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد. </p>
                            <p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.</p> -->
                        </div>
                        <!-- <h3 class="subtitle">ویژه</h3> -->
                        <div class="side-item">
                            <div class="product-thumb clearfix">
                                <!-- <div class="image"><a href="product.html"><img src="image/product/macbook_pro_1-50x50.jpg" alt=" کتاب آموزش باغبانی " title=" کتاب آموزش باغبانی " class="img-responsive" /></a></div> -->
                                <!-- <div class="caption">
                                  <h4><a href="product.html">کتاب آموزش باغبانی</a></h4>
                                  <p class="price"> <span class="price-new">98000 تومان</span> <span class="price-old">120000 تومان</span> <span class="saving">-26%</span> </p>
                                </div> -->
                            </div>
                            <!-- <div class="product-thumb clearfix">
                              <div class="image"><a href="product.html"><img src="image/product/samsung_tab_1-50x50.jpg" alt="تبلت ایسر" title="تبلت ایسر" class="img-responsive" /></a></div>
                              <div class="caption">
                                <h4><a href="product.html">تبلت ایسر</a></h4>
                                <p class="price"> <span class="price-new">98000 تومان</span> <span class="price-old">240000 تومان</span> <span class="saving">-5%</span> </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                              </div>
                            </div> -->
                            <!-- <div class="product-thumb clearfix">
                              <div class="image"><a href="product.html"><img src="image/product/apple_cinema_30-50x50.jpg" alt="تی شرت کتان مردانه" title="تی شرت کتان مردانه" class="img-responsive" /></a></div>
                              <div class="caption">
                                <h4><a href="http://demo.harnishdesign.net/opencart/marketshop/v1/index.php?route=product/product&amp;product_id=42">تی شرت کتان مردانه</a></h4>
                                <p class="price"> <span class="price-new">110000 تومان</span> <span class="price-old">122000 تومان</span> <span class="saving">-10%</span> </p>
                              </div>
                            </div> -->
                            <!-- <div class="product-thumb clearfix">
                              <div class="image"><a href="product.html"><img src="image/product/nikon_d300_1-50x50.jpg" alt="دوربین دیجیتال حرفه ای" title="دوربین دیجیتال حرفه ای" class="img-responsive" /></a></div>
                              <div class="caption">
                                <h4><a href="product.html">دوربین دیجیتال حرفه ای</a></h4>
                                <p class="price"> <span class="price-new">92000 تومان</span> <span class="price-old">98000 تومان</span> <span class="saving">-6%</span> </p>
                              </div>
                            </div> -->
                            <!-- <div class="product-thumb clearfix">
                              <div class="image"><a href="product.html"><img src="image/product/nikon_d300_5-50x50.jpg" alt="محصولات مراقبت از مو" title="محصولات مراقبت از مو" class="img-responsive" /></a></div>
                              <div class="caption">
                                <h4><a href="product.html">محصولات مراقبت از مو</a></h4>
                                <p class="price"> <span class="price-new">66000 تومان</span> <span class="price-old">90000 تومان</span> <span class="saving">-27%</span> </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                              </div>
                            </div> -->
                            <!-- <div class="product-thumb clearfix">
                              <div class="image"><a href="product.html"><img src="image/product/macbook_air_1-50x50.jpg" alt="لپ تاپ ایلین ور" title="لپ تاپ ایلین ور" class="img-responsive" /></a></div>
                              <div class="caption">
                                <h4><a href="product.html">لپ تاپ ایلین ور</a></h4>
                                <p class="price"> <span class="price-new">10 میلیون تومان</span> <span class="price-old">12 میلیون تومان</span> <span class="saving">-5%</span> </p>
                              </div>
                            </div> -->
                        </div>
            </aside>
            <!--Right Part End -->
        </div>
    </div>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp" %>