<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="container">
    <div class="container">
        <!-- Breadcrumb Start-->
        <ul class="breadcrumb">
            <li><a href="index.html"><i class="fa fa-home"></i></a></li>
            <li><a href="login.html">حساب کاربری</a></li>
            <li><a href="login.html">ورود</a></li>
        </ul>
        <!-- Breadcrumb End-->
        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-9">
                <h1 class="title">حساب کاربری ورود</h1>
                <div class="row">
                    <div class="col-sm-6">
                        <h2>  </h2>
                        <p><strong></strong></p>
                        <p> </p>
                        <a ></a></div>


                    <div class="col-sm-6">
                        <%--<h2 class="subtitle">کاربر عضو </h2>--%>
                        <%--<p><strong> نام کاربری و رمز عبور را وارد نمائید. </strong></p>--%>


                        <c:if test="${not empty msg}">
                            <div class="msg"><strong>${msg}</strong></div>
                        </c:if>
                        <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">

                            <c:if test="${not empty error}">
                            <div class="error" style="color: #ff0000;"><strong>${error}</strong></div>
                            </c:if>

                            <div class="form-group">
                                <label class="control-label" for="username"> نام کاربری</label>
                                <input id="username" type="text" name="username" value="" placeholder="آدرس ایمیل"
                                        class="form-control"/>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="password">رمز عبور</label>
                                <input id="password" type="password" name="password" value="" placeholder="رمز عبور"
                                     class="form-control"/>
                                <br/>
                                <%--فراموشی رمز عبور--%>
                                <%--<a href="#">فراموشی رمز عبور</a>--%>
                            </div>
                            <input type="submit" value="ورود" class="btn btn-primary"/>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                             <a href="/register" class="btn btn-primary">ثبت نام</a> </div>

                    </form>

                    </div>

                </div>
            </div>
            <!--Middle Part End -->
            <!--Right Part Start -->
            <aside id="column-right" class="col-sm-3 hidden-xs">
                <!-- <h3 class="subtitle">حساب کاربری</h3> -->
                <!-- <div class="list-group">
                  <ul class="list-item">
                    <li><a href="login.html">ورود</a></li>
                    <li><a href="register.html">ثبت نام</a></li>
                    <li><a href="#">فراموشی رمز عبور</a></li>
                    <li><a href="#">حساب کاربری</a></li>
                    <li><a href="#">لیست آدرس ها</a></li>
                    <li><a href="wishlist.html">لیست علاقه مندی</a></li>
                    <li><a href="#">تاریخچه سفارشات</a></li>
                    <li><a href="#">دانلود ها</a></li>
                    <li><a href="#">امتیازات خرید</a></li>
                    <li><a href="#">بازگشت</a></li>
                    <li><a href="#">تراکنش ها</a></li>
                    <li><a href="#">خبرنامه</a></li>
                    <li><a href="#">پرداخت های تکرار شونده</a></li>
                  </ul>
                </div> -->
            </aside>
            <!--Right Part End -->
        </div>
    </div>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp" %>
