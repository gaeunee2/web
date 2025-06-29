<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice35</title>
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
birth: ${param.birth}<br>

<%
	String[] hobby = request.getParameterValues("hobby");
	int count = (hobby!=null) ? hobby.length:0;
	
	pageContext.setAttribute("hCount", count);
	pageContext.setAttribute("hobby", hobby);
%>
hobby: 선택된 관심분야 ${pageScope.hCount}개<br>
<c:forEach var="num" items="${pageScope.hobby}" varStatus="status">
	[${status.count}]: ${num}<br>
</c:forEach>
</body>
</html>