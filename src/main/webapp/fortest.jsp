<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for문 연습</title>
</head>
<body>
	<%
		for(int i=1;i<=5;i++) {
	%>
		<h2>안녕하세요</h2>
	<%			
		}	
	%>
	<!-- 학점 출력 프로그램 -->
	<%
	
		int score = 75;
		
		if(score >= 90) {
	
	%>
			<h2>수</h2>
	<%
		} else if(score >= 80) {
	%>			
			<h2>우</h2>
	<%
		}
	%>			
</body>
</html>