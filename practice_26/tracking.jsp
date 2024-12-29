<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 정보</title>
</head>
<body>
<h1>관리자 정보 출력</h1>
<%
	String name = request.getParameter("username");
	String locate = request.getParameter("locate");
	
	if (name != null && locate != null) {
	    application.setAttribute("name", name);
	    application.setAttribute("locate", locate);
	    application.setAttribute("date", new Date());
	}

	String storedName = (String)application.getAttribute("name");
    String storedLocate = (String)application.getAttribute("locate");
    Date storedDate = (Date)application.getAttribute("date");
	
    out.println("관리자 이름 : " + storedName + "<br>");
    out.println("로그인 위치 : " + storedLocate + "<br>");
    out.println("로그인 시각 : " + storedDate + "<br><br>");
    out.println("출력시 세션 : " + session.getId());
%>
</body>
</html>