<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="entity.EmpEntity"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원리스트</title>
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

<%
	List <EmpEntity> list = (List <EmpEntity>)request.getAttribute("emp");
	if(list != null)
	{
%>
<!--  height=22px  text-align=center  vertical-align=middle   color=#ffffff  font-weight=bold background-color= #FFBAB7 -->
		<table border="1" align="center" width="1000px"  cellpadding="5">
			<tr >
				<th>직원번호</th>
				<th>직원이름</th>
				<th>입사일</th>
				<th width="200">주소</th>
				<th>전화번호</th>
				<th>근무시간</th>
				<th>시간추가</th>
				<th>정보수정</th>
				<th>직원삭제</th>
			</tr>
<%
			for(EmpEntity entity : list)
			{
%>
			<tr align="center">
				<td><%=entity.getEno() %></td>
				<td><%=entity.getEname()%></td>
				<td><%=entity.getInday() %></td>
				<td><%=entity.getAdr() %></td>
				<td><%=entity.getPhone() %></td>
				<td><%=entity.getAlltimes() %>시간</td>
				
				<td align="center">
					<form action="/log/emptest/empTime.jsp" method="post">
					<input type="hidden" name="eno" value="<%=entity.getEno()%>">
					<input type="hidden" name="ename" value="<%=entity.getEname()%>">
						<input type="hidden" name="times" value="<%=entity.getTimes()%>">
						<input type="hidden" name="alltimes" value="<%=entity.getAlltimes()%>">
						<input type="submit" value="시간추가">						         					
					</form>
				</td>
				
				<td align="center">
					<form action="/log/emptest/empUpdate.jsp" method="post">
 						<input type="hidden" name="eno" value="<%=entity.getEno()%>">
						<input type="hidden" name="ename" value="<%=entity.getEname()%>">
						<input type="hidden" name="inday" value="<%=entity.getInday()%>">
						<input type="hidden" name="adr" value="<%=entity.getAdr()%>">
						<input type="hidden" name="phone" value="<%=entity.getPhone()%>">
						<%-- <input type="hidden" name="times" value="<%=entity.getTimes() %>"> --%>
						<input type="submit" value="수정">						         					
					</form>
				</td>
				
				<td align="center">
					<form action="/log/delete" method="post">
						<input type="hidden" name="eno" value="<%=entity.getEno()%>">
						<input type="submit" value="삭제">						         
					</form>
				</td>
			</tr>		
<%
			} //end for
%>			
		</table>
<% 
	} //end if
%>		
</body>
</html>







