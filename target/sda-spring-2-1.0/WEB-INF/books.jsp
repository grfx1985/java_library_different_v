<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/include/header.jsp" %>
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<c:url value="/rent/book" var="rentBookUrl"/>

<div class="container">

    <h1>List of books</h1>

    <div class="row">
        <div class="col-md-12">
            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr>
                    <th class="text-center col-md-1">Id</th>
                    <th class="text-center">Title</th>
                    <th class="text-center">Author</th>
                    <th class="text-center col-md-1">Available</th>
                    <th class="text-center col-md-1">Action</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${books}" var="book">
                <tr>
                    <td>${book.id}</td>
                    <td>${book.author}</td>
                    <td>${book.title}</td>
                    <td>${book.quantity}</td>
                    <td class="text-center">
                        <form method="post" action="${rentBookUrl}">
                            <input type="hidden" name="bookId" value="${book.id}">
                            <button
                                    <c:if test="${book.quantity <= 0}">disabled</c:if>
                                    type="submit" class="btn btn-sm btn-primary">Rent</button>
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