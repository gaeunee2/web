<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 12</title>
<style>
h1 {
	text-align: center;
	font-family: 'Times';
}
.gulim {
	font-family: 'Gulim';
}
</style>
</head>
<body>
<h1>include <span class="gulim">지시어 연습</span></h1>
<hr>
<table style="border: none; margin: auto; width: 80%;">
	<tr>
		<td style="width: 50%"><%@ include file="calendar.jsp" %></td>
		<td style="width: 50%"><%@ include file="news.jsp" %></td>
	</tr>
</table>
</body>
</html>