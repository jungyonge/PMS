<%@ page import="entity.LoginEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type = "text/css">
img{border:0 none;}

.btn{float:center;}
.btn a{display:block;overflow:hidden;height:65px;}
.btn a img{vertical-align:top;}
.btn a:hover{background-position:0 0;}
.btn a:hover img{margin-top:-65px;}
</style>
</head>

<body bgcolor="skyblue" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<a href="/log/welcome.html" target="main"><img src="/log/image/PMS.png" width="220" height="110" border="0"></a></p>




<%
	LoginEntity entity=(LoginEntity)session.getAttribute("logOK");
	if(entity == null)
	{
%>
<p align="center"class="btn"><a href="/log/emptest/timeaccount.html" target="main"><img src="/log/image/timeaccount.png"></a>
<class="btn"><a href="/log/losttest/lostInsert.html" target="main"><img src="/log/image/Lost-and-Found.png"></a>
<class="btn"><a href="/log/member.html" target="main"><img src="/log/image/sign on.png"></a>
<class="btn"><a href="/log/logtest/login.html" target="main"><img src="/log/image/login.png"></a>

<%-- <class="btn"><a href="/log/lostlist" target="main"><img src="/log/image/employee add.png"  border="0"></a>
<class="btn"><a href="/log/member.html" target="main"><img src="/log/image/sign on.png" border="0"></a>
<class="btn"><a href="/log/logtest/login.html" target="main"><img src="/log/image/login.png"border="0"></a>
<class="btn"><a href="/log/logtest/logout" target="main"><img src="/log/image/logout.png"border="0"></a>
<br><br><br><br><br><br><br>


<input type="button" value="직원근무시간" class="button"style="width:210px;height:60px;font-size:15px;"border="0"onclick="parent.main.location.href='/log/timelist.jsp'";><br>
<input type="button" value="분실물관리" class="button"style="width:210px;height:60px;font-size:15px;" border="0"onclick="parent.main.location.href='/log/lostlist'";>
<input type="button" value="회원가입" class="button"style="width:210px;height:60px;font-size:15px;" border="0"onclick="parent.main.location.href='/log/member.html'";> 
<input type="button" value="로그인" class="button"style="width:210px;height:60px;font-size:15px;" border="0" onclick="parent.main.location.href='/log/logtest/login.html'";><br> 	
		--%>		
<%
	}else{
%>
<p align="center"class="btn"><a href="/log/emptest/timeaccount.html" target="main"><img src="/log/image/employee time.png"></a>
<class="btn"><a href="/log/lostlist" target="main"><img src="/log/image/Lost-and-Found.png"></a>
<class="btn"><a href="/log/member.html" target="main"><img src="/log/image/sign on.png"></a>

<class="btn"><a href="/log/list" target="main"><img src="/log/image/employee example.png"  border="0"></a>
<class="btn"><a href="/log/emptest/empInsert.html" target="main"><img src="/log/image/employee add.png" border="0"></a>
<class="btn"><a href="/log/logtest/login.html" target="main"><img src="/log/image/login.png"></a>
<class="btn"><a href="/log/logout" target="main"><img src="/log/image/logout.png"border="0"></a>


<%-- <input type="button" value="직원근무시간" class="button"style="width:210px;height:60px;font-size:15px;"border="0"onclick="parent.main.location.href='/log/timelist.jsp'";><br>
<input type="button" value="분실물관리" class="button"style="width:210px;height:60px;font-size:15px;" border="0"onclick="parent.main.location.href='/log/lostlist'";>
<input type="button" value="회원가입" class="button"style="width:210px;height:60px;font-size:15px;" border="0"onclick="parent.main.location.href='/log/member.html'";> 

<input type="button" value="사원전체보기" class="button"style="width:210px;height:60px;font-size:15px;"border="0"onclick="parent.main.location.href='/log/list'";><br>
<input type="button" value="사원추가하기" class="button"style="width:210px;height:60px;font-size:15px;"border="0"onclick="parent.main.location.href='/log/emptest/empInsert.html'";><br>
<input type="button" value="로그인" class="button"style="width:210px;height:60px;font-size:15px;" border="0" onclick="parent.main.location.href='/log/logtest/login.html'";><br> 
<input type="button" value="로그아웃" class="button"style="width:210px;height:60px;font-size:15px;"border="0"onclick="parent.top.location.href='/log/logout'";><br>
--%>
<% 
	}
%>
</body>
</html>




