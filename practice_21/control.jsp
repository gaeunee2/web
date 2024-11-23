<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>control</title>
</head>
<body>
<%
	//response.sendRedirect("display.jsp?" + request.getQueryString());

	StringBuilder query = new StringBuilder();
	Enumeration<String> paramNames = request.getParameterNames();
	boolean first = true;
	
	while (paramNames.hasMoreElements()) {
        String name = (String)paramNames.nextElement();
        String paramValue = request.getParameter(name);
        
        if (!first) {
            query.append("&");
        } 
        else {
            first = false;
        }
        query.append(name).append("=").append(paramValue);
	}
	response.sendRedirect("display.jsp?" + query.toString());
%>
</body>
</html>