<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<html>
 <head>
    <meta charset="utf-8"> 
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>个人博客</title>
		  </head>
 <!-- Bootstrap (http://v4-alpha.getbootstrap.com/) -->
 <script >

//      $(.nav-linlk).click=function () {
//          top.main.location.href=moduleName+"/main.action";
//      }
         function pop(moduleName) {
             top.main.location.href=moduleName+"/Main.action";
         }
 </script>
     <body>
	  <div class="tm-header">
            <div class="container-fluid">
                <div class="tm-header-inner">
                    <a href="${ctx}/inex.jsp" class="navbar-brand tm-site-name">I LOVE JAVA</a>
                    
                    <!-- navbar -->
                    <nav class="navbar tm-main-nav">

                        <button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        
                        <div class="collapse navbar-toggleable-sm" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item ">
                                    <a href="javascript:void(0);" onclick="pop('home')" class="nav-link" >主页</a>
                                </li>
                                <li class="nav-item">
                                    <a href="javascript:void(0);" onclick="pop('about')" class="nav-link">关于</a>
                                </li>
                                <li class="nav-item">
                                    <a href="javascript:void(0);" onclick="pop('blog')" class="nav-link">博客</a>
                                </li>
                                <li class="nav-item">
                                    <a href="javascript:void(0);" onclick="pop('contact')" class="nav-link">联系我</a>
                                </li>
                            </ul>                        
                        </div>
                        
                    </nav>  

                </div>                                  
            </div>            
        </div>
      </body>

</html>
		
		