<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<style>
table {
	width: 50%;
}
table, td {
	border-collapse: collapse;
	border: 1px solid black;
	margin: auto;
}
img {
	margin: auto;
	width: 100%;
}
.gray {
	text-align: center;
	font-weight: bold;
	background-color: RGB(236, 236, 236);
}
</style>
</head>
<body>
<img src="image/eclass_title.jpg">
<form action="Practice35.jsp" name = "accession" method="post">
<table>
	<tr>
		<th class="gray" colspan="2">회원 가입</th>
	</tr>
	<tr>
		<td class="gray">아이디</td>
		<td><input type="text" name="id">
		<input type="button" value="중복확인"></td>
	</tr>
	<tr>
		<td class="gray">패스워드</td>
		<td><input type="password" name="pw"></td>
	</tr>
	<tr>
		<td class="gray">성별</td>
		<td><input type="radio" name="gender" value="남성">남
		<input type="radio" name="gender" value="여성" checked>여</td>
	</tr>
	<tr>
		<td class="gray">국적</td>
		<td><input type="text" name="nationality" value="대한민국" readonly>
		<input type="button" value="국적변경" disabled></td>
	</tr>
	<tr>
		<td class="gray">휴대폰</td>
		<td><select name="phone1">
			<option value="010" selected>010</option>
			<option value="011">011</option>
			<option value="017">017</option>
			<option value="070">070</option>
		</select>
		&nbsp;-&nbsp;
		<input type="text" name="phone2" maxlength="4" size="5" style="text-align:center">
		&nbsp;-&nbsp;
		<input type="text" name="phone3" maxlength="4" size="5" style="text-align:center"></td>
	</tr>
	<tr>
		<td class="gray">이메일</td>
		<td><input type="text" name="email" size="50"></td>
	</tr>
	<tr>
		<td class="gray">생일</td>
		<td><input type="date" name="birth"></td>
	</tr>
	<tr>
		<td class="gray">관심분야</td>
		<td><input type="checkbox" name="hobby" value="뉴스">뉴스
		<input type="checkbox" name="hobby" value="맛집" checked>맛집
		<input type="checkbox" name="hobby" value="책">책
		<input type="checkbox" name="hobby" value="영화">영화
		<input type="checkbox" name="hobby" value="여행">여행</td>
	</tr>
	<tr>
		<td class="gray">가입인사</td>
		<td><textarea name="memo" style="width:99%" rows="6" placeholder="회원들에게 간단한 가입인사를 남겨주세요"></textarea></td>
	</tr>
	<tr>
		<td class="gray">증명사진</td>
		<td><input type="file" name="picture"></td>
	</tr>
	<tr>
		<td class="gray" colspan="2">
		<input type="submit" value="가입하기">
		<input type="reset" value="다시작성"></td>
	</tr>
</table>
</form>
</body>
</html>