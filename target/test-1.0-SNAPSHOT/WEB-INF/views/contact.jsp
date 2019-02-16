<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <div id="container">
        <div class="container">
            <!-- Breadcrumb Start-->
            <ul class="breadcrumb">
                <li><a href="index.html"><i class="fa fa-home"></i></a></li>
                <li><a href="contact-us.html">تماس با ما</a></li>
            </ul>
            <!-- Breadcrumb End-->
            <div class="row">
                <!--Middle Part Start-->
                <div id="content" class="col-sm-9">
                    <h1 class="title">تماس با ما</h1>
                    <h3 class="subtitle">محل ما</h3>
                    <div class="row">
                        <div class="col-sm-3"><img src="<c:url value="/resources/image/image/images.png"/> " alt="research" title="research" class="img-thumbnail" width="100" height="100"/></div>
                        <div class="col-sm-3"><strong>پژوهش در کامپیوتر</strong><br />
                            <address>
                                تهران، <br />
                                آزادی، <br />
                                خیابان جیحون، <br />
                                پلاک 11</address>
                        </div>
                        <div class="col-sm-3"><strong>شماره تلفن</strong><br>
                            09016506543<br />
                            <br />
                            <strong> </strong><br>
                        </div>
                        <div class="col-sm-3"> <strong>ساعات کار</strong><br />
                            8 صبح الی 8شب<br />
                            <br />
                            <strong> </strong><br />
                        </div>
                    </div>
                    <form class="form-horizontal">
                        <fieldset>
                            <h3 class="subtitle">با ما ارتباط برقرار کنید</h3>
                            <div class="form-group required">
                                <label class="col-md-2 col-sm-3 control-label" for="input-name">نام شما</label>
                                <div class="col-md-10 col-sm-9">
                                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-md-2 col-sm-3 control-label" for="input-email">آدرس ایمیل</label>
                                <div class="col-md-10 col-sm-9">
                                    <input type="text" name="email" value="" id="input-email" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-md-2 col-sm-3 control-label" for="input-enquiry">پرسش</label>
                                <div class="col-md-10 col-sm-9">
                                    <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"></textarea>
                                </div>
                            </div>
                        </fieldset>
                        <div class="buttons">
                            <div class="pull-right">
                                <input class="btn btn-primary" type="submit" value="ارسال" />
                            </div>
                        </div>
                    </form>
                </div>
                <aside id="column-right" class="col-sm-3 hidden-xs">
                    <div class="list-group">
                        <!-- <h2 class="subtitle">محتوای سفارشی</h2> -->
                        <!-- <p>این یک بلاک محتواست. هر نوع محتوایی شامل html، نوشته یا تصویر را میتوانید در آن قرار دهید. </p>
                        <p> در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد. </p>
                        <p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.</p> -->
                    </div>
                    <div class="banner owl-carousel">
                        <!-- <div class="item"> <a href="#"><img src="image/banner/small-banner1-265x350.jpg" alt="small banner" class="img-responsive" /></a> </div>
                        <div class="item"> <a href="#"><img src="image/banner/small-banner-265x350.jpg" alt="small banner1" class="img-responsive" /></a> </div> -->
                    </div>
                </aside>
                <!--Middle Part End -->
            </div>
        </div>
    </div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>