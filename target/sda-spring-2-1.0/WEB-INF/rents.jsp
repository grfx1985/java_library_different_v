<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/include/header.jsp" %>
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<%--<c:url value="/rent/update" var="userUpdateUrl"/>--%>
<c:url value="/rent/finish" var="finishRentUrl"/>

<div class="container">

    <h1>List of rents</h1>

    <div class="row">
        <div class="col-md-12">
            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr>
                    <th class="text-center col-md-1">Id</th>
                    <th class="text-center">Date</th>
                    <th class="text-center">User</th>
                    <th class="text-center col-md-1">Book</th>
                    <th class="text-center col-md-1">Status</th>
                    <th class="text-center col-md-1">Action</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${rents}" var="rent">
                    <tr>
                        <td>${rent.id}</td>
                        <td>${rent.createdDate}</td>
                        <td>${rent.user.firstName} ${rent.user.lastName}</td>
                        <td>${rent.book.author} ${rent.book.title}</td>
                        <td>${rent.status}</td>
                        <td class="text-center">
                            <c:if test="${rent.status != 'FINISHED'}">
                                <form action="${finishRentUrl}" method="post">
                                    <input name="rentId" type="hidden" value="${rent.id}">
                                    <button type="submit" class="btn btn-sm btn-danger">Finish</button>
                                </form>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>


                </tbody>
            </table>
        </div>
    </div>

</div>
<%@ include file="/WEB-INF/include/footer.jsp" %>