<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="container">
    <div class="container">
        <div class="row">
                <!--Middle Part Start-->
                <div id="content" class="col-sm-12">
                     <%--<h1 class="title-404 text-center"style="color:purple">404</h1>--%>
                    <h1 class="title-404 text-center"style="color:purple"> 404 </h1>
                        <%--<img src="<c:url value="/resources/image/image/404.jpg"/> " />--%>
                    <p class="text-center lead">متاسفیم!<br>
                        صفحه ی مورد نظرتان را پیدا نکردیم! </p>
                    <div class="buttons text-center"> <a class="btn btn-primary btn-lg" href="/">ادامه</a> </div>
                </div>
                <!--Middle Part End -->
            </div>
        </div>
    </div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>