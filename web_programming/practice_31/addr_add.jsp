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
<jsp:useBean id="addr"
class="jspbook.pr31.AddrBean"
scope="page"/>
<jsp:setProperty name="addr"
property="*"/>
<jsp:useBean id="addrM"
class="jspbook.pr31.AddrManager"
scope="session"/>

<h1>등록내용</h1>
이름: <jsp:getProperty name="addr" property="username"/><br><br>
전화번호: <jsp:getProperty name="addr" property="tel"/><br><br>
이메일:  <jsp:getProperty name="addr" property="email"/><br><br>
성별:  <jsp:getProperty name="addr" property="gender"/><br><br>
<hr>
<a href="addr_list.jsp">목록 보기</a>
&nbsp;&nbsp;
<a href="addr_form.jsp">주소 추가</a>
<%
	addrM.add(addr);
%>
</body>
</html>