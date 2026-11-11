<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl if문 연습</title>
</head>
<body>
	<h3>자바 사용 if문</h3>
	<%
		if(10 > 5) {
	%>
		<h2>10은 5보다 크다</h2>
	<%
		} else {
	%>	
		<h2>5는 10보다 작다</h2>
	<% 
		}
	%>
	<!-- 자바 if else if문 -->
	<%
		int score1 = 75;
	
		if(score1 >= 90) {
	%>
		<h2>수!</h2>
	<%
		} else if(score1 >= 80) {
	%>	
		<h2>우!</h2>
	<%
		} else if(score1 >= 70) {
	%>
		<h2>미!</h2>	
	<%		
		} else if(score1 >= 60) {
	%>
		<h2>양!</h2>
	<%
		} else {
	%>	
		<h2>가!</h2>
	<%
		}
	%>	
		
	
	<hr>
	<h3>JSTL 사용 if문</h3>
	<!-- if문 -->
	<c:if test="${10>5}">
		<h2>10은 5보다 크다</h2>
	</c:if>
	
	
	<!-- if else문 -->
	<c:choose>
		<c:when test="${10>5}">
			<h2>10은 5보다 크다</h2>
		</c:when>
		<c:otherwise>
			<h2>10은 5보다 작다</h2>
		</c:otherwise>
	</c:choose>
	
	<!-- int score=75; jstl로 변수 선언 -->
	<c:set var="score2" value="75" />
	
	<!-- if else if문 -->
	<c:choose>
		<c:when test="${score2 >= 90}">
			<h2>수!</h2>
		</c:when>
		<c:when test="${score2 >= 80}">
			<h2>우!</h2>
		</c:when>
		<c:when test="${score2 >= 70}">
			<h2>미!</h2>
		</c:when>
		<c:when test="${score2 >= 60}">
			<h2>양!</h2>
		</c:when>
		<c:otherwise>
			<h2>가!</h2>
		</c:otherwise>		
	</c:choose>
</body>
</html>