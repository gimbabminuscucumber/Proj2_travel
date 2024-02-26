package cat4.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cat4.vo.ParkingVO;
import cat4.vo.PlaneTerminalVO;
import cat4.vo.PublicTerminalVO;
import cat4.vo.TrainTerminalVO;

public class TerminalAllDAO {

	private SqlSession sqlSession;
	
	public TerminalAllDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<ParkingVO> selectParking(int port_no){
		return sqlSession.selectList("terminal.selectParking", port_no);
	}
	
	public List<PublicTerminalVO> selectPublicTerminal(int port_no){
		return sqlSession.selectList("terminal.selectPublicTerminal", port_no);
	}
	
	public List<TrainTerminalVO> selectTrainTerminal(int port_no){
		return sqlSession.selectList("terminal.selectTrainTerminal", port_no);
	}
	
	public List<PlaneTerminalVO> selectPlaneTerminal(int port_no){
		return sqlSession.selectList("terminal.selectPlaneTerminal", port_no);
	}
	
}
