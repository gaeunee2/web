<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice37</title>
</head>
<body>
<c:set var="text" value="Hello, Welcome to JSP World! Let's go!"/>
입력되어 있는 문자열: ${pageScope.text}<br>
문자열의 길이: ${fn:length(pageScope.text)}<br>
'JSP'라는 문자의 위치: ${fn:indexOf(pageScope.text, "JSP")}<br>
모두 소문자로 변경: ${fn:toLowerCase(pageScope.text)}<br>
모두 대문자로 변경: ${fn:toUpperCase(pageScope.text)}<br>
</body>
</html>