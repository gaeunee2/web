<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록내용</title>
<style>
body {
	text-align: center;
}
</style>
</head>
<body>
<jsp:useBean id="login"
class="jspbook.pr28.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*" />

<h1>등록내용</h1>
이름: <jsp:getProperty name="login" property="id" /><br><br>
패스워드: <jsp:getProperty name="login" property="pw" /><br><br>
이메일: <jsp:getProperty name="login" property="email" /><br><br>
성별: <jsp:getProperty name="login" property="gender" /><br><br>
생일: <jsp:getProperty name="login" property="birth" /><br><br>
<hr>

<% 
	out.println(login.getId() + "씨는 ");
	if(login.getGender() == 1) {
		out.println("여성이고, ");
	}
	else {
		out.println("남성이고, ");
	}
	if(login.isGrownUp()) {
		out.println("성인입니다.");
	}
	else {
		out.println("성인이 아닙니다.");
	}
%>
</body>
</html>