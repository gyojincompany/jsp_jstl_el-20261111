<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl 함수(function) 연습</title>
</head>
<body>
	<%
		String str = "Korea";
		
		//str 문자열의 길이를 출력하시오
		out.println("문자열 str의 길이:" + str.length());
		
		request.setAttribute("str", str);
	%>
	
	<!-- jstl의 함수 사용 -->
	<h3>str 문자열의 길이 : ${fn:length(str)}</h3>
	
	<c:set var="strs" value="${['홍길동','김유신','강감찬']}" />
	<h3>strs 배열의 길이 : ${fn:length(strs)}</h3>
	
	<h2>대문자로 변환 : ${fn:toUpperCase(str)}</h2>
	<h2>소문자로 변환 : ${fn:toLowerCase(str)}</h2>
	
	<h2>앞 3글자만 추출 : ${fn:substring(str, 0, 3)}</h2>
	<h2>중간 2글자만 추출 : ${fn:substring(str, 2, 4)}</h2>
	<h2>마지막 2글자만 추출 : ${fn:substring(str, 3, 5)}</h2>
	
	
</body>
</html>