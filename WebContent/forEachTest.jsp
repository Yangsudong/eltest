<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEachTest.jsp</title>
</head>
<body>
for문
<table border="1" width="50">
<% request.setAttribute("sum", 0); %>
<% for(int i=1; i<=10; i++){ %>
	<tr>
		<% if(i%2==0) { %>	
		<td><%=i %></td>
		<% } else { %>
		<td style="background-color:yellow"><%=i%></td>
		<% } %>
	</tr>
<% } %>
</table> ㅡ
<hr>
EL forEach문
<table border="1" width="50">
<c:set var="sum" value="0" scope="session"/>
<c:forEach begin="1" end="10" var="i">
	<tr>
		<c:set var ="style" value="" />
		<c:if test="${i % 2 == 0 }">
			<c:set var="style" value="style='background-color:lightgray;'" />
		</c:if>	
		<td ${style}>${i}</td>
	</tr>
</c:forEach>
</table>
<hr>
<table border="1" width="50">
<c:set var="sum" value="0" scope="session"/>
<c:forEach begin="1" end="10" var="i">
	<tr>
		<td <c:if test="${i % 2 == 0 }"> style='background-color:red;'</c:if> >${i}</td>
	</tr>
</c:forEach>
</table>
</body>
</html>