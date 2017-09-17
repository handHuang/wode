<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="../base.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <%-- <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=2gCYlui0bPzYmHZRKAbfQIva36u9DWq3"></script>--%>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>

    <!--
    Classic Template
    http://www.cssmoban.com/tm-488-classic
    -->
    <!-- load stylesheets -->
    <style type="text/css">

        * {
            margin: 0;
            padding: 0;
            -webkit-touch-callout: none; /* prevent callout to copy image, etc when tap to hold */
            -webkit-text-size-adjust: none; /* prevent webkit from resizing text to fit */
            -webkit-tap-highlight-color: rgba(210, 210, 210, 0.35); /* make transparent link selection, adjust last value opacity 0 to 1.0 */
            -webkit-user-select: none; /* prevent copy paste, to allow, change 'none' to 'text' */
        }

        ul, li {
            list-style: none;
        }

        .ylcon {
            width: 100%;
            min-width: 320px;
        }

        .tit {
            height: 26px;
            line-height: 26px;
            padding: 0px 15px;
            position: relative;
            font-size: 15px;
            color: #aaa;
            border-bottom: 1px solid rgba(0, 0, 0, 0.15);
        }

        .story {
            border-bottom: 1px dashed #cecece;
            padding: 0 15px 3px;
            position: relative;
            font-family: "微软雅黑";
            font-size: 12px;
        }

        .story_t {
            font-size: 1.2em;
            color: rgba(0, 0, 0, 1);
            padding-top: 5px;
            padding-bottom: 2px;
        }

        .story_m {
            color: rgba(110, 110, 110, 1);
            line-height: 21px;
            word-break: break-all;
            word-wrap: break-word;
            overflow: hidden;
            font-size: 1.2em;
            padding: 2px 0;
        }

        .story_time {
            color: rgba(154, 154, 154, 1);
            padding: 2px 0;
        }

        .story_hf {
            background: rgb(245, 245, 245);
            font-size: 1.2em;
            border: 1px solid rgba(204, 204, 204, 0.2);
            border-radius: 2px;
            color: rgba(110, 110, 110, 1);
            padding: 4px;
            margin-bottom: 5px;
        }

        .opbtn {
            position: absolute;
            top: 0;
            right: 0;
        }

    </style>
</head>

<body>

<div class="tm-contact-img-container">

</div>

