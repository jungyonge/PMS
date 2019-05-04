<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="entity.EmpEntity" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
직원들의 근무시간을 보여줍니다.
<%
	List<EmpEntity> list = (List<EmpEntity>)request.getAttribute("emp");
	if(list != null)
	{
%>
		<table border="1" align="center" width="500px">
			<tr>
				<td>직원번호</td>
				<td>직원이름</td>
				<td>근무시간</td>
			</tr>
<%
			for(EmpEntity entity : list)
			{
%>
			<tr>
				<td><%=entity.getEno() %></td>
				<td><%=entity.getEname()%></td>
				<td><%=entity.getAlltimes() %></td>

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