<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/include/header.jsp" %>
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<c:url var="updateUserUrl" value="/admin/user/update"/>

<div class="container">

    <h1>Update user</h1>

    <div class="row">
        <form role="form" class="form-horizontal" action="${updateUserUrl}" method="post">
            <input type="hidden" value="${user.id}" name="id">
            <div class="form-group">
                <label class="control-label col-sm-2" for="firstName">First name:</label>
                <div class="col-sm-6">
                    <input type="text" value="${user.firstName}" name="firstName" id="firstName" class="form-control" autofocus>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="lastName">Last name:</label>
                <div class="col-sm-6">
                    <input type="text" value="${user.lastName}" name="lastName" id="lastName" class="form-control" placeholder="Enter last name" autofocus>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-6">
                    <input type="email" value="${user.email}" name="email" id="email" class="form-control" placeholder="Enter email" autofocus>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-6">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a href="#" class="btn btn-danger">Cancel</a>
                </div>
            </div>
        </form>
    </div>

</div>

<%@ include file="/WEB-INF/include/footer.jsp" %>