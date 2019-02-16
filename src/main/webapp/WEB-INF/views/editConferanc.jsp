<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/adminTemplate/header.jsp" %>


<div class="row">
    <div class="col-lg-12">
        <h1> ویرایش کنفرانس </h1>
    </div>
</div>

<hr/>

<div id="collapseOne" class="accordion-body collapse in body">
    <form:form action="${pageContext.request.contextPath}/admin/conferancInventory/editConferanc"
               class="form-horizontal" method="post" commandName="conferanc"
               enctype="multipart/form-data">
        <form:hidden path="conferancId" value="${conferanc.conferancId}"/>


        <div class="form-group">
            <label for="name" class="control-label col-lg-4"> نام کنفرانس </label>
            <div class="col-lg-4">
                <form:input path="conferancName" type="text" id="name" name="required2" class="form-control" value="${conferanc.conferancName}"/>
            </div>
        </div>

        <div class="form-group">
            <label for="bran" class="control-label col-lg-4"> برند کنفرانس </label>
            <div class="col-lg-4">
                <form:input  path="Brand" type="text" id="bran" name="required2" class="form-control" value="${conferanc.brand}" />
            </div>
        </div>

        <div class="form-group">
            <label for="titl" class="control-label col-lg-4"> عنوان کنفرانس </label>
            <div class="col-lg-4">
                <form:input  path="title" type="text" id="titl" name="required2" class="form-control" value="${conferanc.title}" />
            </div>
        </div>

        <div class="form-group">
            <label for="statu" class="control-label col-lg-4"> وضعیت کنفرانس </label>
            <div class="col-lg-4">
                <form:input  path="status" type="text" id="statu" name="required2" class="form-control" value="${conferanc.status}" />
            </div>
        </div>

        <div class="form-group">
            <label for="descrip" class="control-label col-lg-4"> محورهای کنفرانس </label>
            <div class="col-lg-4">
                <form:input  path="description" type="text" id="descrip" name="required2" class="form-control" value="${conferanc.description}" />
            </div>
        </div>

        <div class="form-group">
            <label for="date1" class="control-label col-lg-4"> تاریخ شروع </label>
            <div class="col-lg-4">
                <form:input  path="sentData" type="date" id="sent" name="date1" class="form-control" value="${conferanc.sentData}"/>
            </div>
        </div>

        <div class="form-group">
            <label for="date2" class="control-label col-lg-4"> تاریخ تایید </label>
            <div class="col-lg-4">
                <form:input  path="acceptData" type="date" id="date2" name="required2" class="form-control" value="${conferanc.acceptData}" />
            </div>
        </div>
        <div class="form-group">
            <label for="date3" class="control-label col-lg-4"> تاریخ پرداخت هزینه </label>
            <div class="col-lg-4">
                <form:input  path="costData" type="date" id="date3" name="required2" class="form-control" value="${conferanc.costData}" />
            </div>
        </div>

        <div class="form-group">
            <label for="bas" class="control-label col-lg-4"> پایه کنفرانس </label>
            <div class="col-lg-4">
                <form:input  path="base" type="text" id="bas" name="required2" class="form-control" value="${conferanc.base}"/>
            </div>
        </div>

        <div class="form-group">
            <label for="addre" class="control-label col-lg-4"> آدرس </label>
            <div class="col-lg-4">
                <form:input  path="address" type="text" id="addre" name="required2" class="form-control" value="${conferanc.address}"/>
            </div>
        </div>

        <div class="form-group">
            <label for="date4" class="control-label col-lg-4"> تاریخ پزیرش </label>
            <div class="col-lg-4">
                <form:input  path="patchData" type="date" id="date4" name="required2" class="form-control" value="${conferanc.patchData}" />
            </div>
        </div>

        <div class="form-group">
            <label for="phone" class="control-label col-lg-4"> شماره تلفن </label>
            <div class="col-lg-4">
                <form:input  path="phoneNumber" type="text" id="phone" name="required2" class="form-control" value="${conferanc.phoneNumber}" />
            </div>
        </div>

        <div class="form-group">
            <label for="conferancImage" class="control-label col-lg-4"> پوستر کنفرانس </label>
            <div class="col-lg-8">
                <form:input type="file" id="conferancImage" path="conferancImage" class="form:input-large" /></div>
        </div>

        <%--<div class="form-group">--%>
        <%--<label class="control-label" for="conferancImage">اضافه کردن تصویر محصول</label>--%>
        <%--<form:input id="conferancImage" path="conferancImage" type="file" class="form:input-large" />--%>
        <%--</div>--%>

        <%--<div class="form-group">--%>
        <%--<label class="control-label col-lg-4" for="conferancImage">تعریف پیش تصویر</label>--%>
        <%--<div class="col-lg-8">--%>
        <%--<form:input id="conferancImage" path="conferancImage" type="file" class="form:input-large" />--%>
        <%--<div class="fileupload fileupload-new" data-provides="fileupload">--%>
        <%--<div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="<c:url value="/resources/assets/img/demoUpload.jpg"/> " alt="" /></div>--%>
        <%--<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>--%>
        <%--<div>--%>
        <%--<span class="btn btn-file btn-primary"><span class="fileupload-new">انتخاب عکس</span><span class="fileupload-exists">تغییر</span><input type="file" /></span>--%>
        <%--<a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">حذف</a>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</br>--%>
        <%--</br>--%>

        <div class="form-actions no-margin-bottom" style="text-align:center;">
            <input type="submit" value="ثبت" class="btn btn-primary btn-lg " />
                <%--<a href="#" class="btn btn-primary btn-lg">بازگشت</a>--%>
        </div>

        <%--<input type="submit" value="ثبت محصول" class="btn btn-default">--%>
        <%--<a href="<c:url value="/admin/productInventory/addProduct"/>" class="btn btn-default">انصراف</a>--%>
        <%--<a href="<c:url value="/admin/productInventory" />" class="btn btn-default"> بازگشت </a>--%>

    </form:form>
</div>

<%@include file="/WEB-INF/views/adminTemplate/footer.jsp" %>
