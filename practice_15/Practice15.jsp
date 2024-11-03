<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include_action</title>
<style>
table {
	margin: auto;
	width: 60%;
}
</style>
</head>
<body>
<h1 style="text-align: center; font-family: 'Times'">Include Action Practice</h1>
<hr>
<table>
	<tr>
	<td style="width: 45%">
		<jsp:include page="calendar.jsp">
			<jsp:param name="year" value="2003"/>
			<jsp:param name="month" value="10"/>
		</jsp:include>
	</td>
	<td style="width: 10%">
		
	</td>
	<td style="width: 45%">
		<jsp:include page="news.jsp">
			<jsp:param name="TASK1" value="울랄라"/>
			<jsp:param name="TASK2" value="릴리리맘보"/>
		</jsp:include>
	</td>
	</tr>
</table>
</body>
</html>