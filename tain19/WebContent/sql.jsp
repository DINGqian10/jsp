<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  import="java.sql.*,java.io.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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


<sql:query var="result" dataSource="${he}">
  select * from hero;
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

<sql:update dataSource="${he}" var="count">
 insert into hero(id,name,nick_name,description) values('27','嘉文四世','德玛西亚皇子','上单');
</sql:update>

<c:set var="hero_id" value="20"/>

<sql:update dataSource="${he}" var="count">
 delete * from hero where id=?
<sql:param value="${hero_id}"/>
</sql:update>


</body>
</html>