<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greeting message</title>
</head>
<body>
<h3>greeting.jsp에서 출력한 메시지입니다.</h3>
<br>
	<%=request.getParameter("name") %>님 환영합니다.
	<br>
	오늘은 <%=request.getParameter("date") %>입니다.
</body>
</html>