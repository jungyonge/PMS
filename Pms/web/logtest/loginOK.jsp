<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="entity.LoginEntity"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인성공</title></head>
<style type="text/css">
body {
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
<body>
<script>
	top.frames['menu'].location.reload();
</script>     <!--  index.html에서 정해준 타겟명(name="menu") -->
<%
	LoginEntity entity = (LoginEntity)session.getAttribute("logOK");
%>
<center>
<br><br><br><br><br>
	<h1><b><%=entity.getName()%></b>님이 로그인 하셨습니다<br></h1>
	기타사항 :  <%=entity.getExam() %>
	
</center>
</body>
</html>






