<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session03</title>
</head>
<body>
<%
	long time = (session.getLastAccessedTime() - session.getCreationTime()) / 1000;
	out.println("세션이 생성된 후 " + time + "초가 지났습니다.");
%>
</body>
</html>