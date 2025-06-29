<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류 메시지</title>
<style>
body {
	text-align: center;
}
table {
	width: 70%;
	margin: auto;
}
td {
	font-size: 15px;
}
.orange {
	background-color: rgb(255, 218, 185);
}
.yellow {
	background-color: rgb(255, 239, 213);
}
</style>
</head>
<body>
<img src="image/eclass_title.jpg" style="margin: auto; width: 100%">
<table>
	<tr class="orange">
		<td><b>오류가 발생했습니다</b></td>
	</tr>
	<tr class="yellow">
		<td><br><br>
		<img src="image/flower.gif" style="width: 80px;"><br><br>
		오류 발생시간: <%= new java.util.Date() %><br><br>
		최대한 빨리 조치하겠습니다.<br><br><br></td>
	</tr>
</table>
</body>
</html>