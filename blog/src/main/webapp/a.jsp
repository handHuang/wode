<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="WEB-INF/base.jsp"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		body, html {width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
		#allmap{width:100%;height:500px;}
		p{margin-left:5px; font-size:14px;}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=2gCYlui0bPzYmHZRKAbfQIva36u9DWq3"></script>
	<title>根据关键字本地搜索</title>
</head>
<body>
	<div id="allmap"></div>
	<p>返回北京市“景点”关键字的检索结果，并展示在地图上</p>
<textarea cols="80" class="ckeditor" id="editor1" name="comments" rows="10"  >
</textarea>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");   
map.addControl(new BMap.NavigationControl());    
map.addControl(new BMap.ScaleControl());    
map.addControl(new BMap.OverviewMapControl());    
map.addControl(new BMap.MapTypeControl());    	
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
	var local = new BMap.LocalSearch(map, {
		renderOptions:{map: map}
	});
	local.search("杭州市西湖区");
</script>