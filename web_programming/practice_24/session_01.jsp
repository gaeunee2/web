<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session01</title>
</head>
<body>
<form action="session_02.jsp" name="session" method="post">
	아이디 : <input type="text" name="username"/><br><br>
	비밀번호 : <input type="password" name="passwd"/><br><br>
	<input type="submit" value="로그인"/>
	<input type="reset" value="취소"/>
</form>
</body>
</html>