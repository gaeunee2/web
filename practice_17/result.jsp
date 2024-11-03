<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.Enumeration"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 17</title>
</head>
<body>
<h1>전달된 파라미터 이름들</h1><br>
<%
	Enumeration<String> paramNames = request.getParameterNames();
	while(paramNames.hasMoreElements()) {
		String name = (String) paramNames.nextElement();
		out.println(name + "<br>");
	}
	
	out.println("<hr>");
	Enumeration<String> paramNames2 = request.getParameterNames();
	while(paramNames2.hasMoreElements()) {
		String name = (String) paramNames2.nextElement();
		String paramValue = request.getParameter(name);
		out.println(name + " : " + paramValue + "<br>");
	}
%>
</body>
</html>