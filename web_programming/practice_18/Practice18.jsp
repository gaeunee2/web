<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.Enumeration, java.util.ArrayList, java.util.Arrays" %>
<% request.setCharacterEncoding("utf-8"); %>
<%!
	String[] mChoices = {"hobby"};
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	String[] telCompany = {"010", "011", "017", "070"};
	String[] gNames = {"남", "여"};

	ArrayList<String> getParameterNames(HttpServletRequest request) {
        ArrayList<String> names = new ArrayList<String>();
        Enumeration<String> paramNames = request.getParameterNames();
        
        while (paramNames.hasMoreElements()) {
            names.add(paramNames.nextElement());
        }
        return names;
    }

	boolean isMultipleChoice(String paramName) {
        return Arrays.asList(mChoices).contains(paramName);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 18</title>
</head>
<body>
<%
	Enumeration<String> paramNames = request.getParameterNames();
	while(paramNames.hasMoreElements()) {
		String name = (String)paramNames.nextElement();
		
		out.println(name + " : ");
		if(name.equals("hobby")) {
			String[] paramValues = request.getParameterValues(name);
			for (String value : paramValues) {
				out.print(value + "/");
			}
			out.println("<br>");
		}
		else {
			String paramValue = request.getParameter(name);
			out.println(paramValue + "<br>");
		}
	}
	
	out.println("<h1>Processing Parameters</h1>");
	
	ArrayList<String> nameList = getParameterNames(request);
	for(int i = 0; i < nameList.size(); i++) {
		String name = nameList.get(i);
        out.print(name + " : ");
		
		if(isMultipleChoice(name)) {
			String[] paramValues = request.getParameterValues(name);
			for (String value : paramValues) {
				out.print(hobbyNames[Integer.parseInt(value)] + "/");
			}
			out.println("<br>");
		}
		else {
			if(name.equals("phone1")) {
				String paramValue = request.getParameter(name);
				out.println(telCompany[Integer.parseInt(paramValue)] + "<br>");
			}
			else if(name.equals("gender")) {
				String paramValue = request.getParameter(name);
				out.println(gNames[Integer.parseInt(paramValue)] + "<br>");
			}
			else {
				String paramValue = request.getParameter(name);
                out.println(paramValue + "<br>");
			}
		}
	}
%>
</body>
</html>