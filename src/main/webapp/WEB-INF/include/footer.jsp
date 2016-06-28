<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sunbasket" tagdir="/WEB-INF/tags" %>

</div>
</div>

<footer>
    <!-- show Footer HTML if not in sign up flow -->
    <div id="footer-main">
        <div class="container">
            <div class="row">
                <div id="footer-link-list" class="col-md-9 col-sm-12">
                    <div class="row">
                        <div class="col-sm-6 about-sb">
                            <h5>About Sun Basket</h5>
                            <div class="row">
                                <div class="col-xs-6">
                                    <a href="${pageContext.request.contextPath}/chef">Our Chef</a>
                                    <br>
                                    <a href="${pageContext.request.contextPath}/refrigerate">Food Storage</a>
                                    <br>
                                    <a href="${pageContext.request.contextPath}/recycle">Recycle</a>
                                    <br>
                                    <a href="${pageContext.request.contextPath}/gift/select">Gifts</a>
                                </div>
                                <div class="col-xs-6">
                                    <a href="${pageContext.request.contextPath}/help">Help</a>
                                    <br>
                                    <a href="${pageContext.request.contextPath}/faq">FAQ&#39;s</a>
                                    <br>
                                    <a href="${pageContext.request.contextPath}/blog">Blog</a>
                                    <br>
                                    <a href="${pageContext.request.contextPath}/press">Press</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 learn-links">
                            <h5>Learn</h5>
                            <div class="row">
                                <div class="col-xs-6">
                                    <a href="${pageContext.request.contextPath}/cookbook">Cookbook</a>
                                    <br>
                                    <a href="${pageContext.request.contextPath}/learn/farm-to-table">Farm-To-Table</a>
                                    <br>
                                    <a href="${pageContext.request.contextPath}/learn/organic">Organic Food</a>
                                    <br>
                                </div>
                                <div class="col-xs-6">
                                    <a href="${pageContext.request.contextPath}/learn/paleo">Paleo Diet</a>
                                    <br>
                                    <a href="${pageContext.request.contextPath}/learn/gluten-free">Gluten-Free
                                        Diet</a>
                                    <br>
                                    <a href="${pageContext.request.contextPath}/learn/vegetarian">Vegetarian
                                        Diet</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-12">
                    <div class="follow-us">
                        <h5>Follow Us</h5>
                        <ul>
                            <li><a href="https://www.facebook.com/sunbasket" target="_blank">
                                <div class="icon icon-social-facebook"></div>
                            </a></li>
                            <li><a href="https://instagram.com/sunbasket/" target="_blank">
                                <div class="icon icon-social-instagram"></div>
                            </a></li>
                            <li><a href="https://www.pinterest.com/SunBasketMeals/" target="_blank">
                                <div class="icon icon-social-pinterest"></div>
                            </a></li>
                            <li><a href="https://twitter.com/sunbasketmeals" target="_blank">
                                <div class="icon icon-social-twitter"></div>
                            </a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- end #footer-main -->
</footer>

</body>
</html>