<section class="tm-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">

                <section>
                    <h3 class="tm-gold-text tm-form-title">和我一起学习</h3>
                    <p class="tm-form-description">请留下您的姓名,邮箱</p>

                    <div><c:if test="${msg!=null}">${msg}</c:if></div>
                    <form action="${ctx}/postEmail.action" method="post" class="tm-contact-form">
                        <div class="form-group">
                            <input type="text" id="contact_name" name="userName" class="form-control" placeholder="Name"
                                   required/>
                        </div>
                        <div class="form-group">
                            <input type="email" id="contact_email" name="email" class="form-control" placeholder="Email"
                                   required/>
                        </div>
                        <div class="form-group">
                            <%--<input type="text" id="contact_subject" name="contact_subject" class="form-control" placeholder="Subject"  required/>--%>
                        </div>
                        <div class="form-group">
                            <%--<textarea id="contact_message" name="contact_message" class="form-control" rows="6" placeholder="Message" required></textarea>--%>
                        </div>

                        <button type="submit" class="tm-btn">Submit</button>
                    </form>
                </section>

                <br>
                <br>

                <div class="ylcon">
                    <h3 class="tm-gold-text tm-form-title">所有留言</h3>

                    <div id="messDivId">
                        <c:forEach items="${answerList}" var="ans">
                            <div class="story">
                                <div class="opbtn"></div>
                                <p class="story_t">${ans.userName}</p>
                                <p class="story_time"><fmt:formatDate value="${ans.createTime}"
                                                                      pattern="yyyy-MM-dd HH:mm"/></p>
                                <p class="story_m">${ans.answer}</p>
                                    <%--<p class="story_hf">@剑花烟雨:的是相对无言眼波如流的默契的是相对无言眼波如流的默契的是相对无言眼波如流的默契的是相对无言眼波如流的默契的是相对无言眼波如流的默契的是相对无言眼波如流的默契</p>--%>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <section class="tm-margin-t-mid tm-map-section">
                    <h3 class="tm-gold-text tm-form-title">留言板</h3>
                    <form action="${ctx}/postAnswer.action" method="post" class="tm-contact-form">
                        <div class="form-group">
                            <input type="text" name="userName" class="form-control" placeholder="Name" required/>
                        </div>
                        <div id="liuyanban">
                                <textarea cols="80" class="ckeditor" id="editor1" name="answer" rows="10">



                                </textarea>

                        </div>
                        <button type="submit" class="tm-btn">Submit</button>
                    </form>

                </section>


            </div>

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-contact-right">

                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
                        <div class="tm-aside-container">
                            <h3 class="tm-gold-text tm-title">
                                相关分类
                            </h3>
                            <nav>
                                <ul class="nav">
                                    <li><a href="#" class="tm-text-link">JAVA基础</a></li>
                                    <li><a href="#" class="tm-text-link">JS框架</a></li>
                                    <li><a href="#" class="tm-text-link">SSM</a></li>
                                    <li><a href="#" class="tm-text-link">WEB基础</a></li>
                                    <li><a href="#" class="tm-text-link">SpringBoot</a></li>
                                </ul>
                            </nav>
                            <hr class="tm-margin-t-small">
                            <h3 class="tm-gold-text tm-title tm-margin-t-small">
                                友情链接
                            </h3>
                            <nav>
                                <ul class="nav">
                                    <li><a href="#" class="tm-text-link">目前一条没有，如果需要，请联系我</a></li>
                                    <%-- <li><a href="#" class="tm-text-link">Lorem ipsum dolor sit</a></li>
                                     <li><a href="#" class="tm-text-link">Duiss nec purus et eros</a></li>
                                     <li><a href="#" class="tm-text-link">Etiam pulvinar et ligula sed</a></li>
                                     <li><a href="#" class="tm-text-link">Proin egestas eu felis et iaculis</a></li>
                                     <li><a href="#" class="tm-text-link">Fusce non turpis euismod</a></li>--%>
                                </ul>
                            </nav>
                        </div>

                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">

                        <div class="tm-content-box tm-content-box-contact">
                            <img src="${ctx}/staticfiles/img/tm-img-310x180-1.jpg" alt="Image"
                                 class="tm-margin-b-20 img-fluid">
                            <h4 class="tm-margin-b-20 tm-gold-text">Lorem ipsum dolor #1</h4>
                            <p class="tm-margin-b-20 tm-p-small">Aenean cursus tellus mauris, quis
                                consequat mauris dapibus id. Donec
                                scelerisque porttitor pharetra</p>
                            <a href="#" class="tm-btn text-uppercase">Detail</a>
                        </div>

                        <div class="tm-content-box tm-margin-t-mid tm-content-box-contact">
                            <img src="${ctx}/staticfiles/img/tm-img-310x180-2.jpg" alt="Image"
                                 class="tm-margin-b-20 img-fluid">
                            <h4 class="tm-margin-b-20 tm-gold-text">Lorem ipsum dolor #2</h4>
                            <p class="tm-margin-b-20 tm-p-small">Aenean cursus tellus mauris, quis
                                consequat mauris dapibus id. Donec
                                scelerisque porttitor pharetra</p>
                            <a href="#" class="tm-btn text-uppercase">Read More</a>
                        </div>

                    </div>
                </div>
                <hr class="tm-margin-t-mid">
                <div class="row tm-contact-row-related-posts">
                    <div class="col-xs-12">

                        <div class="tm-contact-related-posts-container">
                            <h3 class="tm-gold-text tm-title tm-margin-b-30">Related Posts</h3>
                            <div class="media tm-related-post" id="mapsize">
                                <div class="media-left media-middle">
                                    <jsp:include page="map/map.jsp" flush="true"/>
                                </div>

                                <div class="media-left media-middle">
                                    <a href="#">
                                        <img class="media-object" src="${ctx}/staticfiles/img/tm-img-240x120-1.jpg"
                                             alt="Generic placeholder image">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <a href="#"><h4 class="media-heading tm-gold-text tm-margin-b-15">Lorem ipsum
                                        dolor</h4></a>
                                    <p class="tm-small-font tm-media-description">Aenean cursus tellus mauris, quis
                                        consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p>
                                </div>
                            </div>
                            <div class="media tm-related-post">
                                <div class="media-left media-middle">
                                    <a href="#">
                                        <img class="media-object" src="${ctx}/staticfiles/img/tm-img-240x120-2.jpg"
                                             alt="Generic placeholder image">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <a href="#"><h4 class="media-heading tm-gold-text tm-margin-b-15">Lorem ipsum
                                        dolor</h4></a>
                                    <p class="tm-small-font tm-media-description">Aenean cursus tellus mauris, quis
                                        consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p>
                                </div>
                            </div>
                            <div class="media tm-related-post">
                                <div class="media-left media-middle">
                                    <a href="#">
                                        <img class="media-object" src="${ctx}/staticfiles/img/tm-img-240x120-3.jpg"
                                             alt="Generic placeholder image">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <a href="#"><h4 class="media-heading tm-gold-text tm-margin-b-15">Lorem ipsum
                                        dolor</h4></a>
                                    <p class="tm-small-font tm-media-description">Aenean cursus tellus mauris, quis
                                        consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p>
                                </div>
                            </div>
                            <%--<h3 class="tm-gold-text tm-title tm-margin-b-30">Related Posts</h3>--%>
                            <%--<div class="media tm-related-post">--%>
                            <%--<div class="media-left media-middle">--%>
                            <%--<a href="#">--%>
                            <%--<img class="media-object" src="${ctx}/staticfiles/img/tm-img-240x120-1.jpg" alt="Generic placeholder image">--%>
                            <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="media-body">--%>
                            <%--<a href="#"><h4 class="media-heading tm-gold-text tm-margin-b-15">Lorem ipsum dolor</h4></a>--%>
                            <%--<p class="tm-small-font tm-media-description">Aenean cursus tellus mauris, quis consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="media tm-related-post">--%>
                            <%--<div class="media-left media-middle">--%>
                            <%--<a href="#">--%>
                            <%--<img class="media-object" src="${ctx}/staticfiles/img/tm-img-240x120-2.jpg" alt="Generic placeholder image">--%>
                            <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="media-body">--%>
                            <%--<a href="#"><h4 class="media-heading tm-gold-text tm-margin-b-15">Lorem ipsum dolor</h4></a>--%>
                            <%--<p class="tm-small-font tm-media-description">Aenean cursus tellus mauris, quis consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="media tm-related-post">--%>
                            <%--<div class="media-left media-middle">--%>
                            <%--<a href="#">--%>
                            <%--<img class="media-object" src="${ctx}/staticfiles/img/tm-img-240x120-3.jpg" alt="Generic placeholder image">--%>
                            <%--</a>--%>
                            <%--</div>--%>
                            <%--<div class="media-body">--%>
                            <%--<a href="#"><h4 class="media-heading tm-gold-text tm-margin-b-15">Lorem ipsum dolor</h4></a>--%>
                            <%--<p class="tm-small-font tm-media-description">Aenean cursus tellus mauris, quis consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                        </div>

                    </div>
                </div>

            </div>
        </div>

    </div>
</section>

<!-- map -->
<style type="text/css">
    #liuyanban {
        width: 100%;
        height: 333px;
        margin-top: 40px;
    }

    #liuyan {
        width: 100%;
        height: 50px;
        margin-top: 0px;
    }
</style>

<%--<script language="text/JavaScript">
    var map = new BMap.Map("baiduMap");
    map.addControl(new BMap.NavigationControl());
    map.addControl(new BMap.ScaleControl());
    map.addControl(new BMap.OverviewMapControl());
    map.addControl(new BMap.MapTypeControl());
    map.centerAndZoom(new BMap.Point(120.12, 30.16), 11);
    var local = new BMap.LocalSearch(map, {
        renderOptions:{map: map}
    });
    local.search("杭州市西湖区");
</script>--%>

</body>


</html>