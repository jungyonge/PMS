<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
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

strong {
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
    int a = Integer.parseInt(request.getParameter("intime"));
    int b = Integer.parseInt(request.getParameter("timemoney"));  
%>
<p class="th" align="center">
<strong><%=request.getParameter("ename") %></strong>님이 <br>
 입력해주신 근무시간은 <strong><%=request.getParameter("intime") %>시간</strong> 이였고 <br>
 계산된 <strong>총급여는 <%=a * b %> 원</strong>입니다.
</p>




<table border="2" width="300" align="center">
	<tr>
		<td class="th">이름</td>
		<td><input type="text" name="ename" value="<%=request.getParameter("ename") %>" readonly></td>
	</tr>
	<tr>
		<td class="th">입력한 시간</td>
		<td><input type="text" name="intiime" value="<%=request.getParameter("intime") %>시간" readonly></td>
	</tr>
	<tr>
	<td class="th">총 급여</td>
		<td><input type="text" name="result" value="<%=a * b %>원" readonly></td>
	</tr>


</table>

</body>
</html>