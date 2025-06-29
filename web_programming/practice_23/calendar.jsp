<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
<style>
table {
	margin: auto;
	border-collapse: collapse;
	width: 90%;
	text-align: center;
}
.header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin: 20px auto;
    width: 90%;
}
.left {
	text-align: left;
}
.center {
	text-align: center;
}
.right {
	text-align: right;
}
</style>
</head>
<body>
<form action="calendar.jsp" name="calendar" method="get">
<%
	java.util.Calendar today = java.util.Calendar.getInstance();
	int todayYear = today.get(java.util.Calendar.YEAR);
	int todayMonth = today.get(java.util.Calendar.MONTH) + 1;
	int todayDay = today.get(java.util.Calendar.DAY_OF_MONTH);
	
	String sYear = request.getParameter("YEAR");
	int year = (sYear != null) ? Integer.parseInt(sYear) : todayYear;
	String sMonth = request.getParameter("MONTH");
	int month = (sMonth != null) ? Integer.parseInt(sMonth) : todayMonth;
	
	out.println("<div class=\"header-container\">");
	out.println("<div class=\"left\">");
    out.println("<a href=\"calendar.jsp?YEAR=" + (year-1));
    out.println("&MONTH=" + month + "\">" + "◀</a>");
    out.println(year + "년");
	out.println("<a href=\"calendar.jsp?YEAR=" + (year+1));
	out.println("&MONTH=" + month + "\">" + "▶</a>");
	out.println("</div>");
	
	out.println("<div class=\"center\">");
	if(month == 1) {
    	out.println("◀");
    }
	else {
		out.println("<a href=\"calendar.jsp?YEAR=" + year);
		out.println("&MONTH=" + (month-1) + "\">" + "◀</a>");
	}
	out.println(month + "월");
	if(month == 12) {
		out.println("▶");
	}
	else {
		out.println("<a href=\"calendar.jsp?YEAR=" + year);
		out.println("&MONTH=" + (month+1) + "\">" + "▶</a>");
	}
	out.println("</div>");
	
	out.println("<div class=\"right\">");
	out.println(todayYear + "-" + todayMonth + "-" + todayDay);
	out.println("</div>");
	out.println("</div>");
%>

<table border="1">
	<tr>
		<td style="color: red">일</td>
		<td>월</td>
		<td>화</td>
		<td>수</td>
		<td>목</td>
		<td>금</td>
		<td>토</td>
	</tr>
<%
    java.util.Calendar calendar = java.util.Calendar.getInstance();
    calendar.set(year, month - 1, 1);

    int startDay = calendar.get(java.util.Calendar.DAY_OF_WEEK);
    int daysInMonth = calendar.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);

    int day = 1;
    for (int i = 1; i <= 6; i++) {
        out.println("<tr>");
        for (int j = 1; j <= 7; j++) {
            if (i == 1 && j < startDay || day > daysInMonth) {
                out.println("<td></td>");
            } 
            else {
                if (j == 1) {
                    out.println("<td style=\"color: red\">" + day + "</td>");
                }
                else {
                    out.println("<td>" + day + "</td>");
                }
                day++;
            }
        }
        out.println("</tr>");
        if (day > daysInMonth) {
            break;
        }
    }
%>
</table>
</form>
</body>
</html>