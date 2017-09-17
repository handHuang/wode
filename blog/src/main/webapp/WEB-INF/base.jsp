<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>


<link rel="stylesheet" href="${ctx }/staticfiles/css/bootstrap.min.css">                                      <!-- Bootstrap style -->
<link rel="stylesheet" href="${ctx }/staticfiles/css/templatemo-style.css">
<script language="javascript" src="${ctx}/staticfiles/js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
<script language="javascript" src="${ctx}/staticfiles/js/tether.min.js"></script> <!-- Tether for Bootstrap, http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h -->
<script  language="javascript" src="${ctx}/staticfiles/js/bootstrap.min.js"></script><!-- Templatemo style -->

<script src="${ctx}/staticfiles/js/html5shiv.min.js" language="javascript"></script>
<script src="${ctx}/staticfiles/js/response.min.js" language="JavaScript"></script>
<script src="${ctx}/staticfiles/ckeditor/ckeditor.js"></script>
<script language="javascript">
  function openWindow(moduleName) {
      window.open (moduleName);
      //写成一行
  }
</script>