<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.ArrayList"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>一个月上下旬</title>
</head>
<body>
<c:set var="salary" scope="session" value="${30}"/>
<p>日期为 : <c:out value="${salary}"/></p>
<c:choose>
    <c:when test="${salary <= 15}">
       上旬。
    </c:when>
    <c:when test="${salary >= 30}">
      下旬。
    </c:when>
    <c:otherwise >
        。
    </c:otherwise>
</c:choose>
</body>
</html>