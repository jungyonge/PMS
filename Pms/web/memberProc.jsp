<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");	
%>
<jsp:useBean id="mem"  class="entity.LoginEntity"  scope="session"/>
<jsp:setProperty name="mem"  property="*"/> 

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


th {
   padding: 4px;
   text-align: center;
   background: #E6EDF5;
   color: #4F76A3;
   font-size: 100% !important;
}

tr { background: #FCFDFE; }

</style>

</head>
<body>
<form name="regForm" method="post" action="memberInsert.jsp">
<table width="80%" align="center" border="0" cellspacing="0"
	cellpadding="5">
	<tr>
		<td align="center" valign="middle" >
		<table width="90%" bgcolor="#FFFFCC" border="1" cellspacing="0" cellpadding="2"
			align="center">
			<tr align="center" bgcolor="#996600">
				<th colspan="2">
					<font color="black"><b>
					[<jsp:getProperty property="name" name="mem"/>] 
					 님이 작성하신 내용입니다. 확인해 주세요</b>
					</font>
				</th>
			</tr>
			<tr >
				<th width="35%">아이디</th>
				<td><%=mem.getId()%></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><%=mem.getPwd()%></td>
			<tr>
				<th>관리자명</th>
				<td><%=mem.getName()%></td>
			</tr>
			<tr>
				<th>기타사항</th>
				<td><%=mem.getExam()%></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input type="submit"	value="확인완료"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
					<input	type="button" value="다시쓰기" onClick="history.back()"></td>
			</tr>
		</table>
		</td>
	</tr>
</table>
</form>
</body>
</html>