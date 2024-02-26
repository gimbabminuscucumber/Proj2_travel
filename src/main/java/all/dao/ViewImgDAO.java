package all.dao;

import org.apache.ibatis.session.SqlSession;

public class ViewImgDAO {
	
	private SqlSession sqlSession;
	
	public void setSqlSession (SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	

}
