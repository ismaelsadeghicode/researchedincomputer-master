<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/adminTemplate/header.jsp" %>


<div class="row">
    <div class="col-lg-12">
        <h1> اضافه کردن مقاله  </h1>
    </div>
</div>

<hr/>

<div id="collapseOne" class="accordion-body collapse in body">
    <form:form action="${pageContext.request.contextPath}/admin/papier/addPapier"
               class="form-horizontal" method="post" commandName="papier"
               enctype="multipart/form-data">
           <form:hidden path="papierId"/>


        <div class="form-group">
            <label for="name" class="control-label col-lg-4"> نام مقاله </label>
            <div class="col-lg-4">
                <form:input path="papierName" type="text" id="name" name="required2" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <label for="bran" class="control-label col-lg-4"> عنوان مقاله </label>
            <div class="col-lg-4">
                <form:input  path="papierTitle" type="text" id="bran" name="required2" class="form-control"/>
            </div>
        </div>

        <div class="form-group">
            <label for="titlo" class="control-label col-lg-4"> نویسنده(اصلی) </label>
            <div class="col-lg-4">
                <form:input  path="papierAuthor" type="text" id="titlo" name="required2" class="form-control"/>
            </div>
        </div>

        <div class="form-group">
            <label for="statu" class="control-label col-lg-4"> سال چاپ </label>
            <div class="col-lg-4">
                <form:input  path="papierPrintYear" type="text" id="statu" name="required2" class="form-control"  />
            </div>
        </div>

        <div class="form-group">
            <label for="date1" class="control-label col-lg-4"> ناشر(ژورنال) </label>
            <div class="col-lg-4">
                <form:input  path="journal" type="text" id="sent" name="date1" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <label for="date2" class="control-label col-lg-4"> Volume </label>
            <div class="col-lg-4">
                <form:input  path="Volume" type="text" id="date2" name="required2" class="form-control"  />
            </div>
        </div>

        <div class="form-group">
            <label for="date3" class="control-label col-lg-4"> Issue </label>
            <div class="col-lg-4">
                <form:input  path="Issue" type="text" id="date3" name="required2" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <label for="bas" class="control-label col-lg-4"> تعداد صفحات </label>
            <div class="col-lg-4">
                <form:input  path="pages" type="text" id="bas" name="required2" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <label for="addre" class="control-label col-lg-4"> URL </label>
            <div class="col-lg-4">
                <form:input  path="URL" type="text" id="addre" name="required2" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <label for="date4" class="control-label col-lg-4"> شماره صفحه شروع </label>
            <div class="col-lg-4">
                <form:input  path="startPages" type="text" id="date4" name="required2" class="form-control"  />
            </div>
        </div>

        <div class="form-group">
            <label for="phone" class="control-label col-lg-4"> تاریخ </label>
            <div class="col-lg-4">
                <form:input  path="data" type="data" id="phone" name="required2" class="form-control"  />
            </div>
        </div>

        <div class="form-group">
            <label for="papierImage" class="control-label col-lg-4"> تصویر مقاله </label>
            <div class="col-lg-8">
                <form:input type="file" id="papierImage" path="papierImage" class="form:input-large" /></div>
        </div>

        <div class="form-actions no-margin-bottom" style="text-align:center;">
            <input type="submit" value="ثبت" class="btn btn-primary btn-lg " />
                <a href="/admin/papierInventory" class="btn btn-primary btn-lg">بازگشت</a>
        </div>

    </form:form>
</div>

<%@include file="/WEB-INF/views/adminTemplate/footer.jsp" %>
