package all.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import all.vo.ShipVO;

public class ShipDAO {
	private SqlSession sqlSession;
	
	public ShipDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
//	우형	
	public List<ShipVO> selectShip() {
		return sqlSession.selectList("ship.selectShip");
	}
	
	public ShipVO selectInfo(int no) {
		return sqlSession.selectOne("ship.selectInfo", no);
	}
	
//	윤석
	public List<ShipVO> selectInterval() {
		return sqlSession.selectList("cat23.selectInterval");
	}
	
	public List<Map<String, Object>> selectList(String ship_interval){
		return sqlSession.selectList("cat23.selectList",ship_interval);
	}
	
//	동현
	public ShipVO shipcomp(int no) {
		return sqlSession.selectOne("cat11.shipcomp", no);
	}
}
