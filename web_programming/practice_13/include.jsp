<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include action</title>
<style>
body {
	text-align: center;
}
</style>
</head>
<body>
<h1>include 액션 연습</h1>
<hr>
<jsp:include page="greeting.jsp">
	<jsp:param name="name" value="동덕여대"/>
	<jsp:param name="date" value="2011/04/05"/>
</jsp:include>
</body>
</html>