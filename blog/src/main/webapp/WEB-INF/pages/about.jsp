<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>个人博客 - 关于</title>

    <%-- 时间轴静态资源 --%>
    <link rel="stylesheet" type="text/css" href="${ctx}/staticfiles/ftimeaxis/css/history.css">
    <script type="text/javascript" src="${ctx}/staticfiles/ftimeaxis/js/jquery.js"></script>
    <script type="text/javascript" src="${ctx}/staticfiles/ftimeaxis/js/jquery.mousewheel.js"></script>
    <script type="text/javascript" src="${ctx}/staticfiles/ftimeaxis/js/jquery.easing.js"></script>
    <script type="text/javascript" src="${ctx}/staticfiles/ftimeaxis/js/history.js"></script>
</head>

<body>

<div id="arrow">
    <ul>
        <li class="arrowup"></li>
        <li class="arrowdown"></li>
    </ul>
</div>

<div id="history">

    <div class="title">
        <h2>博客成长史</h2>
        <div id="circle">
            <div class="cmsk"></div>
            <div class="circlecontent">
                <div thisyear="2066" class="timeblock">
                    <span class="numf"></span>
                    <span class="nums"></span>
                    <span class="numt"></span>
                    <span class="numfo"></span>
                    <div class="clear"></div>
                </div>
                <div class="timeyear">YEAR</div>
            </div>
            <a href="#" class="clock"></a>
        </div>
    </div>

    <div id="content">
        <ul class="list">
            <li style="margin-top:-110px;">
                <div class="liwrap">
                    <div class="lileft">
                        <div class="date">
                            <span class="year">2017</span>
                            <span class="md">0917</span>
                        </div>
                    </div>

                    <div class="point"><b></b></div>

                    <div class="liright">
                        <div class="histt"><a href="#">个人博客 发展历程 发布</a></div>
                        <div class="hisct">发布个人博客，欢迎大家测试，如果发现问题请联系我们,谢谢。</div>
                    </div>
                </div>
            </li>
            <li>
                <div class="liwrap">
                    <div class="lileft">
                        <div class="date">
                            <span class="year">2017</span>
                            <span class="md">0918</span>
                        </div>
                    </div>

                    <div class="point"><b></b></div>

                    <div class="liright">
                        <div class="histt"><a href="#">第一篇博文发布</a></div>
                        <div class="hisct">Spring的异常处理包含spring中常见的异常类型以及spring的处理方式</div>
                    </div>
                </div>
            </li>
            <li>
                <div class="liwrap">
                    <div class="lileft">
                        <div class="date">
                            <span class="year">2017</span>
                            <span class="md">0920</span>
                        </div>
                    </div>

                    <div class="point"><b></b></div>

                    <div class="liright">
                        <div class="histt"><a href="#">切点表达式高级用法</a></div>
                        <div class="hisct">可以通过切点表达式直接获取方法上的注解，注入过程，根据切点表达式首先会匹配满足条件的类的方法</div>
                    </div>
                </div>
            </li>
            <li>
                <div class="liwrap">

                    <div class="lileft">
                        <div class="date">
                            <span class="year">2017</span>
                            <span class="md">0921</span>
                        </div>
                    </div>

                    <div class="point"><b></b></div>

                    <div class="liright">
                        <div class="histt"><a href="#">堆和栈的区别</a></div>
                        <div class="hisct">堆和栈的区别可以用如下的比喻来看出： 使用栈就象... 使用堆就象...</div>
                    </div>
                </div>
            </li>
            <li>
                <div class="liwrap">
                    <div class="lileft">
                        <div class="date">
                            <span class="year">2017</span>
                            <span class="md">0927</span>
                        </div>
                    </div>

                    <div class="point"><b></b></div>

                    <div class="liright">
                        <div class="histt"><a href="#">正则表达式基本语法</a></div>
                        <div class="hisct">正则表达式基本语法:两个特殊的符号&#39;^&#39;和&#39;$&#39;。他们的作用是分别指出一个字符串的开始和结束...</div>
                    </div>
                </div>
            </li>
            <li>
                <div class="liwrap">
                    <div class="lileft">
                        <div class="date">
                            <span class="year">2017</span>
                            <span class="md">1001</span>
                        </div>
                    </div>

                    <div class="point"><b></b></div>

                    <div class="liright">
                        <div class="histt"><a href="#">SSM框架详细整合教程</a></div>
                        <div class="hisct">使用SSM（Spring、SpringMVC和Mybatis）已经有三个多月了，项目在技术上已经没有什么难点了，基于现有的技术就可以实现想要的功能...</div>
                    </div>
                </div>
            </li>
            <li>
                <div class="liwrap">

                    <div class="lileft">
                        <div class="date">
                            <span class="year">2017</span>
                            <span class="md">1004</span>
                        </div>
                    </div>

                    <div class="point"><b></b></div>

                    <div class="liright">
                        <div class="histt"><a href="#">SSH和SSM对比总结</a></div>
                        <div class="hisct">当下流行的两种企业开发MVC开源框架，是我们Java程序猿必备知识能力。MVC，即...</div>
                    </div>
                </div>
            </li>
            <li>
                <div class="liwrap">
                    <div class="lileft">
                        <div class="date">
                            <span class="year">2017</span>
                            <span class="md">1006</span>
                        </div>
                    </div>

                    <div class="point"><b></b></div>

                    <div class="liright">
                        <div class="histt"><a href="#">SpringBoot和SpringCloud实现为服务框架效</a></div>
                        <div class="hisct">这里所有的总结只是停留在对Spring Cloud的理解上，我推荐去http://projects.spring.io/...</div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>

</body>
</html>