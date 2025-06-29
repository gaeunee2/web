<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	int year = 2024;
	int month = 10;
	
	Calendar cal = Calendar.getInstance();
	cal.set(year, (month - 1), 1);
	
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
	
	
	out.println("<h1>" + year + "년 " + month + "월</h1>");
	out.println("<hr>");
	
	for(int i = 0; i < startDay - 1; i++) {
		out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	}
	for(int i = start; i <= end; i++) {
		out.print(i + "&nbsp;&nbsp;&nbsp;&nbsp;");
		
		if ((startDay - 1 + i) % 7 == 0) {
			out.println("<br>");
		}
	}
%>
</body>
</html>