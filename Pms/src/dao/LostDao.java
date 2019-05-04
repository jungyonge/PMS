package dao;

import static common.JdbcTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.LostEntity;

public class LostDao {
	public int insertLost(Connection conn, LostEntity entity) {
		Statement stmt=null;
		StringBuilder  sql=new StringBuilder();
		sql.append("INSERT INTO LOST(ENO,ITEM,GETDAY,PLACE,GETP) VALUES('");   
		sql.append(entity.getEno());
		sql.append("','");
		sql.append(entity.getItem());
		sql.append("','");
		sql.append(entity.getGetday());
		sql.append("','");
		sql.append(entity.getPlace());
		sql.append("','");
		sql.append(entity.getGetp());
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


	public List<LostEntity> listLost(Connection conn) {
		Statement stmt=null;
		ResultSet rs=null;
		List<LostEntity> listlost=new ArrayList<>();
		LostEntity entity=null;
		String sql="SELECT * FROM Lost ORDER BY ENO ASC";
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				entity=new LostEntity();
				entity.setEno(rs.getInt("ENO"));
				entity.setItem(rs.getString("ITEM"));
				entity.setGetday(rs.getString("GETDAY"));
				entity.setPlace(rs.getString("PLACE"));
				entity.setGetp(rs.getString("GETP"));
				listlost.add(entity);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rs);
			close(stmt);
		}
		return listlost;
	}
	
	public int updateLost(Connection conn, LostEntity entity) {
		PreparedStatement pstmt=null;
		
		String sql="UPDATE Lost SET ITEM=?, GETDAY=?, PLACE=?, GETP=? WHERE ENO=?";
		int n=0;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, entity.getItem());
			pstmt.setString(2, entity.getGetday());
			pstmt.setString(3, entity.getPlace());
			pstmt.setString(4, entity.getGetp());
			pstmt.setInt(5, entity.getEno());
			n=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return n;
	}

	public int deleteLost(Connection conn, int eno)  {
		Statement stmt=null;
		int n=0;
		StringBuilder sql=new StringBuilder();
		sql.append("DELETE FROM Lost WHERE ENO=");
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
