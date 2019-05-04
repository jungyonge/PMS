<%@page import="javax.naming.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="mem"  class="entity.LoginEntity" scope="session"/>
<jsp:setProperty name="mem"  property="*"/>
<%
	Connection  conn=null;
	PreparedStatement pstmt=null;
	DataSource  ds=null; 
	
/* 	try{
		Context ctx=new InitialContext();
		Context env=(Context)ctx.lookup("java:comp/env");
		ds=(DataSource)env.lookup("jdbc/ora");
		conn=ds.getConnection();
	}catch(NamingException e){
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	} */
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/jspbookdb", "root", "jspbook");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
		System.out.println("Driver not found..! Fail...");
	} catch (SQLException e) {
		e.printStackTrace();
		System.out.println("Driver found!!! Connection Good!!!!");
	}

	//-------------------------------------------------------------------------
	int n=0;
	try{
		String sql="INSERT INTO USERS(ID, PWD, REPWD, NAME, EXAM) VALUES(?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql); 
		pstmt.setString(1, mem.getId());
		pstmt.setString(2, mem.getPwd());
		pstmt.setString(3, mem.getRepwd());
		pstmt.setString(4, mem.getName()); 
		pstmt.setString(5, mem.getExam());
		
	
		n=pstmt.executeUpdate();
		if(n > 0)
			conn.commit();
		else
			conn.rollback();
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		try{
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}catch(SQLException e){}
	}
	//----------------------------------------------------------------------
	if(n > 0)
	{
%>
<br>
<br><br>
<br>
<br>
<br>
	<center><h3><%=mem.getName()%>님 환영합니다~ ^.^</h3><br>
	<%=mem.getName()%>님의 기타사항은 <%=mem.getExam() %> 입니다.</center>
	
<%	
	}else{
%>
	직원 추가 실패
<%
	}
%>
</body>
</html>