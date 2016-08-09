<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/include/header.jsp" %>
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<c:url var="createBookUrl" value="/admin/book/create"/>

<div class="container">

    <h1>Create book</h1>

    <div class="row">

        <form:form action="${createBookUrl}" method="post" cssClass="form-horizontal" commandName="bookDto">
            <div class="form-group">
                <label class="control-label col-sm-2" for="author">Author:</label>
                <div class="col-sm-6">
                    <form:input path="author" id="author" cssClass="form-control" />
                    <form:errors path="author" cssStyle="color: red" />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="title">Title:</label>
                <div class="col-sm-6">
                    <form:input path="title" id="title" cssClass="form-control"/>
                    <form:errors path="title" cssStyle="color: red" />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="quantity">Quantity:</label>
                <div class="col-sm-6">
                    <form:input path="quantity" id="quantity" cssClass="form-control"/>
                    <form:errors cssStyle="color: red" path="quantity" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-6">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a href="#" class="btn btn-danger">Cancel</a>
                </div>
            </div>
        </form:form>

        <%--<form role="form" class="form-horizontal" action="${createBookUrl}" method="post">--%>
            <%--<div class="form-group">--%>
                <%--<label class="control-label col-sm-2" for="author">Author:</label>--%>
                <%--<div class="col-sm-6">--%>
                    <%--<input type="text" name="author" id="author" class="form-control" placeholder="Enter author" autofocus>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="form-group">--%>
                <%--<label class="control-label col-sm-2" for="title">Title:</label>--%>
                <%--<div class="col-sm-6">--%>
                    <%--<input type="text" name="title" id="title" class="form-control" placeholder="Enter title" >--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="form-group">--%>
                <%--<label class="control-label col-sm-2" for="quantity">Quantity:</label>--%>
                <%--<div class="col-sm-6">--%>
                    <%--<input type="text" name="quantity" id="quantity" class="form-control" placeholder="Enter quantity" >--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="form-group">--%>
                <%--<div class="col-sm-offset-2 col-sm-6">--%>
                    <%--<button type="submit" class="btn btn-primary">Save</button>--%>
                    <%--<a href="#" class="btn btn-danger">Cancel</a>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</form>--%>
    </div>

</div>

<%@ include file="/WEB-INF/include/footer.jsp" %>