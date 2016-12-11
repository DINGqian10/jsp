<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  import="java.sql.*,java.io.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
  <sql:setDataSource 
  var="he" 
  driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
  url="jdbc:sqlserver://localhost:1433;DatabaseName=software"
  user="sa"  
  password="withanorchid"/>


<!-- 显示出id为10到20的全部英雄 -->
<sql:query var="result" dataSource="${he}">
  select * from hero where id>9 and id<21;
</sql:query>


<table border="1" width="100%">
<tr>
<th>编号</th>
<th>名字</th>
<th>称号</th>
<th>描述</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.id}"/></td>
<td><c:out value="${row.name}"/></td>
<td><c:out value="${row.nick_name}"/></td>
<td><c:out value="${row.description}"/></td>
</tr>
</c:forEach>
</table>

<p>

<!-- 查询id为22的英雄  -->

<sql:query dataSource="${he}" var="result">
 select * from hero where id=22
</sql:query>

<table border="1" width="100%">
<tr>
<th>编号</th>
<th>名字</th>
<th>称号</th>
<th>描述</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.id}"/></td>
<td><c:out value="${row.name}"/></td>
<td><c:out value="${row.nick_name}"/></td>
<td><c:out value="${row.description}"/></td>
</tr>
</c:forEach>
</table>

<p>

<!-- 查询替换  -->
<sql:query var="result" dataSource="${he}">
select * from hero where name='艾希';
</sql:query>


<c:forEach items="${result.rows}" var="hero">
<c:if test="${fn.contains(hero.name,'艾希')}" />
   ${fn:replace(hero.name,'艾希','盖伦')}
</c:forEach>

<p>

<!-- 截断字符 -->
<sql:query var="result" dataSource="${he}">
  select * from hero where name='盖伦';
</sql:query>

<c:forEach items="${result.rows}" var="hero">
<c:if test="${fn.contains(hero.name,'盖伦')}"/>
  ${fn:substringBefore(hero.nick_name,'之')}
</c:forEach>

<p>

<!-- 获取英雄描述长度 -->
<sql:query var="result" dataSource="${he}">
select * from hero where id=9;
</sql:query>

<c:forEach items="${result.rows}" var="hero">
 ${fn:length(hero.description)}
</c:forEach>

</body>
</html>