<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
<form action="/log/update" method="post">
<table border="1" width="300" align="center"  cellpadding="5">
	<tr>
			<td class="th">직원번호</td>
		<td><input type="text" name="eno" value="<%=request.getParameter("eno") %>" readonly></td>
	</tr>
	<tr>
	<td class="th">직원이름</td>
		<td><input type="text" name="ename" value="<%=request.getParameter("ename") %>" readonly></td>
	</tr>
	<tr>
		<td class="th">입사일</td>
		<td><input type="text" name="inday" value="<%=request.getParameter("inday") %>"></td>
	</tr>
	<tr>
			<td class="th">주소</td>
		<td><input type="text" name="adr" value="<%=request.getParameter("adr") %>"></td>
	</tr>
	<tr>
		<td class="th">전화번호</td>
		<td><input type="text" name="phone" value="<%=request.getParameter("phone") %>"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="수정하기">
			<input type="reset" value="취소하기">
		</td>
	</tr>
</table>
</form>
</body>
</html>