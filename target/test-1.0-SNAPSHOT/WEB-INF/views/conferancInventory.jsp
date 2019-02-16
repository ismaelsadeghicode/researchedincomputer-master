<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/adminTemplate/header.jsp"%>


<div class="row">
    <div class="col-lg-12">
        <h1> کنفرانس </h1>
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
                                        <td class="text-center"> تصویر کنفرانس</td>
                    <td class="text-left">نام کنفرانس</td>
                    <td class="text-left">عنوان کنفرانس</td>
                    <td class="text-right">وضعیت کنفرانس</td>
                    <td class="text-right">تاریخ ارسال</td>
                    <td class="text-right">تاریخ داوری</td>
                    <td class="text-right">تاریخ ثبت نام</td>
                    <td class="text-right">زمینه علمی</td>
                    <td class="text-right">تاریخ پذیرش</td>
                    <td>مشاهده</td>
                    <td>حذف</td>
                    <td>ویرایش</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${conferancs}" var="conferanc">
                <tr>
                    <td><img src="<c:url value="/resources/images/${conferanc.conferancId}.png"/> " alt="image"
                             style="width: 100%"></td>
                    <td>${conferanc.conferancName}</td>
                    <td>${conferanc.title}</td>
                    <td>${conferanc.status}</td>
                    <td>${conferanc.sentData}</td>
                    <td>${conferanc.acceptData}</td>
                    <td>${conferanc.costData}</td>
                    <td>${conferanc.base}</td>
                    <td>${conferanc.patchData}</td>
                     <td><a href="<spring:url value="/conferancList/viewConferanc/${conferanc.conferancId}"/>"
                        ><span class="btn btn-info btn-line">اطلاعات</span></a></td>
                     <td><a href="<spring:url value="/admin/conferancInventory/deleteConferanc/${conferanc.conferancId}"/>"
                        ><span class="btn btn-danger btn-line">حذف </span></a></td>
                    <td><a href="<spring:url value="/admin/conferancInventory/editConferanc/${conferanc.conferancId}"/>"
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

<a href="<c:url value="/admin/conferancInventory/addConferanc"/> " class="btn btn-default">اضافه کردن</a>










<%@include file="/WEB-INF/views/adminTemplate/footer.jsp"%>