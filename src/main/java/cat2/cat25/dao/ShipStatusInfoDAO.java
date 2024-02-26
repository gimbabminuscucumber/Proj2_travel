package cat2.cat25.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import all.vo.PortVO;


public class ShipStatusInfoDAO {
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<Map<String, Object>> selectList(){
		return sqlSession.selectList("cat25.selectList");
	}
	
	public List<PortVO> selectPort(){
		return sqlSession.selectList("cat25.selectPort");
	}
	
}	
