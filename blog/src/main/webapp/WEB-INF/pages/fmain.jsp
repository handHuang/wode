<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<html>
<head>
<meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>个人博客</title>
    <!-- load stylesheets -->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

<frameset rows="125,*" name="topFrameset" border="0">
<frame name="top_frame" height="100" scrolling="no"  target="middleFrameSet" src="title.action">
<frame name="main"  src="home/Main.action" />
</frameset>

<noframes>

<body>
    <p>此网页使用了框架，但您的浏览器不支持框架。</p>
</body>
</noframes>

</html>