<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="jspbook.pr31.AddrManager" %>
<%@ page import="jspbook.pr31.AddrBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list</title>
<style>
table, td {
	border: 1px solid black;
	text-align: center;
	margin: auto;
	width: 600px;
}
body {
	text-align: center;
}
</style>
</head>
<body>
<h1>주소록 (전체보기)</h1>
<hr>
<a href="addr_form.jsp">주소 추가</a><br><br>
<table>
	<tr>
		<td>이름</td>
		<td>전화번호</td>
		<td>이메일</td>
		<td>성별</td>
	</tr>
	<%
		AddrManager addrM = (AddrManager) session.getAttribute("addrM");
		for (AddrBean addr : addrM.getAddrList()) {
			out.println("<tr>");
			out.println("<td>" + addr.getUsername() + "</td>");
			out.println("<td>" + addr.getTel() + "</td>");
			out.println("<td>" + addr.getEmail() + "</td>");
			out.println("<td>" + addr.getGender() + "</td>");
			out.println("</tr>");
		}
	%>
</table>
</body>
</html>