<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<style>
table {
	width: 90%;
	margin: auto;
	table-layout: fixed;
}
th, td {
	border-collapse: collapse;
	border: 1px solid RGB(226, 226, 226);
}
th {
	text-align: center;
	font-family: "Bookman Old Style"; 
	font-weight: lighter;
	font-size: 40px;
}
td {
	text-align: center;
	line-height: 2;
	width: 50%;
	vertical-align: middle;
}
.text {
	width: 100px;
	text-align: center;
}
.blue {
	height: 50px;
	background-color: RGB(50, 204, 254)
}
</style>
</head>
<body>
<form action="calc_result.jsp" name = "calc" method="post">
<table>
	<tr>
		<th colspan="2" class="blue"><i>CalCuLaTor</i></th>
	</tr>
	<tr>
		<td><img src="image/cal.jpg"/></td>
		<td><input class="text" type="text" name="num1" maxlength='5' value='0'/><br>
		<select name="op">
			<option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select><br>
        <input class="text" type="text" name="num2" maxlength='5' value='0'/><br>
        <input type="submit" value="="><br>
        <input class="text" type="text" name="rslt" disabled></td>
    </tr>
    <tr>
		<td colspan="2" class="blue">&nbsp;</td>
	</tr>
</table>
</form>
</body>
</html>