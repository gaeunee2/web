<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session02</title>
</head>
<body>
<%
	String name=request.getParameter("username");

	out.println(name + "님 환영합니다.<br><br>");
	out.println("세션 ID : " + session.getId());
	out.println("<br>세션 지속시간(default) : ");
	out.println(session.getMaxInactiveInterval() + "초<br><br>");
	
	out.println("<a href='session_03.jsp' target='_blank'>session_03.jsp로 가기</a>");
%>
</body>
</html>