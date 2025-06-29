<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
input[type="submit"] {
	background-color: rgb(248, 245, 227);
	color: black;
	border: 1px solid black;
}
</style>
</head>
<body>
<form action="page_control_02.jsp" name="login_f" method="post">
<table>
	<tr>
		<td>아이디: </td>
		<td><input type="text" name="username"/></td>
		<td>비밀번호: </td>
		<td><input type="password" name = "passwd"/></td>
		<td><input type="submit" value="forward 전송"/></td>
	</tr>
</table>
</form>

<form action="page_control_03.jsp" name="login_s" method="get">
<table>
	<tr>
		<td>아이디: </td>
		<td><input type="text" name="username"/></td>
		<td>비밀번호: </td>
		<td><input type="password" name = "passwd"/></td>
		<td><input type="submit" value="sendRedirect 전송"/></td>
	</tr>
</table>
</form>
</body>
</html>