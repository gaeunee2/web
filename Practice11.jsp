<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 11</title>
</head>
<body>
<% 
	Calendar cal = Calendar.getInstance();

	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
	int date = cal.get(Calendar.DATE);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	char[] c_day = {' ', '일', '월', '화', '수', '목', '금', '토'};
	
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	out.println("오늘은 " + year + "년 " + (month + 1) + "월 " +
				date + "일 " + c_day[day] + "요일입니다.");
	out.println("<br><br>");
	out.println("이번 달은 " + start + "일부터 시작하여 " + end
				+ "일에 끝납니다.");
	out.println("<br><br>");
	cal.set(2003, Calendar.JANUARY, 30);
	day = cal.get(Calendar.DAY_OF_WEEK);
	out.println("내 생일 2003년 10월 30일은 " + c_day[day] + "요일입니다.");
%>
</body>
</html>