package biz;

import static common.JdbcTemplate.close;
import static common.JdbcTemplate.commit;
import static common.JdbcTemplate.getConnection;
import static common.JdbcTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import dao.LostDao;
import entity.LostEntity;


public class LostBiz {
	public int insertLost(LostEntity entity) {
		Connection conn=getConnection();
		LostDao dao=new LostDao();
		int n=dao.insertLost(conn, entity);
		if(n > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return n;
	}
	
	public List<LostEntity> listLost() {
		Connection conn=getConnection();
		LostDao dao=new LostDao();
		List<LostEntity> listlost = dao.listLost(conn);
		close(conn);
		return listlost;
	}
	
	public int updateLost(LostEntity entity) {
		Connection conn=getConnection();
		LostDao dao=new LostDao();
		int n=dao.updateLost(conn, entity);
		if(n > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return n;
	}

	public int deleteLost(int eno) {
		Connection conn=getConnection();
		LostDao dao=new LostDao();
		int n=dao.deleteLost(conn, eno);
		if(n > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return n;
	}
}

