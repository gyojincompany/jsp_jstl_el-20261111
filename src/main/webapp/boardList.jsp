<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="boarddto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글목록</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%
		List<BoardDto> boardList = new ArrayList<BoardDto>();
		
		//게시판 더미(dummy) 데이터 만들기
		BoardDto boardDto1 = new BoardDto();
		boardDto1.setBnum(1); //글 번호
		boardDto1.setBtitle("안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요.안녕하세요. 첫글이네요."); //글 제목
		boardDto1.setBcontent("첫글 내용입니다."); //글 내용
		boardDto1.setBwriter("김유신"); //글 작성자
		boardDto1.setBdate("2026-11-11");//글 작성일시
		
		BoardDto boardDto2 = new BoardDto();
		boardDto2.setBnum(2); //글 번호
		boardDto2.setBtitle("오늘 날씨 춥네요."); //글 제목
		boardDto2.setBcontent("2번글 내용입니다."); //글 내용
		boardDto2.setBwriter("강감찬"); //글 작성자
		boardDto2.setBdate("2026-11-12");//글 작성일시
		
		BoardDto boardDto3 = new BoardDto();
		boardDto3.setBnum(3); //글 번호
		boardDto3.setBtitle("저는 야구가 좋아요."); //글 제목
		boardDto3.setBcontent("3번글 내용입니다."); //글 내용
		boardDto3.setBwriter("홍길동"); //글 작성자
		boardDto3.setBdate("2026-11-13");//글 작성일시
		
		//ArrayList인 boardList에 객체 넣기(글 3개 넣기)
		boardList.add(boardDto1);
		boardList.add(boardDto2);
		boardList.add(boardDto3);
		
		request.setAttribute("boardList", boardList);
	%>
	
	<h2>게시판 목록</h2>
	<hr>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="bdto" items="${boardList}">
				<tr>
					<td>${bdto.bnum}</td>
					<td>
						<c:choose>
							<c:when test="${fn:length(bdto.btitle) > 50}">
								${fn:substring(bdto.btitle,0,51)}...
							</c:when>
							<c:otherwise>
								${bdto.btitle}
							</c:otherwise>
						</c:choose>			
					</td>
					<td>${bdto.bwriter}</td>
					<td>${bdto.bdate}</td>
				</tr>
			</c:forEach>
		</tbody>	
	</table>
</body>
</html>