<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="container">

  <!-- Feature Box End-->
  <div class="container">
    <div class="row">
      <!-- Left Part Start-->
      <aside id="column-left" class="col-sm-3 hidden-xs">
        <!-- <h3 class="subtitle">دسته ها</h3> -->
        <div class="box-category">

          <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> <a href="#"><img title="sample-banner1" height="170" width="270" alt="sample-banner1" src="<c:url value="/resources/image/slider/sp-small-banner-360x185.jpg"/>" /></a></div></br>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> <a href="#"><img title="sample-banner" height="170" width="270" alt="sample-banner" src="<c:url value="/resources/image/slider/sp-small-banner1-360x185.jpg"/>" /></a></div>
          </div>
          </br>

        </div>

          <h3 class="subtitle">پیشنهاد ما</h3>
          <c:forEach items="${conferancs}" var="conferanc">
          <div class="side-item">
          <div class="product-thumb clearfix">
          <div class="image"><a href=""><img src="<c:url value="/resources/images/${conferanc.conferancId}.png"/> " alt=" کتاب آموزش باغبانی " title=" کتاب آموزش باغبانی " class="img-responsive" /></a></div>
          <div class="caption">
          <h4><a href="">${conferanc.title}</a></h4>
          <p class="price"> <span class="price-new"></span> <span class="price-old"></span> <span class="saving">${conferanc.status}</span> </p>
          </div>
          </div>
          </c:forEach>

            <div class="list-group">
            <h3 class="subtitle">محورهای سایت </h3>
            <p>این سایت برای پژوهشگران رشته کامپیوتر در گرایش های مختلف طراحی شده است.  </p>
            <p>پژوهشگران رشته کامپیوتر می توانند با مراجعه به این سایت منابع موضوع خود را در اختیار بگیرند و همانطور که در روند طرح خود فعالیت  می کنند
            با همکاری با ما هزینه های طرح و پروژه خود را تامین نمایند. </p>
            </div>
            <div class="banner owl-carousel">
            <div class="item"> <a href="#"><img src="<c:url value="/resources/image/image/Maghalenevici.jpg"/>" alt="small banner" class="img-responsive" /></a> </div>
            <div class="item"> <a href="#"><img src="<c:url value="/resources/image/image/Presentation1.jpg"/>" alt="small banner" class="img-responsive" /></a> </div>
            <div class="item"> <a href="#"><img src="<c:url value="/resources/image/image/isi.jpg"/>" alt="small banner1" class="img-responsive" /></a> </div>
            </div>

            </aside>

      <!-- Left Part End-->
      <!--Middle Part Start-->
      <div id="content" class="col-sm-9">
      <!-- Slideshow Start-->
      <div class="slideshow single-slider owl-carousel">
      <div class="item"> <a href="#"><img class="img-responsive" src="<c:url value="/resources/image/slider/banner-1.jpg"/>" alt="banner 1"  /></a> </div>
      <div class="item"> <a href="#"><img class="img-responsive" src="<c:url value="/resources/image/slider/banner-2.jpg"/>" alt="banner 2" /></a> </div>
      <div class="item"> <a href="#"><img class="img-responsive" src="<c:url value="/resources/image/slider/banner-3.jpg"/>" alt="banner 3"  /></a> </div>
      </div>
      </br>
        <!-- Slideshow End-->
        <!-- Featured محصولات Start-->
        <h3 class="subtitle">ویژه</h3>

        <div class="owl-carousel product_carousel">
        <c:forEach items="${conferancs}" var="conferanc">
        <div class="product-thumb clearfix">

        <div class="image">
        <a href="#"><img width="50" height="50" src="<c:url value="/resources/images/${conferanc.conferancId}.png"/> "   class="img-responsive" />
        </a>
        </div>
        <div class="caption">
        <h4><a href="#">${conferanc.title}</a></h4>
        <!-- <p class="price"><span class="price-new">110000 تومان</span><span class="price-old">122000 تومان</span><span class="saving">جدید</span></p> -->
        <p class="price"><span class="saving">${conferanc.status}</span></p>
        </div>
        </br>
        <div class="button-group">
        <button class="btn-primary" type="button" onClick="cart.add('42');"><span>ادامه مطالب </span></button>
        <!-- <div class="add-to-links">
        <button type="button" data-toggle="tooltip" title="Add to Wish List" onClick=""><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="مقایسه this محصولات" onClick=""><i class="fa fa-exchange"></i></button>
        </div> -->
        </div>
        </div>
        </c:forEach>


        <div class="product-thumb clearfix">

        </div>
        <div class="product-thumb clearfix">

        </div>
        <div class="product-thumb clearfix">

        </div>
        <div class="product-thumb clearfix">

        </div>
        <div class="product-thumb clearfix">

        </div>
        </div>

        <!-- دسته ها محصولات Slider Start-->
        <div class="category-module" id="latest_category">

        <!-- Brand Logo Carousel End -->
        </div>
        <!--Middle Part End-->
        </div>
        </div>
        </div>





