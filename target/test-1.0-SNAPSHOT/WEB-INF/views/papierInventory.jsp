<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/adminTemplate/header.jsp"%>


<div class="row">
    <div class="col-lg-12">
        <h1> مقاله </h1>
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
                    <td class="text-center"> تصویر مجله</td>
                    <td class="text-center">نام مجله</td>
                    <td class="text-center">عنوان مجله</td>
                    <td class="text-center">نویسنده اصلی</td>
                    <td class="text-center">وضعیت مجله</td>
                    <td class="text-center">تاریخ مجله</td>
                    <td class="text-center">ناشر</td>
                    <td class="text-center">تعدادصفحات</td>
                     <td>مشاهده</td>
                    <td>حذف</td>
                    <td>ویرایش</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${papiers}" var="papiers">
                <tr>
                    <td>
                        <img src="<c:url value="/resources/imagePapier/${papiers.papierId}.png"/> " alt="image"
                             style="width: 100%">
                    </td>
                    <td>${papiers.papierName}</td>
                    <td>${papiers.papierTitle}</td>
                    <td>${papiers.papierAuthor}</td>
                    <td>${papiers.papierStatus}</td>
                    <td>${papiers.data}</td>
                    <td>${papiers.journal}</td>
                    <td>${papiers.pages}</td>
                    <td><a href="<spring:url value="/papier/viewPapier/${papiers.papierId}"/>"
                    ><span class="btn btn-info btn-line">اطلاعات</span></a></td>
                    <td><a href="<spring:url value="/admin/papier/deletePapier/${papiers.papierId}"/>"
                    ><span class="btn btn-danger btn-line">حذف </span></a></td>
                    <td><a href="<spring:url value="/admin/papier/editPapier/${papiers.papierId}"/>"
                    ><span class="btn btn-warning btn-line"> ویرایش </span></a></td>



                </tr>
                </tbody>
                </c:forEach>
            </table>
        </div>
    </div>
    <!--Middle Part End -->
</div>

<hr />

<a href="<c:url value="/admin/papier/addPapier"/> " class="btn btn-default">اضافه کردن</a>










<%@include file="/WEB-INF/views/adminTemplate/footer.jsp"%>