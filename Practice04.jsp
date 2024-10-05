<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 04</title>
<style>
table {
	margin: auto;
	width: 90%;
	text-align: center;
}
tr {
	height: 40px;
}
</style>
</head>
<body>
<%
	char[] day = {'일', '월', '화', '수', '목', '금', '토'};
	out.println("<table border='1'>");
	out.println("<tr>");
	for(int i = 0; i < 7; i++) {
		if(day[i] == '일') {
			out.println("<th style = 'color:red'>" + day[i] + "</th>");
		}
		else if(day[i] == '토') {
			out.println("<th style = 'color:blue'>" + day[i] + "</th>");
		}
		else {
			out.println("<th>" + day[i] + "</th>");
		}
	}
	out.println("</tr>");
	for(int i = 0; i < 4; i++) {
		out.println("<tr>");
		for(int j = 0; j < 7; j++) {
			out.println("<td>&nbsp</td>");
		}
		out.println("</tr>");
	}
	out.println("</table>");
%>
</body>
</html>