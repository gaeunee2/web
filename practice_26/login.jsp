<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간단 로그인</title>
<style>

</style>
</head>
<body>
<form action="tracking.jsp" name="login" method="post">
	관리자 이름 : <input type="text" name="username" size="15"/>
	&nbsp;&nbsp;관리자 위치 : <input type="text" name="locate" size="15"/>
	&nbsp;&nbsp;<input type="submit" value="로그인"/>
</form>
</body>
</html>