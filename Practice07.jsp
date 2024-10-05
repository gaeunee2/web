<!-- 컴퓨터학과 20220745 김가은, 크롬 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<style>
table {
	width: 80%;
}
table, td {
	border-collapse: collapse;
	border: 1px solid black;
	margin: auto;
}
.gray {
	text-align: center;
	font-weight: bold;
	background-color: RGB(236, 236, 236);
}
</style>
</head>
<body>
<form name="form" action="#" method="post">
<table>
	<tr>
		<th class="gray" colspan="2">회원 가입</th>
	</tr>
	<tr>
		<td class="gray">아이디</td>
		<td><input type="text" name="id">
		<input type="submit" value="중복확인"></td>
	</tr>
	<tr>
		<td class="gray">패스워드</td>
		<td><input type="text" name="passwd"></td>
	</tr>
	<tr>
		<td class="gray">성별</td>
		<td><input type="radio" name="gen" value="0">남
		<input type="radio" name="gen" value="1" checked>여</td>
	</tr>
	<tr>
		<td class="gray">국적</td>
		<td><input type="text" name="nationality" value="대한민국" readonly>
		<input type="button" value="국적변경" disabled></td>
	</tr>
	<tr>
		<td class="gray">휴대폰</td>
		<td><select name="phone">
			<option value="010" selected>010</option>
			<option value="011">011</option>
		</select>
		&nbsp;-&nbsp;
		<input type="text" name="phone" maxlength="4" size="5" style="text-align:center">
		&nbsp;-&nbsp;
		<input type="text" name="phone" maxlength="4" size="5" style="text-align:center"></td>
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
		<td><input type="checkbox" name="hobby" value="news">뉴스
		<input type="checkbox" name="hobby" value="restaurent" checked>맛집
		<input type="checkbox" name="hobby" value="book">책
		<input type="checkbox" name="hobby" value="movie">영화
		<input type="checkbox" name="hobby" value="travle">여행</td>
	</tr>
	<tr>
		<td class="gray">가입인사</td>
		<td><textarea name="hi" style="width:99%" rows="6">회원들에게 간단한 가입인사를 남겨주세요
		</textarea></td>
	</tr>
	<tr>
		<td class="gray">증명사진</td>
		<td><input type="file" name="picture" value="파일 선택"></td>
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