<%--<div id="container">--%>

    <%--<div class="container">--%>
      <%--<div class="row">--%>
        <%--<!-- Left Part Start-->--%>
        <%--<aside id="column-left" class="col-sm-3 hidden-xs">--%>
          <%--<!-- <h3 class="subtitle">دسته ها</h3> -->--%>
          <%--<div class="box-category">--%>

            <%--<div class="row">--%>
              <%--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> <a href="#"><img title="sample-banner1" height="170" width="270" alt="sample-banner1" src="<c:url value="/resources/image/slider/sp-small-banner-360x185.jpg"/>" /></a></div></br>--%>
              <%--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> <a href="#"><img title="sample-banner" height="170" width="270" alt="sample-banner" src="<c:url value="/resources/image/slider/sp-small-banner1-360x185.jpg"/>" /></a></div>--%>
            <%--</div>--%>
            <%--</br>--%>

          <%--</div>--%>

          <%--<h3 class="subtitle">پیشنهاد ما</h3>--%>
          <%--<c:forEach items="${conferancs}" var="conferanc">--%>
          <%--<div class="side-item">--%>
            <%--<div class="product-thumb clearfix">--%>
              <%--<div class="image"><a href=""><img src="<c:url value="/resources/images/${conferanc.conferancId}.png"/> " alt=" کتاب آموزش باغبانی " title=" کتاب آموزش باغبانی " class="img-responsive" /></a></div>--%>
              <%--<div class="caption">--%>
                <%--<h4><a href="">${conferanc.title}</a></h4>--%>
                <%--<p class="price"> <span class="price-new"></span> <span class="price-old"></span> <span class="saving">${conferanc.status}</span> </p>--%>
              <%--</div>--%>
            <%--</div>--%>
            <%--</c:forEach>--%>
            <%--</div>--%>
          <%--<div class="list-group">--%>
            <%--<h3 class="subtitle">محورهای سایت </h3>--%>
            <%--<p>این سایت برای پژوهشگران رشته کامپیوتر در گرایش های مختلف طراحی شده است.  </p>--%>
            <%--<p>پژوهشگران رشته کامپیوتر می توانند با مراجعه به این سایت منابع موضوع خود را در اختیار بگیرند و همانطور که در روند طرح خود فعالیت  می کنند--%>
              <%--با همکاری با ما هزینه های طرح و پروژه خود را تامین نمایند. </p>--%>
          <%--</div>--%>
          <%--<div class="banner owl-carousel">--%>
            <%--<div class="item"> <a href="#"><img src="<c:url value="/resources/image/image/Maghalenevici.jpg"/>" alt="small banner" class="img-responsive" /></a> </div>--%>
            <%--<div class="item"> <a href="#"><img src="<c:url value="/resources/image/image/Presentation1.jpg"/>" alt="small banner" class="img-responsive" /></a> </div>--%>
            <%--<div class="item"> <a href="#"><img src="<c:url value="/resources/image/image/isi.jpg"/>" alt="small banner1" class="img-responsive" /></a> </div>--%>
          <%--</div>--%>

        <%--</aside>--%>
        <%--<!-- Left Part End-->--%>
        <%--<!--Middle Part Start-->--%>
        <%--<div id="content" class="col-sm-9">--%>
          <%--<!-- Slideshow Start-->--%>
          <%--<div class="slideshow single-slider owl-carousel">--%>
            <%--<div class="item"> <a href="#"><img class="img-responsive" src="<c:url value="/resources/image/slider/banner-1.jpg"/>" alt="banner 1"  /></a> </div>--%>
            <%--<div class="item"> <a href="#"><img class="img-responsive" src="<c:url value="/resources/image/slider/banner-2.jpg"/>" alt="banner 2" /></a> </div>--%>
            <%--<div class="item"> <a href="#"><img class="img-responsive" src="<c:url value="/resources/image/slider/banner-3.jpg"/>" alt="banner 3"  /></a> </div>--%>
          <%--</div>--%>
          <%--</br>--%>
          <%--<!-- Slideshow End-->--%>
          <%--<!-- Featured محصولات Start-->--%>
          <%--<h3 class="subtitle">ویژه</h3>--%>

            <%--<div class="owl-carousel product_carousel">--%>
              <%--<c:forEach items="${conferancs}" var="conferanc">--%>
              <%--<div class="product-thumb clearfix">--%>

                <%--<div class="image">--%>
                  <%--<a href="#"><img width="50" height="50" src="<c:url value="/resources/images/${conferanc.conferancId}.png"/> "   class="img-responsive" />--%>
                  <%--</a>--%>
                <%--</div>--%>
                <%--<div class="caption">--%>
                  <%--<h4><a href="#">${conferanc.title}</a></h4>--%>
                  <%--<!-- <p class="price"><span class="price-new">110000 تومان</span><span class="price-old">122000 تومان</span><span class="saving">جدید</span></p> -->--%>
                  <%--<p class="price"><span class="saving">${conferanc.status}</span></p>--%>
                <%--</div>--%>
                <%--</br>--%>
                <%--<div class="button-group">--%>
                  <%--<button class="btn-primary" type="button" onClick="cart.add('42');"><span>ادامه مطالب </span></button>--%>
                  <%--<!-- <div class="add-to-links">--%>
                   <%--<button type="button" data-toggle="tooltip" title="Add to Wish List" onClick=""><i class="fa fa-heart"></i></button>--%>
                   <%--<button type="button" data-toggle="tooltip" title="مقایسه this محصولات" onClick=""><i class="fa fa-exchange"></i></button>--%>
                 <%--</div> -->--%>
                <%--</div>--%>
              <%--</div>--%>
              <%--</c:forEach>--%>


            <%--<div class="product-thumb clearfix">--%>

            <%--</div>--%>
            <%--<div class="product-thumb clearfix">--%>

            <%--</div>--%>
            <%--<div class="product-thumb clearfix">--%>

            <%--</div>--%>
            <%--<div class="product-thumb clearfix">--%>

            <%--</div>--%>
            <%--<div class="product-thumb clearfix">--%>

            <%--</div>--%>
          <%--</div>--%>

          <%--<!-- دسته ها محصولات Slider Start-->--%>
          <%--<div class="category-module" id="latest_category">--%>

          <%--<!-- Brand Logo Carousel End -->--%>
        <%--</div>--%>
        <%--<!--Middle Part End-->--%>
      <%--</div>--%>
    <%--</div>--%>
  <%--</div>--%>

<%@include file="/WEB-INF/views/template/footer.jsp"%>