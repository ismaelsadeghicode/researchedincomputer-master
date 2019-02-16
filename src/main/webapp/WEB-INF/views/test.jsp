<%--<%@include file="/WEB-INF/views/template/header.jsp"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>ورود</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    <!-- GLOBAL STYLES -->
    <!-- PAGE LEVEL STYLES -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/bootstrap/css/bootstrap.rtl.css/> "/> " />
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/login.css/> "/> " />
    <link rel="stylesheet" href="<c:url value="/resources/assets/plugins/magic/magic.css/> "/> " />
    <!-- END PAGE LEVEL STYLES -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body >

<!-- PAGE CONTENT -->
<div class="container">
    <div class="text-center">
        <img src="<c:url value="/resources/image/logo.png"/> "  alt=" Logo" height="80" />
    </div>
    <div class="tab-content">
        <div id="login" class="tab-pane active">
            <form action="index.html" class="form-signin">
                <p class="text-muted text-center btn-block btn btn-primary btn-rect">
                    نام کاربری و رمز عبور خود را وارد نمایید
                </p>
                <input type="text" placeholder="نام کاربری" class="form-control" />
                <input type="password" placeholder="رمز عبور" class="form-control" />
                <button class="btn text-muted text-center btn-danger" type="submit">ورورد</button>
            </form>
        </div>
        <div id="forgot" class="tab-pane">
            <form action="index.html" class="form-signin">
                <p class="text-muted text-center btn-block btn btn-primary btn-rect">ایمیل خود را وارد نمایید.</p>
                <input type="email"  required="required" placeholder="ایمیل شما ..."  class="form-control" />
                <br />
                <button class="btn text-muted text-center btn-success" type="submit">بازیابی رمز عبور</button>
            </form>
        </div>
        <div id="signup" class="tab-pane">
            <form action="index.html" class="form-signin">
                <p class="text-muted text-center btn-block btn btn-primary btn-rect">لطفا برای عضویت فرم زیر را پر کنید</p>
                <input type="text" placeholder="نام" class="form-control" />
                <input type="text" placeholder="نام خانوادگی" class="form-control" />
                <input type="text" placeholder="نام کاربری" class="form-control" />
                <input type="email" placeholder="ایمیل شما" class="form-control" />
                <input type="password" placeholder="رمز عبور" class="form-control" />
                <input type="password" placeholder="تکرار رمز عبور" class="form-control" />
                <button class="btn text-muted text-center btn-success" type="submit">ثبت نام</button>
            </form>
        </div>
    </div>
    <div class="text-center">
        <ul class="list-inline">
            <li><a class="text-muted" href="#login" data-toggle="tab">ورود</a></li>
            <li><a class="text-muted" href="#forgot" data-toggle="tab">فراموشی رمز عبور</a></li>
            <li><a class="text-muted" href="#signup" data-toggle="tab">عضویت</a></li>
        </ul>
    </div>


</div>

<!--END PAGE CONTENT -->

<!-- PAGE LEVEL SCRIPTS -->
<script src="<c:url value="/resources/assets/plugins/jquery-2.0.3.min.js"/> "></script>
<script src="<c:url value="/resources/assets/plugins/bootstrap/js/bootstrap.rtl.js"/> "></script>
<script src="<c:url value="/resources/assets/js/login.js"/> "></script>
<!--END PAGE LEVEL SCRIPTS -->
<%--<%@include file="/WEB-INF/views/template/footer.jsp"%>--%>
</body>
</html>