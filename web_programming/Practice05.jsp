<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 05</title>
<style>
table {
	margin: auto;
	width: 55%;
}
tr {
	height: 210px;
}
h1 {
	font-family: '굴림';
}
</style>
</head>
<body>
<%
	out.println("<h1 style = 'text-align:center'>구구단 출력</h1>");
	out.println("<hr>");
	out.println("<table border = 1>");
	out.println("<tr>");
	for(int i = 2; i < 10; i++) {
		if(i == 6) {
			out.println("</tr><tr>");
		}
		out.println("<td>");
		for(int j = 1; j < 10; j++) {
			out.println("&nbsp" + i + " * " + j);
			out.println(" = " + i*j + "<br>");
		}
		out.println("</td>");
	}
	out.println("</tr>");
	out.println("</table>");
%>
</body>
</html>