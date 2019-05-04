package dao;

import static common.JdbcTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.EmpEntity;

public class EmpDao {
	public int insertEmp(Connection conn, EmpEntity entity) {
		Statement stmt=null;
//		String sql="INSERT INTO EMP(ENO,ENAME,PHONE,DEPT) VALUES(SEQ_ENO.NEXTVAL,'"
//				+entity.getEname() + "','" + entity.getPhone() + "','" 
//				+ entity.getDept() + "')";
		StringBuilder  sql=new StringBuilder();
		sql.append("INSERT INTO EMP(ENO,ENAME,INDAY,ADR,PHONE) VALUES('");
		sql.append(entity.getEno());
		sql.append("','");
		sql.append(entity.getEname());
		sql.append("','");
		sql.append(entity.getInday());
		sql.append("','");
		sql.append(entity.getAdr());
		sql.append("','");
		sql.append(entity.getPhone());
		sql.append("')");		
		System.out.println("INSERT±¸¹® : " + sql);
		int n=0;
		try{
			stmt=conn.createStatement();
			n=stmt.executeUpdate(sql.toString());
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			close(stmt);
		} 		
		return n;
	}

	public List<EmpEntity> listEmp(Connection conn) {
		Statement stmt=null;
		ResultSet rs=null;
		List<EmpEntity> list=new ArrayList<>();
		EmpEntity entity=null;
		String sql="SELECT * FROM EMP ORDER BY ENO ASC";
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				entity=new EmpEntity();
				entity.setEno(rs.getInt("ENO")); //or  entity.setEno(rs.getInt(1)); 
				entity.setEname(rs.getString("ENAME"));
				entity.setInday(rs.getString("INDAY"));
				entity.setAdr(rs.getString("ADR"));
				entity.setPhone(rs.getString("PHONE"));
				entity.setTimes(rs.getInt("TIMES"));
				entity.setAlltimes(rs.getInt("ALLTIMES"));
				list.add(entity);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rs);
			close(stmt);
		}
		return list;
	}
	
	public int timeEmp(Connection conn, EmpEntity entity) {
		PreparedStatement pstmt=null;
		
		String sql="UPDATE EMP SET TIMES=?, ALLTIMES=? WHERE ENO=?";
		int n=0;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, entity.getTimes());
			pstmt.setInt(2, entity.getAlltimes());
			pstmt.setInt(3, entity.getEno());
			n=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return n;
	}
	
	public int updateEmp(Connection conn, EmpEntity entity) {
		PreparedStatement pstmt=null;
		
		String sql="UPDATE EMP SET ENAME=?, INDAY=?, ADR=?, PHONE=? WHERE ENO=?";
		int n=0;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, entity.getEname());
			pstmt.setString(2, entity.getInday());
			pstmt.setString(3, entity.getAdr());
			pstmt.setString(4, entity.getPhone());
			pstmt.setInt(5, entity.getEno());
			n=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return n;
	}
	
	public int deleteEmp(Connection conn, int eno)  {
		Statement stmt=null;
		int n=0;
		StringBuilder sql=new StringBuilder();
		sql.append("DELETE FROM EMP WHERE ENO=");
		sql.append(eno);
		
		try {
			stmt=conn.createStatement();
			n=stmt.executeUpdate(sql.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(conn);
		}
		return n;
	}
}		







