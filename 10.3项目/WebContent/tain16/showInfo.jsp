c<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.sccc.GirlFriend" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>接受审判吧少年！</title>

</head>
<body bgcolor= "pink"
onload="movePic()">
    <img id="6" src="image/6.gif"
    width="400px"
    height="400px"
     style="position:absolute;z-index:2; right:1px;" 
>
<%
   GirlFriend gf=(GirlFriend)session.getAttribute("myGirlFriend");
   String phone=request.getParameter("phone");
   
   int shengQi = gf.getShengQi();
   int ai = gf.getAi();
   
   if(phone.equals("0")){
	   shengQi=shengQi+10;
   }else if(phone.equals("1")){
	   shengQi = shengQi+30;
   }else if(phone.equals("2")){
	   ai=ai+20;
   }else {
	   ai =ai +10;
	   shengQi = shengQi + 10;
   }
   gf.setShengQi(shengQi);
   gf.setAi(ai);
   
   if(gf.getShengQi()> 20){
	   out.print("<h1>恭喜你，你已经 go die了</h1>");
   }else{
	   out.print("<h1>你要小心，宠物的怒气已达到"+gf.getShengQi()+"</h1>");
	   
   if(gf.getAi()>30){
	   out.print("<h1>哎哟，不错哦，宠物还是蛮喜欢你的嘛~</h1>");
   }
   out.print("<p><a href='status.jsp'>继续测试</a></p>");
   }
   if(gf.getAi()>100){
	   out.print("<h1>恭喜你们可以步入殿堂了~</h1>");
   }
   %>
</body>
</html>