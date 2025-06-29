<%-- 컴퓨터학과 20220745 김가은, 크롬 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="calc_notice.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<style>
table {
	width: 95%;
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
<jsp:useBean id="calc" 
class="jspbook.pr39.Calculator"
scope="page" />
<jsp:setProperty name="calc"
property="*" />

<table>
	<tr>
		<th colspan="2" class="blue"><i>CalCuLaTor</i></th>
	</tr>
	<tr>
		<td><img src="image/cal.jpg"/></td>
		<td>
			<input type="text" value="${calc.getOp1()}"
			 size="10" style="text-align: center" readonly /><br>
			${calc.getOperator()}<br>
			<input type="text" value="${calc.getOp2()}"
			 size="10" style="text-align: center" readonly/><br>
			=<br>
			<input type="text" value="${calc.calc()}"
			 size="10" style="text-align: center" readonly/><br>
		</td>
    </tr>
    <tr>
		<td colspan="2" class="blue">&nbsp;</td>
	</tr>
</table>
</body>
</html>