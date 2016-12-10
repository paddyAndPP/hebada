<!DOCTYPE html>
<html>
<head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="${pageContext.request.contextPath}/assets/lib/avalon/avalon.js"></script>
</head>
<body ms-controller="test">
<script>
    avalon.define({
        $id:"test",
        text:"avalon属性",
        arr:[{href:"http://www.baidu.com", name:"baidu"},{href:"http://www.taobao.com", name:"taobao"}]

    });
</script>

<div ms-controller="div1">
    <p :attr="@obj">{{@text}}</p>
    <ul>
        <li ms-for="el in @arr"><a href="{{el.href}}">{{el.name}}</a></li>
    </ul>
    <input type="text" ms-duplex="@text">
</div>

</body>
</html>