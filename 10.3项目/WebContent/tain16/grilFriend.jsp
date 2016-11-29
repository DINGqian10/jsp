<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>宠物信息</title>
<script type="text/javascript">
        var step=10;
        function movePic()
        {
            var pic = document.getElementById("pic");
            pic.style.left = parseInt(pic.style.left) + step + "px";
            if (parseInt(pic.style.left) + pic.width > document.body.clientWidth) {
                step = -step;
            }
            if (parseInt(pic.style.left) < 0) {
                step = Math.abs(step);
            }
            setTimeout("movePic()",50);
        }
    </script>
</head>
<body 
bgcolor= "pink"
onload="movePic()">
    <img id="pic" src="image/dx.gif"
     style="position:absolute;z-index:2; left:1px;" > 

<h1>
     宠物的信息
     </h1>
    <form action="showGril.jsp" method="post">
     <p>颜值：<input type="text"  name="yanZhi"/></p>
     <p>体重：<input type="text"  name="tiZhong"/></p>
     <p>可爱：<input type="text"  name="shenGao"/></p>
     <p>怒值：<input type="text"  name="shengQi"/></p>
     <p>爱值：<input type="text"  name="ai"/></p>
         <button type="submit">提交</button>
</form>
</body>
</html>