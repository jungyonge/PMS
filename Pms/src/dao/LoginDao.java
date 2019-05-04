package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import entity.LoginEntity;
import static common.JdbcTemplate.*;

public class LoginDao {
	public LoginEntity getLoginUser(Connection conn, String id, String pwd) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="SELECT * FROM USERS WHERE ID=? AND PWD=?";
		LoginEntity entity=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				entity=new LoginEntity();
				entity.setId(rs.getString("ID"));
				entity.setPwd(rs.getString("PWD"));
				
				entity.setName(rs.getString("NAME"));
				entity.setRepwd(rs.getString("REPWD"));
				entity.setExam(rs.getString("EXAM"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rs);               
			close(pstmt);
		}
		return entity;
	}
}








