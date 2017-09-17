<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
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
                            <h3 class="tm-gold-text">阅读量榜单</h3>
                            <hr>
                        <c:forEach items="${ list}" var="article" varStatus="status">
                       <a href="/blogMain?articleId=${article.articleId }"><h4> ${status.count }.${article.articleTitle } </h4></a>已阅读${article.readTime }次
                        </c:forEach>
                           
                        </div>

                        <div class="row tm-margin-t-big">
                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">

                                <div class="tm-content-box">

                                    <h4 class="tm-margin-b-20 tm-gold-text">数据库名,数据库实例名SID,数据库服务名,全局数据库名</h4>
                                    <p class="tm-margin-b-20">一、数据库名    就是在你安装oracle软件过程中创建的数据库，或者是安装完后，自己再创建的数据名称。主要用于一个oracle中安装了多个库，他们之间的区分。一个库会在windows的服务中生成一个oracle_service... </p>
                                    <a href="#" class="tm-btn text-uppercase">阅读</a>
                                </div>

                            </div>

                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">

                                <div class="tm-content-box">

                                    <h4 class="tm-margin-b-20 tm-gold-text"> 用jcaptcha做的一个彩色的验证码示例 </h4>
                                    <p class="tm-margin-b-20">上图为证： 最新更新：使用jcaptcha2.0-alpha版生成仿google的验证码：  就是有关声音验证码的没搞定，不知道哪位大虾有示例供学习。... </p>
                                    <a href="#" class="tm-btn text-uppercase">阅读</a>
                                </div>

                            </div>

                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">

                                <div class="tm-content-box">

                                    <h4 class="tm-margin-b-20 tm-gold-text">struts1.2+spring2.0+hibernate3.2 整合的小示例 </h4>
                                    <p class="tm-margin-b-20">先上小示例效果图：  再上spring的配置文件： xml version="1.0" encoding="UTF-8"?>beans xmlns="http://www.springframework.org/schema/beans" ... </p>
                                    <a href="#" class="tm-btn text-uppercase">阅读</a>
                                </div>

                            </div>
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
                                        <li><a href="#" class="tm-text-link">JAVA基础</a></li>
                                        <li><a href="#" class="tm-text-link">JS框架</a></li>
                                        <li><a href="#" class="tm-text-link">SSM</a></li>
                                        <li><a href="#" class="tm-text-link">WEB基础</a></li>
                                        <li><a href="#" class="tm-text-link">SpringBoot</a></li>
                                    </ul>
                                </nav>
                            </nav>
                            <hr class="tm-margin-t-small">

                            <div class="tm-content-box tm-margin-t-small">
                                <a href="#" class="tm-text-link"><h4 class="tm-margin-b-20 tm-thin-font">阅读排行榜</h4></a>
                                <a href="#" class="tm-text-link">1. 【Tomcat】Invalid character found in the request target(1344)</a>
                                <br/>
                                <a href="#" class="tm-text-link">2. 编译安装 Nginx1.12.1(428)</a>
                                <br/>
                                <a href="#" class="tm-text-link">3. 【Maven】构建war包时排除web.xml(201)</a>
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