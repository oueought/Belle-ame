<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 비로그인 상태 --%>
<% if(session.getAttribute("login") == null ) { %>
<strong>로그인이 필요합니다</strong>
<button>회원가입</button>
<button onclick="location.href='/login'">로그인</button>
<% } %>

<%-- 로그인 상태 --%>
<% if(session.getAttribute("login") != null && (boolean) session.getAttribute("login") ) { %>
<strong><%=session.getAttribute("memnick") %>님, 환영합니다</strong>
<button onclick="location.href='./board/list'">게시판가기</button>
<button onclick="location.href='/main/logout'">로그아웃</button>
<% } %>

</body>
</html>