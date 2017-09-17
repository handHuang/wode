<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <script src="staticfiles/js/jquery-1.11.3.min.js">
    </script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>关键字检索</title>
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>

    <style type="text/css">
        #panel {
            position: absolute;
            background-color: white;
            max-height: 50%;
            overflow-y: auto;
            top: 10px;
            right: 10px;
            width: 280px;

        }
    </style>
    <style>
        .pot {
            position:absolute; top: 0;
            float: left;
        }
    </style>
    <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.4.0&key=14bc9023921606b060ef97f45ececbc6"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>

</head>
<body>

<div id="container" style="width: 657px; height: 620px; "></div>
<div id="panel"></div>


<script type="text/javascript">
    $(document).ready(function () {
        $("#button1").click(function () {
            var $x=$("#address").val();


            var map = new AMap.Map("container", {
                resizeEnable: true
            });
            AMap.service(["AMap.PlaceSearch"], function() {
                var placeSearch = new AMap.PlaceSearch({ //构造地点查询类
                    pageSize: 5,
                    pageIndex: 1,
                    city: "010", //城市
                    map: map,
                    panel: "panel"
                });
                //关键字查询
                placeSearch.search($x);
            });
        })
    })

</script>
<div class="pot">
    <form action="Untitled-3.html" name="zhuce2" method="post">
        <div><input id="address" type="text" name="username" value="地图搜索" />
            <input type="button" name="denglu" id="button1" value="搜索" />
        </div>
    </form>

</div>
</body>
</html>