package all.dao;

import org.apache.ibatis.session.SqlSession;

public class ManagerDAO {
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
}
