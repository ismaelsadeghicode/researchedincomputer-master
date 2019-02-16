<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div id="container">
    <div class="container">
        <!-- Breadcrumb Start-->
        <ul class="breadcrumb">
            <li><a href="index.html"><i class="fa fa-home"></i></a></li>
            <li><a href="login.html">حساب کاربری</a></li>
            <li><a href="register.html">ثبت نام</a></li>
        </ul>
        <!-- Breadcrumb End-->
        <div class="row">
            <!--Middle Part Start-->
            <div class="col-sm-9" id="content">
                <h1 class="title">ثبت حساب کاربری</h1>
                <p>اگر قبلا حساب کاربریتان را ایجاد کرد اید جهت ورود به <a href="login.html">صفحه لاگین</a> مراجعه کنید.</p>




                <form:form action="${pageContext.request.contextPath}/register"
                           method="post" commandName="customer">

                    <fieldset id="account">
                        <legend>اطلاعات شخصی شما</legend>
                        <div style="display: none;" class="form-group required">
                            <label class="col-sm-2 control-label">گروه مشتری</label>
                            <div class="col-sm-10">
                                <div class="radio">
                                    <label>
                                        <input type="radio" checked="checked" value="1" name="customer_group_id">
                                        پیشفرض</label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group required">
                            <label for="input-firstname" class="col-sm-2 control-label">نام</label>
                            <div class="col-sm-10">
                                <form:input path="customerName" type="text" class="form-control" id="input-firstname" placeholder="نام" value="" name="firstname"/>
                            </div>
                        </div>

                        <div class="form-group required">
                            <label for="input-email" class="col-sm-2 control-label">آدرس ایمیل</label>
                            <div class="col-sm-10">
                                <form:input path="customerEmail" type="email" class="form-control" id="input-email" placeholder="آدرس ایمیل" value="" name="email"/>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label for="input-telephone" class="col-sm-2 control-label">شماره تلفن</label>
                            <div class="col-sm-10">
                                <form:input path="customerPhone" type="tel" class="form-control" id="input-telephone" placeholder="شماره تلفن" value="" name="telephone"/>
                            </div>
                        </div>
                    </fieldset>


                    <legend>رمز عبور و نام کاربری</legend>
                    <div class="form-group required">
                        <label for="input-password" class="col-sm-2 control-label">نام کاربری</label>
                        <div class="col-sm-10">
                            <form:input path="username" type="text" class="form-control" id="input-password" placeholder="نام کاربری" value="" name="password"/>
                        </div>
                    </div>
                    <div class="form-group required">
                        <label for="input-confirm" class="col-sm-2 control-label"> رمز عبور</label>
                        <div class="col-sm-10">
                            <form:input path="password" type="password" class="form-control" id="input-confirm" placeholder="تکرار رمز عبور" value="" name="confirm"/>
                        </div>
                    </div>
                    </br>
                    </fieldset>
                    <%--<fieldset>--%>
                        <%--<legend>خبرنامه</legend>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-2 control-label">اشتراک</label>--%>
                            <%--<div class="col-sm-10">--%>
                                <%--<label class="radio-inline">--%>
                                    <%--<input type="radio" value="1" name="newsletter">--%>
                                    <%--بله</label>--%>
                                <%--<label class="radio-inline">--%>
                                    <%--<input type="radio" checked="checked" value="0" name="newsletter">--%>
                                    <%--نه</label>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</fieldset>--%>
                    </br>

                    <div class="buttons">
                        <div class="pull-right">
                            <input type="checkbox" value="1" name="agree">
                            &nbsp; <a class="agree" href="#"><b></b> </a> &nbsp;
                            &nbsp;من <a class="agree" href="#"><b>سیاست حریم خصوصی</b> را خوانده ام و با آن موافق هستم</a> &nbsp;
                            <input type="submit" class="btn btn-primary" value="ادامه">
                        </div>
                    </div>
                </form:form>

            </div>
            <!--Middle Part End -->
            <!--Right Part Start -->
            <aside id="column-right" class="col-sm-3 hidden-xs">
                <!-- <h3 class="subtitle">حساب کاربری</h3> -->
                <div class="list-group">

                </div>
            </aside>
            <!--Right Part End -->
        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
