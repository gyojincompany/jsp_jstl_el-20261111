<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- java for문 -->
	<%
		for(int i=1;i<=5;i++) {
	%>
		<h2><%= i %>번째 인사입니다.</h2>
		<h2>안녕하세요</h2>
	<%			
		}	
	%>
	
	<%
		String[] strs = {"이순신", "김유신", "강감찬"};
	
		request.setAttribute("strs", strs);
		
		for(int i=0;i<strs.length;i++) {
		//for(String str:strs)	
	%>
			<h2><%= strs[i] %></h2>
	<%		
		}
	
	%>
	<hr>
	<!-- jstl for문 -->
	<c:forEach var="i" begin="1" end="5">
		<h2>${i}번째 인사입니다.</h2>
		<h2>안녕하세요</h2>
	</c:forEach>
	
	<hr>
	<!-- jstl for문으로 배열 돌리기 -->
	<c:forEach var="str" items="${strs}">
		<h2>${str }</h2>
	</c:forEach>
	
</body>
</html>