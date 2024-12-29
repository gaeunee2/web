<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
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
<h1>등록내용</h1>
<%
	String name = request.getParameter("username");
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	String gen = request.getParameter("gender");
	
	out.println("이름: " + name + "<br><br>");
	out.println("전화번호: " + tel + "<br><br>");
	out.println("이메일: " + email + "<br><br>");
	out.println("성별: " + gen + "<br><br>");
	out.println("<hr>");
	
	String total = name + "/" + tel + "/" + email
			+ "/" + gen;
	
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("addrbook");
	if (list == null) {
		list = new ArrayList<String>();
	}
	list.add(total);
	session.setAttribute("addrbook", list);
%>
<a href="addr_list.jsp">목록 보기</a>
&nbsp;&nbsp;
<a href="addr_form.jsp">주소 추가</a>
</body>
</html>