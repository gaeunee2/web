<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 32</title>
</head>
<body>
<h1>Processing Parameters</h1>
id: ${param.id}<br>
pw: ${param.pw}<br>
gender: ${param.gender}<br>
phone1: ${param.phone1}<br>
phone2: ${param.phone2}<br>
phone3: ${param.phone3}<br>
email: ${param.email}<br>
birth: ${param.birth}
</body>
</html>