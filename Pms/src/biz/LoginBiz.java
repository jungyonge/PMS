package biz;

import static common.JdbcTemplate.close;
import static common.JdbcTemplate.getConnection;
import java.sql.Connection;
import dao.LoginDao;
import entity.LoginEntity;

public class LoginBiz {
	public LoginEntity getLoginUser(String id, String pwd)
	{
	
		Connection conn=getConnection();
		LoginDao dao=new LoginDao();
		LoginEntity entity=dao.getLoginUser(conn, id, pwd);
		close(conn);
		return entity;
	}
}






