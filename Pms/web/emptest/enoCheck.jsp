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
	String eno = request.getParameter("eno");

	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	DataSource  ds=null;
	
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

	int ck=0;          //eno가 있으면 1을 eno가 없으면 0을 리턴
	
	if( ! eno.equals("") && eno != null)
	{
		try{
			String sql="SELECT COUNT(*) FROM EMP WHERE ENO ='" + eno + "'";
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next())
			{
				ck=rs.getInt(1);         //컬럼명을 사용할수 없을경우 인덱스번호 사용
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			}catch(SQLException e){}
		}
	} //end if
	//------------------------------------------------------------------------
	if(ck > 0)
	{
%>
		<center>
			【<%= eno %>】는 <br>이미<font color="red">
			<b>사용중</b></font>입니다<br>
			<input type="button"  value="닫기"  
			onclick="opener.empForm.eno.value;
			              opener.empForm.eno.focus();window.close()">
		</center>
<%	
	}else{
%>
		<center>
			【<%= eno %>】는 <br><font color="green">
			<b>사용가능</b></font>합니다<br>
			<input type="button"  value="닫기"  
			onclick="opener.empForm.ename.focus();window.close()">
			
		</center>
<%		
	}
%>
</body>
</html>

