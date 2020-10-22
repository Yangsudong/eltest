<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>배열 (fruit)</h3>
	<c:forEach items="${fruit}" var="temp">
		<div>${temp}</div>	
	</c:forEach>
<hr>
	첫번째과일 : ${fruit[0]}<br>	
	두번째회원의 이름 : ${user[1].name}<br> 
	contents : ${board.content}<br>	
	id : ${login.id}<br>		
	list 첫번째회원의 이름 : ${memberList[0].name}<br>
	
</body>    
</html>