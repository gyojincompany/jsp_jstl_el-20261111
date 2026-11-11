<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name="홍길동";
		int age = 25;
		
		request.setAttribute("name", "홍길동");
		request.setAttribute("age", 25);
	%>
	
	<h2>나의 이름은 <%= name %>입니다.</h2>
	<h2>나의 나이는 <%= age %>살 입니다.</h2>
	<hr>	
	<h2>나의 이름은 ${name }입니다.</h2>
	<h2>나의 나이는 ${age }살 입니다.</h2>
</body>
</html>