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
class="jspbook.pr40.Calculator"
scope="page" />

<table>
	<tr>
		<th colspan="2" class="blue"><i>CalCuLaTor</i></th>
	</tr>
	<tr>
		<td><img src="image/cal.jpg"/></td>
		<td>
<%
	try {
		calc.setOp1(Integer.parseInt(request.getParameter("op1")));
		out.println("<input type='text' value='${calc.getOp1()}'");
		out.println("size='10' style='text-align: center' readonly/>");
		out.println("<br>${calc.getOperator()}<br>");
	} catch (NumberFormatException e) {
		RequestDispatcher dispatcher=request.getRequestDispatcher
		("calc_notice_01.jsp");
		dispatcher.forward(request, response);
	}

	try {
		calc.setOp2(Integer.parseInt(request.getParameter("op2")));
		out.println("<input type='text' value='${calc.getOp2()}'");
		out.println("size='10' style='text-align: center' readonly/>");
	} catch (NumberFormatException e) {
		RequestDispatcher dispatcher=request.getRequestDispatcher
		("calc_notice_02.jsp");
		dispatcher.forward(request, response);
	}
	calc.setOperator(request.getParameter("operator"));
%>

			<br>=<br>
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