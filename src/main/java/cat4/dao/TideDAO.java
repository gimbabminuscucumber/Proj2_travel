package cat4.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cat4.vo.ParkingVO;
import cat4.vo.PlaneTerminalVO;
import cat4.vo.PublicTerminalVO;
import cat4.vo.TideVO;
import cat4.vo.TrainTerminalVO;

public class TideDAO {

	private SqlSession sqlSession;
	
	public TideDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<TideVO> selectTide(int port_no){
		return sqlSession.selectList("tide.selectTide", port_no);
	}
	
}
