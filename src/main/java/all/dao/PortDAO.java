package all.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import all.vo.PortVO;


public class PortDAO {
	
	private SqlSession sqlSession;
	
	public void setSqlSession (SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

//	윤석	
	public List<PortVO> selectPort() {
		return sqlSession.selectList("cat24.portList");
	}
	
//	동현
	public List<PortVO> cityport(int no) {
		return sqlSession.selectList("cat11.cityport", no);
	}
	public List<PortVO> portlist(int port_no) {
		return sqlSession.selectList("cat11.portlist", port_no);
	}
	public String portaddr(int no) {
		return sqlSession.selectOne("cat11.portaddr", no);
	}
	public List<PortVO> port() {
		return sqlSession.selectList("cat11.port");
	}
	
}
