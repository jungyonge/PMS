package biz;

import static common.JdbcTemplate.close;
import static common.JdbcTemplate.commit;
import static common.JdbcTemplate.getConnection;
import static common.JdbcTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import dao.EmpDao;
import entity.EmpEntity;

public class EmpBiz {
	public int insertEmp(EmpEntity entity) {
		Connection conn=getConnection();
		EmpDao dao=new EmpDao();
		int n=dao.insertEmp(conn, entity);
		if(n > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return n;
	}

	public List<EmpEntity> listEmp() {
		Connection conn=getConnection();
		EmpDao dao=new EmpDao();
		List<EmpEntity> list = dao.listEmp(conn);
		close(conn);
		return list;
	}
	
	public int timeEmp(EmpEntity entity) {
		Connection conn=getConnection();
		EmpDao dao=new EmpDao();
		int n=dao.timeEmp(conn, entity);
		if(n > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return n;
	}
	
	public int updateEmp(EmpEntity entity) {
		Connection conn=getConnection();
		EmpDao dao=new EmpDao();
		int n=dao.updateEmp(conn, entity);
		if(n > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return n;
	}
	


	public int deleteEmp(int eno) {
		Connection conn=getConnection();
		EmpDao dao=new EmpDao();
		int n=dao.deleteEmp(conn, eno);
		if(n > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return n;
	}
}










