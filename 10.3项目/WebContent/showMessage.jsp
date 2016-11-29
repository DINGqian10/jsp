<%@page import="ch10.MessageBean" %>
<%@page import="java.util.ArrayList" %>
<%@ page  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>显示留言内容</title>
</head>
<body background="image/4.gif">
<%
   ArrayList wordlist=(ArrayList)request.getAttribute("wordlist");
if(wordlist==null||wordlist.size()==0)
	out.print("没有留言可显示");
else{
	for(int i=wordlist.size()-1;i>=0;i--){
		MessageBean mm=(MessageBean)wordlist.get(i);
%>

           留  言  者:   <%= mm.getAuthor() %>
 <p>留言时间 :  <%= mm.getTime() %> </p>
 <p>留言标题  :  <%= mm.getTitle() %> </p>
 <p>
 留言内容:
 <textarea rows="8" cols="30" readonly>
    <%= mm.getContent() %>
 </textarea>
 </p>
 <a href="messageBoard.jsp"> 我要留言</a>
 <hr width="90%">
 <%
	}
 }
 %>
</body>
</html>