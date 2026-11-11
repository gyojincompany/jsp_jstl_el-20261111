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
		request.setCharacterEncoding("utf-8");
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		if(mid.equals("tiger") && mpw.equals("12345")) { //로그인 성공->세션에 아이디를 저장
			session.setAttribute("loginId", mid);
		}
	%>
	
	<h2>현재 로그인 중인 아이디는 ${sessionScope.loginId } 입니다.</h2>
	<a href="sessionTest.jsp">다른 페이지로 이동</a>
</body>
</html>
