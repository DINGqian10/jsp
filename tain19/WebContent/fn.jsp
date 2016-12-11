<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>..</title>
</head>
<body>
  <c:set var="theString" value="what's your name" />
  <c:if test="${fn:contains(theString,'name')}">
    <p>找到name</p>
  </c:if>

  <c:if test="${fn:contains(theString,'Name')}">
   <p>找到Name</p>
  </c:if>

  <c:set var="string1" value="welcome to HangZhou."/>
  <c:set var="string2" value="yan hua san yue."/> 
 <p>长度1: ${fn:length(string1)}</p>
 <p>长度2: ${fn:length(string2)}</p>

  <c:set var="string1" value="welcome to LuZhou"/>
  <c:set var="string2" value="${fn:substring(string1,1,5)}"/>
  <p>生成的字符串:${string2}</p>

  
  <c:set var="string1" value="welcome to LuZhou"/>
  <c:set var="string2" value="${fn:substringAfter(string1,'to')}"/>
  <p>生成的字符串:${string2}</p>

  <c:set var="string1" value="sky and sea"/>
  <c:set var="string2" value="${fn:replace(string1,'sky','land')}"/>
  <p>替换后的字符串:${string2}</p>

  
</body>
</html>