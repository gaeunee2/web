<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 입력</title>
</head>
<body>
<form action="control.jsp" name="addr" method="get">
<table>
	<tr>
		<td>이름:</td>
		<td><input type="text" name="name"/></td>
	</tr>
	<tr>
		<td>전화번호:</td>
		<td><input type="text" name="tel"/></td>
	</tr>
	<tr>
		<td>주소:</td>
		<td><input type="text" name="address"/></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align: center;">
			<input type="submit" value="등록"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>