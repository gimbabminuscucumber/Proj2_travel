package all.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import all.vo.CityVO;

public class CityDAO {
	
	private SqlSession sqlSession;
	
	public void setSqlSession (SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<CityVO> citylist() {
		return sqlSession.selectList("cat11.citylist");
	}
}