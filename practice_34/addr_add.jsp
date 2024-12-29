<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_add</title>
<style>
body {
	text-align: center;
}
</style>
</head>
<body>
<h2>등록내용</h2>
이름: ${param.username}<br><br>
전화번호: ${param.tel}<br><br>
이메일: ${param.email}<br><br>
성별: ${param.gender}<br><br>
<hr>
<a href="addr_form.jsp">주소 추가</a>
</body>
</html>