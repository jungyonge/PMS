<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	font-weight: bold;
	font-size: 100% !important;
}

tr { background: #FCFDFE; }

</style>

</head>

<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<form action="/log/lostupdate" method="post">
<table border="0" width="350" align="center"  cellpadding="5">
	<tr align="center">
		<td class="th">고유번호</td>
		<td><input type="text" name="eno" value="<%=request.getParameter("eno") %>" readonly></td>
	</tr>
	<tr align="center">
	<td class="th">물품명</td>
		<td><input type="text" name="item" value="<%=request.getParameter("item") %>" readonly></td>
	</tr>
<tr align="center">
	<td class="th">발견일</td>
		<td><input type="text" name="getday" value="<%=request.getParameter("getday") %>"></td>
	</tr>
<tr align="center">
		<td class="th">장소</td>
		<td><input type="text" name="place" value="<%=request.getParameter("place") %>"></td>
	</tr>
<tr align="center">
	<td class="th">취득인</td>
		<td><input type="text" name="getp" value="<%=request.getParameter("getp") %>"></td>
	</tr>
<tr align="center">
		<td colspan="2" align="center">
			<input type="submit" value="수정하기">
			<input type="reset" value="취소하기">
		</td>
	</tr>
</table>
</form>
</body>
</body>
</html>