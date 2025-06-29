<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
class="jspbook.pr36.StudentBean" scope="page" />
<jsp:setProperty name="login" property="*" />

<h1>등록내용</h1>
이름: <jsp:getProperty name="login" property="id" /><br><br>
패스워드: <jsp:getProperty name="login" property="pw" /><br><br>
이메일: <jsp:getProperty name="login" property="email" /><br><br>
성별: <jsp:getProperty name="login" property="gender" /><br><br>
생일: <jsp:getProperty name="login" property="birth" /><br><br>
<hr>
${login.id}씨는
<c:choose>
	<c:when test="${login.gender==0}">
		남성이고, 
	</c:when>
	<c:otherwise>
		여성이고, 
	</c:otherwise>
</c:choose>

<c:choose>
	<c:when test="${login.isGrownUp()==true}">
		성인입니다.
	</c:when>
	<c:otherwise>
		성인이 아닙니다.
	</c:otherwise>
</c:choose>
</body>
</html>