<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
  <title>显示时间</title>
</head>
<body>

<c:set var="now" value="<%=new java.util.Date() %>" />
<p>日期格式化 : <fmt:formatDate type="both" 
                            dateStyle="long" 
                            timeStyle="long" 
                            value="${now}" /></p>
</body>
</html>