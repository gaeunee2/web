<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list</title>
<style>
body {
	text-align: center;
}
</style>
</head>
<body>
<h1>주소록</h1>
<hr>
<%
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("addrbook");
	out.println("<ol>");
	for (String entry : list) {
		out.println("<li>" + entry + "</li>");
	}
	out.println("</ol>");
%>
<a href="addr_form.jsp">주소 추가</a>
</body>
</html>