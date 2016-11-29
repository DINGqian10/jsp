<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>展示女朋友页面</title>

</head>

<!-- 初始化女朋友 -->

<jsp:useBean id="myGirlFriend" class="com.sccc.GirlFriend"  scope="session"/>

<!-- 一次填入 ，再无烦恼 -->
<jsp:setProperty property="*" name="myGirlFriend"/>

<!--  
<jsp:setProperty  name="myGirlFriend"  property ="yanZhi"/>
<jsp:setProperty  name="myGirlFriend"  property ="tiZhong"/>
<jsp:setProperty  name="myGirlFriend"  property ="shenGao"/>
<jsp:setProperty  name="myGirlFriend"  property ="shengQi"/>
<jsp:setProperty  name="myGirlFriend"  property ="ai"/>
-->

</head>
<body bgcolor="pink"
  onload="movePic()">
    <img id="9" src="image/9.gif"
     style="position:absolute;z-index:2; right:1px;" >
     
<p>宠物的颜值：<jsp:getProperty name="myGirlFriend" property="yanZhi"/></p>
<p>宠物的体重：<jsp:getProperty name="myGirlFriend" property="tiZhong"/></p>
<p>宠物的可爱值：<jsp:getProperty name="myGirlFriend" property="shenGao"/></p>
<p>宠物的怒值：<jsp:getProperty name="myGirlFriend" property="shengQi"/></p>
<p>宠物的爱值：<jsp:getProperty name="myGirlFriend" property="ai"/></p>
<p><a href="status.jsp">前方让开，本宝宝要开始测试了</a></p>
</body>
</html>