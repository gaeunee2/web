<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<% request.setCharacterEncoding("utf-8"); %>
<%! 
	String[] nameList = {"이름", "전화번호", "이메일", "성별"};
%>
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
<%
	Enumeration<String> paramNames = request.getParameterNames();
	int i = 0;
	while (paramNames.hasMoreElements()) {
		String name = (String)paramNames.nextElement();
		String paramValue = request.getParameter(name);
		out.println(nameList[i] + " : " + paramValue + "<br><br>");
		i++;
	}
%>
<hr>
<a href="addr_form.jsp">주소 추가</a>
</body>
</html>