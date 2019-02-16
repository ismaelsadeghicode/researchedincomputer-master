<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="container">
    <div class="container">
        <!-- Breadcrumb Start-->
        <ul class="breadcrumb">
            <li><a href="index.html"><i class="fa fa-home"></i></a></li>
            <li><a href="#">لیست کنفرانس ها</a></li>
            <%--<li><a href="wishlist.html">لیست علاقه مندی من</a></li>--%>
        </ul>

        <div class="row">
            <div class="col-lg-12">
                <h1> کنفرانس </h1>
            </div>
        </div>

        <script src="<c:url value="/resources/assets/plugins/dataTables/jquery.dataTables.js"/> "></script>
        <script src="<c:url value="/resources/assets/plugins/dataTables/dataTables.bootstrap.js"/> "></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
        </script>

                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <td class="text-left">نام کنفرانس</td>
                                    <td class="text-left">عنوان کنفرانس</td>
                                    <td class="text-right">تاریخ ارسال</td>
                                    <td class="text-right">زمینه علمی</td>
                                    <td class="text-right">وضعیت کنفرانس</td>
                                    <td>مشاهده</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${conferancs}" var="conferanc">
                                <tr class="odd gradeX">

                                    <td>${conferanc.conferancName}</td>
                                    <td>${conferanc.title}</td>
                                    <td>${conferanc.sentData}</td>
                                    <td>${conferanc.base}</td>
                                    <td>
                                        <button type="button" class="btn btn-success btn-line">${conferanc.status}</button>

                                    </td>
                                    <%--<td>${conferanc.status}</td>--%>
                                    <td><a href="<spring:url value="/conferancList/viewConferanc/${conferanc.conferancId}"/>"
                                    ><span class="btn btn-info btn-line">اطلاعات</span></a></td>
                                </tr>

                                </tbody>
                                    </c:forEach>
                                   </table>
                        </div>

                    </div>

</div>
            </div>




        <%--<div class="panel-body">--%>
            <%--<div class="table-responsive table-bordered">--%>
                <%--<table class="table">--%>
                    <%--<thead>--%>
                    <%--<tr>--%>
                        <%--<td class="text-center"> پوستر کنفرانس </td>--%>
                        <%--<td class="text-left">نام کنفرانس</td>--%>
                        <%--&lt;%&ndash;<td class="text-left">عنوان کنفرانس</td>&ndash;%&gt;--%>
                        <%--<td class="text-right">وضعیت کنفرانس</td>--%>
                        <%--<td class="text-right">تاریخ ارسال</td>--%>
                        <%--&lt;%&ndash;<td class="text-right">زمینه علمی</td>&ndash;%&gt;--%>
                        <%--<td>مشاهده</td>--%>
                    <%--</tr>--%>
                    <%--</thead>--%>
                    <%--<tbody>--%>
                    <%--<c:forEach items="${conferancs}" var="conferanc">--%>
                    <%--<tr>--%>
                        <%--<td>--%>
                            <%--<div class="image">--%>
                                <%--<img src="<c:url value="/resources/images/${conferanc.conferancId}.png"/> " alt="image"--%>
                                     <%--style="width: 20%">--%>
                            <%--</div>--%>
                        <%--</td>--%>
                        <%--<td>${conferanc.conferancName}</td>--%>
                        <%--&lt;%&ndash;<td>${conferanc.title}</td>&ndash;%&gt;--%>
                        <%--<td>${conferanc.status}</td>--%>
                        <%--<td>${conferanc.sentData}</td>--%>
                        <%--&lt;%&ndash;<td>${conferanc.base}</td>&ndash;%&gt;--%>
                        <%--<td><a href="<spring:url value="/conferancList/viewConferanc/${conferanc.conferancId}"/>"--%>
                        <%--><span class="btn btn-info btn-line">اطلاعات</span></a></td>--%>
                    <%--</tr>--%>
                    <%--</tbody>--%>
                    <%--</c:forEach>--%>
                <%--</table>--%>
            <%--</div>--%>
        <%--</div>--%>


       <!-- Breadcrumb End-->
        <%--<div class="row">--%>
            <%--<!--Middle Part Start-->--%>
            <%--<div id="content" class="col-sm-12">--%>
                <%--<h1 class="title"> کنفرانس ها</h1>--%>
                <%--<div class="row">--%>
                        <%--<div class="table-responsive">--%>
                            <%--<table class="table table-bordered table-hover">--%>
                                <%--<thead>--%>
                                <%--<tr>--%>
                                    <%--<td class="text-center"> تصویر کنفرانس</td>--%>
                                    <%--<td class="text-left">نام کنفرانس</td>--%>
                                    <%--<td class="text-left">عنوان کنفرانس</td>--%>
                                    <%--<td class="text-right">وضعیت کنفرانس</td>--%>
                                    <%--<td class="text-right">تاریخ ارسال</td>--%>
                                    <%--<td class="text-right">زمینه علمی</td>--%>
                                    <%--<td>مشاهده</td>--%>
                                <%--</tr>--%>
                                <%--</thead>--%>
                                <%--<tbody>--%>
                                <%--<c:forEach items="${conferancs}" var="conferanc">--%>
                                <%--<tr>--%>
                                    <%--<td>--%>
                                        <%--<div class="image">--%>
                                        <%--<img src="<c:url value="/resources/images/${conferanc.conferancId}.png"/> " alt="image"--%>
                                             <%--style="width: 20%">--%>
                                        <%--</div>--%>
                                    <%--</td>--%>
                                    <%--<td>${conferanc.conferancName}</td>--%>
                                    <%--<td>${conferanc.title}</td>--%>
                                    <%--<td>${conferanc.status}</td>--%>
                                    <%--<td>${conferanc.sentData}</td>--%>
                                    <%--<td>${conferanc.base}</td>--%>
                                    <%--<td><a href="<spring:url value="/conferancList/viewConferanc/${conferanc.conferancId}"/>"--%>
                                    <%--><span class="btn btn-info btn-line">اطلاعات</span></a></td>--%>
                              <%--</tr>--%>
                                <%--</tbody>--%>
                                <%--</c:forEach>--%>
                            <%--</table>--%>
                        <%--</div>--%>
                    <%--<!--Middle Part End -->--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<!--Middle Part End -->--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<%@include file="/WEB-INF/views/template/footer.jsp"%>