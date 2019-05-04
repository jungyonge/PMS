<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="entity.LostEntity"
%>
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
	List<LostEntity> lostlist = (List<LostEntity>)request.getAttribute("lost");
	if(lostlist != null)
	{
%>
		<table border="2" align="top" width="100px">
		<tr>
			<td>
				<form action="losttest/lostInsert.html" method="post">
				<input type="submit" value="분실물 추가">
				</form>
			</td>
		</tr>
		</table>
		
		<table border="1" align="center" width="800px" cellpadding="5" align="center">
			<tr>
				<th>고유번호</th>
				<th>물품명</th>
				<th>발견일</th>
				<th>장소</th>
				<th>취득인</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
<%
			for(LostEntity entity : lostlist)
			{
%>
			<tr align="center">
				<td><%=entity.getEno() %></td>
				<td><%=entity.getItem()%></td>
				<td><%=entity.getGetday() %></td>
				<td><%=entity.getPlace() %></td>
				<td><%=entity.getGetp() %></td>
				<td>
					<form action="/log/losttest/lostUpdate.jsp" method="post">
 						<input type="hidden" name="eno" value="<%=entity.getEno()%>">
						<input type="hidden" name="item" value="<%=entity.getItem()%>">
						<input type="hidden" name="getday" value="<%=entity.getGetday()%>">
						<input type="hidden" name="place" value="<%=entity.getPlace()%>">
						<input type="hidden" name="getp" value="<%=entity.getGetp()%>">
						<input type="submit" value="수정">						         
					</form>
				</td>
				<td>
					<form action="/log/lostdelete" method="post">
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







