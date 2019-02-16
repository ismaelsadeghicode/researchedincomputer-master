<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/adminTemplate/header.jsp"%>


<div class="row">
    <div class="col-lg-12">
        <h1> لیست کاربران </h1>
    </div>
</div>

<hr />

<div class="row">
    <!--Middle Part Start-->
    <div id="content" class="col-sm-12">

        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td class="text-center">Id</td>
                                <td class="text-center">تصویر</td>
                                <td class="text-center">شماره مشتری</td>
                                <td class="text-center">نام</td>
                                <td class="text-center">فامیل</td>
                                <td class="text-center">ایمیل</td>
                                <td class="text-center">نام کاربری</td>
                                <td class="text-center">کلمه عبور</td>
                                <td class="text-center">عملیات</td>
                            </tr>
                        </thead>
                        <c:forEach items="${userss}" var="userss">
                        <tbody>
                        <tr>
                            <c:if test="${userss.customerId != 0}">
                            <td class="text-center">${userss.usersId}</td>
                            <td class="text-center">
                                <a href="#"><img src="image/product/samsung_tab_1-50x50.jpg" alt="تصویر کاربر" title="تصویر کاربر"/></a>
                            </td>
                            <td class="text-center">  ${userss.customerId}  </td>
                            <td class="text-center">${userss.name}</td>
                            <td class="text-center">${userss.family}</td>
                            <td class="text-center">${userss.customerEmail}</td>
                            <td class="text-center">${userss.username}</td>
                            <td class="text-center">${userss.password}</td>
                                <%--<button class="btn btn-primary" data-toggle="tooltip" onClick="cart.add('48');"--%>
                                        <%--type="button" data-original-title="مشاهده"><i class="fa fa-street-view"></i>--%>
                                <%--</button>--%>


                                <td><a href="<spring:url value="/admin/usersInventory/deleteUsers/${userss.usersId}"/>"
                                ><span class="btn btn-danger btn-line">حذف </span></a></td>

                            <%--<a href="<spring:url value="/admin/papier/deletePapier/${papiers.papierId}"/>"--%>
                            <%--><span class="btn btn-danger btn-line">حذف </span></a>--%>

                                <%--<a class="btn btn-success" data-toggle="tooltip"--%>
                                   <%--href="http://localhost/2.2.0.0-compiled/index.php?route=account/wishlist&amp;remove=48"--%>
                                   <%--data-original-title="ویرایش"><i class="fa fa-refresh"></i></a>--%>

                                    <%--</c:if>--%>
                            </c:if>
                        </tr>
                        </tbody>
                        </c:forEach>
            </table>
        </div>
    </div>
    <!--Middle Part End -->
</div>

<hr />

<%@include file="/WEB-INF/views/adminTemplate/footer.jsp"%>
