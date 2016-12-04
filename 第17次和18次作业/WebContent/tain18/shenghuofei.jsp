<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>生活费</title>
</head>
<body>

	<c:set var="salary" scope="session" value="${1000}"/>
	<p>我的生活费: <c:out value="${salary}"/></p>
	
	
	<c:set var="salary" scope="session" value="${250*2}"/>
	<c:if test="${salary >= 500}" >
		<tr>
			<td> 我是个节约的土豪。</td>
		</tr>
	</c:if>
	<c:if test="${salary <=500}" >
		<tr>
			<td> 我是节约的好孩子。</td>
		</tr>
	</c:if>
</body>
</html>