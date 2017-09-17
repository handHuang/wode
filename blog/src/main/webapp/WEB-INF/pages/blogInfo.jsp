<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- load JS files -->

    <title>Classic - Blog Page</title>
</head>

    <body>

        <div class="tm-blog-img-container"> </div>

        <section class="tm-section">
            <div class="container-fluid"></div>
            <div class="row">
                <div class="row tm-margin-t-big">
                    <c:forEach items="${articleList}"  var="a">
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                            <div class="tm-content-box">

                                <h4 class="tm-margin-b-20 tm-gold-text">${a.articleTitle}</h4>
                                <p class="tm-margin-b-20"> ${a.articleIntro}</p>
                                <a href="${pageContext.request.contextPath}/blogMain?articleId=${a.articleId}" class="tm-btn text-uppercase">阅读</a>

                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>




            </div>
        </section>

</body>
</html>