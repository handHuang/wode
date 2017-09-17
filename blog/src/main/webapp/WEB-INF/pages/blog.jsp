<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- load JS files -->

    <title>Classic - Blog Page</title>
</head>

    <body>

        <div class="tm-blog-img-container">
            
        </div>

        <section class="tm-section">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-9 col-xl-9">
                        <div class="tm-blog-post">
                            <h3 class="tm-gold-text">${article.articleTitle}</h3>
                            <hr>
                            ${article.articleBody}
                        </div>


                    </div>

                    <aside class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-xl-3 tm-aside-r">

                        <div class="tm-aside-container">
                            <h3 class="tm-gold-text tm-title">
                                相关分类
                            </h3>
                            <nav>
                                <nav>
                                    <ul class="nav">
                                        <li><a href="${pageContext.request.contextPath}/order?articleTypeId=0" class="tm-text-link">JAVA基础</a></li>
                                        <li><a href="${pageContext.request.contextPath}/order?articleTypeId=1" class="tm-text-link">JS框架</a></li>
                                        <li><a href="${pageContext.request.contextPath}/order?articleTypeId=2" class="tm-text-link">SSM</a></li>
                                        <li><a href="${pageContext.request.contextPath}/order?articleTypeId=3" class="tm-text-link">WEB基础</a></li>
                                        <li><a href="${pageContext.request.contextPath}/order?articleTypeId=4" class="tm-text-link">SpringBoot</a></li>
                                    </ul>
                                </nav>
                            </nav>
                            <hr class="tm-margin-t-small">

                            <div class="tm-content-box tm-margin-t-small">
                            
                                <a href="#" class="tm-text-link">
                                <h4><a href="/sort" class="tm-margin-b-20 tm-thin-font">阅读排行榜
                               
                                </a></h4>
                                <c:forEach items="${articles}" var="ar" varStatus="status">
                                <a href="${pageContext.request.contextPath}/blogMain?articleId=${ar.articleId}" class="tm-text-link">${status.count}. ${ar.articleTitle}( ${ar.readTime} )</a>
                                <br/>
                                </c:forEach>
                                
                            </div>
                            <hr class="tm-margin-t-small">
                            <div class="tm-content-box tm-margin-t-small">
                                <a href="#" class="tm-text-link"><h4 class="tm-margin-b-20 tm-thin-font">评论排行榜</h4></a>
                                <a href="#" class="tm-text-link">1. 【Js应用实例】限制上传图片大小(2)</a>
                                <a href="#" class="tm-text-link">2. CentOS7.2 使用Shell安装Oracle12c(2)</a>
                            </div>
                        </div>


                    </aside>

                </div>

            </div>
        </section>

       
</body>
</html>