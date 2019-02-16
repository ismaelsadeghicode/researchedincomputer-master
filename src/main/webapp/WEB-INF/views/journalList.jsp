<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="container">
    <div class="container">
        <!-- Breadcrumb Start-->
        <ul class="breadcrumb">
            <li><a href="index.html"><i class="fa fa-home"></i></a></li>
            <li><a href="#">لیست مجله ها</a></li>
            <%--<li><a href="wishlist.html">لیست علاقه مندی من</a></li>--%>
        </ul>
        <!-- Breadcrumb End-->
        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-12">
                <h1 class="title"> مجله ها</h1>
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <td class="text-right">شماره مجله</td>
                            <td class="text-center"> تصویر مجله</td>
                            <td class="text-left">نام مجله</td>
                            <td class="text-left">برند</td>
                            <td class="text-left">عنوان مجله</td>
                            <td class="text-right">وضعیت مجله</td>
                            <td class="text-right">شرح</td>
                            <td class="text-right">تاریخ ارسال</td>
                            <td class="text-right">تاریخ داوری</td>
                            <td class="text-right">تاریخ ثبت نام</td>
                            <td class="text-right">زمینه علمی</td>
                            <td class="text-right">آدرس</td>
                            <td class="text-right">تاریخ پذیرش</td>
                            <td class="text-right">شماره تماس</td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${journals}" var="journal">
                        <tr>
                            <td>${journal.journalId}</td>
                            <%--<td><img src="<c:url value="/resources/images/picture/${product.productId}.png"/> "--%>
                                     <%--alt="image" width="100" height="100"></td>--%>
                            <td></td>
                            <td>${journal.journalName}</td>
                            <td>${journal.brand}</td>
                            <td>${journal.title}</td>
                            <td>${journal.status}</td>
                            <td>${journal.description}</td>
                            <td>${journal.sentData}</td>
                            <td>${journal.acceptData}</td>
                            <td>${journal.costData}</td>
                            <td>${journal.base}</td>
                            <td>${journal.address}</td>
                            <td>${journal.patchData}</td>
                            <td>${journal.phoneNumber}</td>
                        </tr>
                        </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <!--Middle Part End -->
        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>