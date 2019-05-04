<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>근무시간관리</title>
<style type="text/css">
table, th, td {
	border: 1px solid #D4E0EE;
	border-collapse: collapse;
	font-family: "Trebuchet MS", Arial, sans-serif;
	color: #555;
}


.th {
	padding: 4px;
	text-align: center;
	background: #E6EDF5;
	color: #4F76A3;
	font-size: 100% !important;
		font-weight: bold;
}

tr { background: #FCFDFE; }

</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<form action="/log/time" method="post">
<table border="1" width="400" align="center"  cellpadding="5" >
	<tr>
		<td class="th">직원번호</td>
		<td><input type="text" name="eno" value="<%=request.getParameter("eno") %>" readonly></td>
	</tr>
	<tr>
			<td class="th">직원이름</td>
		<td><input type="text" name="ename" value="<%=request.getParameter("ename") %>" readonly></td>
	</tr>
	<tr>
			<td class="th">총근무시간</td>
		<td><input type="text" name="alltimes" value="<%=request.getParameter("alltimes") %>" readonly></td>
	</tr>

	<tr>
			<td class="th">근무시간추가</td>
		<td><input type="text" name="times" value="시간입력" onFocus="this.value=''"> </td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="근무시간추가하기">
			<input type="reset" value="취소하기">
		</td>
	</tr>
</table>
</form>
</body>
</html>