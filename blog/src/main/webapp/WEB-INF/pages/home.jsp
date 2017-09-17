<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人博客</title>

    <!-- load stylesheets -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <![endif]-->
</head>
<body>
        <div class="tm-home-img-container">
            <img src="${ctx}/staticfiles/img/tm-home-img.jpg" alt="Image" class="hidden-lg-up img-fluid">
        </div>

        <section class="tm-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-xs-center">
                        <h2 class="tm-gold-text tm-title">简介</h2>
                        <p class="tm-subtitle">这是一个用于技术交流的网站</p>
                    </div>
                </div>
				
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">

                        <div class="tm-content-box">
                            <img src="${ctx}/staticfiles/img/tm-img-310x180-1.jpg" alt="Image" class="tm-margin-b-20 img-fluid">
                            <h4 class="tm-margin-b-20 tm-gold-text"> 初识java</h4>
                            <p class="tm-margin-b-20">一个小白百般无聊后
							偶然间心血来潮 想做一个个人博客
                            那就做吧</p>
                            <a href="#" class="tm-btn text-uppercase">Read More</a>
                        </div>  

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">

                        <div class="tm-content-box">
                            <img src="${ctx}/staticfiles/img/tm-img-310x180-2.jpg" alt="Image" class="tm-margin-b-20 img-fluid">
                            <h4 class="tm-margin-b-20 tm-gold-text"> JAVA 单例模式</h4>
                            <p class="tm-margin-b-20">
                            简单讨论5种单例模式
                                <br>
							</p>
                            <a href="#" class="tm-btn text-uppercase">Read More</a>
                        </div>  

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">

                        <div class="tm-content-box">
                            <img src="${ctx}/staticfiles/img/tm-img-310x180-3.jpg" alt="Image" class="tm-margin-b-20 img-fluid">
                            <h4 class="tm-margin-b-20 tm-gold-text">springboot框架的使用</h4>
                            <p class="tm-margin-b-20">springboot框架与idea工具
                                <br>
                           </p>
                            <a href="#" class="tm-btn text-uppercase">Read More</a>
                        </div>  

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">

                        <div class="tm-content-box">
                            <img src="${ctx}/staticfiles/img/tm-img-310x180-4.jpg" alt="Image" class="tm-margin-b-20 img-fluid">
                            <h4 class="tm-margin-b-20 tm-gold-text">小谈springmvc</h4>
                            <p class="tm-margin-b-20">
                                视图分发器+视图解析器+接受参数
                                <br>
                            </p>
                            <a href="#" class="tm-btn text-uppercase">Read More</a>
                        </div>  

                    </div>
                </div> <!-- row -->

                <div class="row tm-margin-t-big">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="tm-2-col-left">
                            
                            <h3 class="tm-gold-text tm-title">http请求</h3>
                            <p class="tm-margin-b-30">一次请求发送的完整过程</p>
                            <img src="${ctx}/staticfiles/img/tm-img-660x330-1.jpg" alt="Image" class="tm-margin-b-40 img-fluid">
                            <p>
                               http是基于ip和tcp的互联网协议.tcp是一种需要建立通道的通信协议
                            </p>
                            <p>一次完整的HTTP请求所经历的7个步骤

                                HTTP通信机制是在一次完整的HTTP通信过程中，Web浏览器与Web服务器之间将完成下列7个步骤：

                                1. 建立TCP连接
                                2. Web浏览器向Web服务器发送请求命令
                                3. Web浏览器发送请求头信息
                                4. Web服务器应答
                                5. Web服务器发送应答头信息
                                6. Web服务器向浏览器发送数据
                                7. Web服务器关闭TCP连接
                            </p>
                            <a href="#" class="tm-btn text-uppercase">Read More</a>

                        </div>
                    </div>
                    


                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">

                        <div class="tm-2-col-right">

                            <div class="tm-2-rows-md-swap">
                                <div class="tm-overflow-auto row tm-2-rows-md-down-2">
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">
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
                                    </div> <!-- col -->

                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-xl-6 tm-xs-m-t">
                                        <h3 class="tm-gold-text tm-title">
                                            常用链接
                                        </h3>
                                        <nav>
                                            <ul class="nav">
                                                <li><a onclick="openWindow('https://www.apache.org')" class="tm-text-link">apache官方网站</a></li>
                                                <li><a onclick="openWindow('https://spring.io')" class="tm-text-link">spring官网</a></li>
                                                <li><a onclick="openWindow('http://www.bootcss.com')" class="tm-text-link">bootstrap官网</a></li>
                                                <li><a onclick="openWindow('http://www.w3school.com.cn')"   class="tm-text-link">w3school官网</a></li>
                                            </ul>
                                        </nav>    
                                    </div> <!-- col -->
                                </div>                        
                                
                                <div class="row tm-2-rows-md-down-1 tm-margin-t-mid">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                                        <h3 class="tm-gold-text tm-title tm-margin-b-30">相关链接</h3>
                                        <div class="media tm-related-post">
                                          <div class="media-left media-middle">
                                            <a href="#">
                                              <img class="media-object" src="${ctx}/staticfiles/img/tm-img-240x120-1.jpg" alt="Generic placeholder image">
                                            </a>
                                          </div>
                                          <div class="media-body">
                                            <a href="#"><h4 class="media-heading tm-gold-text tm-margin-b-15">Lorem ipsum dolor</h4></a>
                                            <p class="tm-small-font tm-media-description">Aenean cursus tellus mauris, quis consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p>
                                          </div>
                                        </div>
                                        <!--
                                        <div class="media tm-related-post">
                                          <div class="media-left media-middle">
                                            <a href="#">
                                              <img class="media-object" src="${ctx}/staticfiles/img/tm-img-240x120-2.jpg" alt="Generic placeholder image">
                                            </a>
                                          </div>
                                          <div class="media-body">
                                            <a href="#"><h4 class="media-heading tm-gold-text tm-margin-b-15">Lorem ipsum dolor</h4></a>
                                            <p class="tm-small-font tm-media-description">Aenean cursus tellus mauris, quis consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p>
                                          </div>
                                        </div>
                                        <div class="media tm-related-post">
                                          <div class="media-left media-middle">
                                            <a href="#">
                                              <img class="media-object" src="${ctx}/staticfiles/img/tm-img-240x120-3.jpg" alt="Generic placeholder image">
                                            </a>
                                          </div>
                                          <div class="media-body">
                                            <a href="#"><h4 class="media-heading tm-gold-text tm-margin-b-15">Lorem ipsum dolor</h4></a>
                                            <p class="tm-small-font tm-media-description">Aenean cursus tellus mauris, quis consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p>
                                          </div>
                                        </div>
                                        -->
                                    </div>
                                </div>    
                            </div>

                        </div>
                        
                    </div>
                </div> <!-- row -->

            </div>
        </section>

        <footer class="tm-footer">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">

                        <div class="tm-footer-content-box">
                            <h3 class="tm-gold-text tm-title tm-footer-content-box-title">Proin eu posuere felis</h3>
                            <div class="tm-gray-bg">
                                <p>Classic is free HTML CSS website template provided by templatemo for everyone. Feel free to use it.</p>
                                <p>Aenean cursus tellus mauris, quis consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p>
                                <p><strong>Danny Egg (Executive)</strong></p>
                            </div>
                        </div>

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                        <div class="tm-footer-content-box tm-footer-links-container">

                            <h3 class="tm-gold-text tm-title tm-footer-content-box-title">Nulla tortor dolor</h3>
                            <nav>
                                <ul class="nav">
                                    <li><a href="#" class="tm-footer-link">Tincidunt non faucibus</a></li>
                                    <li><a href="#" class="tm-footer-link">Vestibulum tempor</a></li>
                                    <li><a href="#" class="tm-footer-link">Fusce non turpis euismod</a></li>
                                    <li><a href="#" class="tm-footer-link">Lorem ipsum dolor sit</a></li>
                                    <li><a href="#" class="tm-footer-link">Nam in augue consectetur</a></li>
                                    <li><a href="#" class="tm-footer-link">Text Link Color #CCCC66</a></li>
                                </ul>
                            </nav>

                        </div>

                    </div>

                    <!-- Add the extra clearfix for only the required viewport
                        http://stackoverflow.com/questions/24590222/bootstrap-3-grid-with-different-height-in-each-item-is-it-solvable-using-only
                    -->
                    <div class="clearfix hidden-lg-up"></div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">

                        <div class="tm-footer-content-box">

                            <h3 class="tm-gold-text tm-title tm-footer-content-box-title">Etiam mollis ornare</h3>
                            <p class="tm-margin-b-30">Aenean cursus tellus mauris, quis consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p><hr class="tm-margin-b-30">
                            <p class="tm-margin-b-30">Aenean cursus tellus mauris, quis consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p><hr class="tm-margin-b-30">
                            <p class="tm-margin-b-30">Aenean cursus tellus mauris, quis consequat mauris dapibus id. Donec scelerisque porttitor pharetra.</p>
                            <a href="#" class="tm-btn tm-btn-gray text-uppercase">Read More</a>

                        </div>

                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">

                        <div class="tm-footer-content-box">

                            <h3 class="tm-gold-text tm-title tm-footer-content-box-title">Fusce non turpis</h3>
                            <div class="tm-margin-b-30">
                                <img src="${ctx}/staticfiles/img/tm-img-100x100-1.jpg" alt="Image" class="tm-footer-thumbnail">
                                <img src="${ctx}/staticfiles/img/tm-img-100x100-2.jpg" alt="Image" class="tm-footer-thumbnail">
                                <img src="${ctx}/staticfiles/img/tm-img-100x100-3.jpg" alt="Image" class="tm-footer-thumbnail">
                                <img src="${ctx}/staticfiles/img/tm-img-100x100-4.jpg" alt="Image" class="tm-footer-thumbnail">
                                <img src="${ctx}/staticfiles/img/tm-img-100x100-5.jpg" alt="Image" class="tm-footer-thumbnail">
                                <img src="${ctx}/staticfiles/img/tm-img-100x100-6.jpg" alt="Image" class="tm-footer-thumbnail">
                            </div>
                            <p class="tm-margin-b-20">Curabitur dui massa, aliquam quis mi sed, tempor vulputate tellus. Sed vestibulum non neque.</p>
                            <a href="#" class="tm-btn tm-btn-gray text-uppercase">Browse</a>

                        </div>

                    </div>


                </div>

                <div class="row">
                    <div class="col-xs-12 tm-copyright-col">
                    </div>
                </div>
            </div>
        </footer>
      
</body>
</html>