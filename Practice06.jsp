<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 06</title>
<style>
table {
	margin: auto;
	width: 55%;
}
tr {
	height: 210px;
}
h1 {
	text-align: center;
	font-family: '굴림';
}
</style>
</head>
<%!
	String printTimeTable(int dan) {
		String s = "";
		for(int i = 0; i < 9; i++) {
			s += "&nbsp" + dan + " * " + (i+1);
			s += " = " + dan*(i+1) + "<br>";
		}
		return s;
	}
%>
<body>
<%
	out.println("<h1>구구단 출력</h1>");
	out.println("<hr>");
	out.println("<table border = 1>");
	out.println("<tr>");
	for(int i = 2; i < 10; i++) {
		if(i == 6) {
			out.println("</tr><tr>");
		}
		out.println("<td>"); 
%>
		<%= printTimeTable(i) %>
<%
		out.println("</td>");
	}
	out.println("</tr>");
	out.println("</table>");
%>
</body>
</html>