<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

</br>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>اطلاعات شما با موفقیت ثبت شد!</h1>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/papier/papierList" />" class="btn btn-default">مقاله</a></p>
        </section>
    </div>
</div>

</br>
</br>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
