<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl test</title>
</head>
<body>
	<%
		String str1 = "대한민국";
		request.setAttribute("strEl", str1);
	%>
	
	<h3>내가 태어난 나라는 ${strEl } 입니다.</h3>
	
	<c:set var="str2" value="미국" />
	
	<h3>내가 태어난 나라는 ${str2 } 입니다.</h3>
	
</body>
</html>