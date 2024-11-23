<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_add</title>
<style>
h2 {
	text-align: center;
}
table {
	width: 280px;
	margin: auto;
}
td {
	padding: 5px;
	height: 20px;
	vertical-align: middle;
}
input[type="text"] {
	width: 100%;
	height: 25px;
	box-sizing: border-box;
}
</style>
</head>
<body>
<h2>주소록 등록</h2>
<hr>
<form action="addr_add.jsp" name="addr" method="post">
<table border="1">
	<tr>
		<td>이름</td>
		<td><input type="text" name="username"/></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="tel"/></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email"/></td>
	</tr>
	<tr>
		<td>성별</td>
		<td><select name="gender">
				<option value="남">남</option>
				<option value="여">여</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="text-align: center;">
			<input type="submit" value="확인"/>
			<input type="reset" value="취소"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>