<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/include/header.jsp" %>
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<c:url value="/user/update" var="userUpdateUrl"/>
<c:url value="/user/delete" var="deleteUrl"/>

<div class="container">

    <h1>List of users</h1>

    <div class="row">
        <div class="col-md-12">
            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr>
                    <th class="text-center col-md-1">Id</th>
                    <th class="text-center">First Name</th>
                    <th class="text-center">Last Name</th>
                    <th class="text-center col-md-1">Email</th>
                    <th class="text-center col-md-1">Action</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.email}</td>
                        <td class="text-center">
                            <a href="${userUpdateUrl}/${user.id}" class="btn btn-sm btn-primary">Edit</a>
                            <form action="${deleteUrl}" method="post">
                                <input name="id" type="hidden" value="${user.id}">
                                <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>


                </tbody>
            </table>
        </div>
    </div>

</div>
<%@ include file="/WEB-INF/include/footer.jsp" %>