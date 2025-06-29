<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%! 
	public String parseDay(int cnt, String day) {
		String rslt = "";
		
		if (cnt % 7 == 6) {
			rslt += "<font color='blue'>" + day + "</font>";
		} 
		else if (cnt % 7 == 0) {
			rslt += "<font color='red'>" + day + "</font>";
		} 
		else {
			rslt += day;
		}
		return rslt;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>
table {
	border-collapse: collapse;
	border: 1px solid black;
	width: 90%;
	text-align: center;
	margin: auto;
}
tr {
	height: 40px;
}
caption {
	caption-side: top;
	text-align: right;
	font-weight: bold;
	margin-bottom: 20px;
	margin-right: 10px;
}
</style>
</head>
<body>
<%
	Calendar today = Calendar.getInstance();

	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH);
	int date = today.get(Calendar.DATE);
	Calendar cal = Calendar.getInstance();
	cal.set(year, month, 1);
	
	int start = cal.getMinimum(Calendar.DATE);
    int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
    int startDay = cal.get(Calendar.DAY_OF_WEEK);

    int cnt = 0;
    String day[] = {"일", "월", "화", "수", "목", "금", "토"};
    out.println("<table border='1'>");
    out.println("<caption>" + year + "-" + month + "-" + date);
    out.println("<tr>");
    while(cnt < 7) {
    	out.println("<th>");
    	out.print(parseDay(cnt, day[cnt]));
    	out.println("</th>");
    	cnt++;
    }
    out.println("</tr>");
    
    for(int i = 0; i < startDay - 1; i++) {
    	if(i == 0) {
    		out.println("<tr>");
    	}
    	out.println("<td>");
    	out.println("&nbsp;");
    	out.println("</td>");
    	cnt++;
    }
    for(int i = start; i <= end; i++) {
    	if(cnt % 7 == 0) {
    		out.println("</tr>");
    		out.println("<tr>");
    	}
    	out.println("<td>");
    	out.print(parseDay(cnt, Integer.toString(start + i - 1)));
    	out.println("</td>");
    	cnt++;
    }
    if(cnt % 7 != 0) {
    	out.println("<td>");
    	out.println("&nbsp;");
    	out.println("</td>");
    	if(cnt % 7 == 6) {
    		out.println("</tr>");
    	}
    }
    out.println("</table>");
%>
</body>
</html>