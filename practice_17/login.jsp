<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이클래스 로그인</title>
<style>
img {
	margin: auto;
	width: 100%;
}
table {
	margin: auto;
}
td {
	padding: 7px 0;
}
h3 {
	text-align: center;
}
.yellow {
	background-color: RGB(255, 255, 153);
	border-right: 1px solid RGB(232, 232, 234);
	border-left: 2px solid RGB(137, 137, 139);
	border-top: 2px solid RGB(137, 137, 139);
	border-bottom: 1px solid RGB(232, 232, 234);
}
.bold {
	font-size: 13px;
	font-weight: bold;
}
</style>
</head>
<body>
<img src="image/eclass_title.jpg">
<form action="result.jsp" name = "login" method="post">
<h3>로그인</h3><hr>
<table>
	<tr>
		<td><img src="image/eclass_logo.png"></td>
		<td><table>
			<tr><td colspan="2" class="bold">회원님의 아이디와 비밀번호를 정확히 입력하세요.</td></tr>
			<tr>
				<td>&nbsp;</td>
				<td><select name="type">
					<option value="학부생">학부생</option>
					<option value="대학원생">대학원생</option>
					<option value="교직원">교직원</option>
				</select></td>
			</tr>
			<tr>
				<td class="bold">아이디</td>
				<td><input type="text" name="strID" class="yellow"></td>
			</tr>
			<tr>
				<td class="bold">비밀번호</td>
				<td><input type="password" name="strPwd" class="yellow"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="로그인">
				<input type="button" value="가입하기"></td>
			</tr>
		</table></td>
	</tr>
</table>
</form>
</body>
</html>