package cat1.cat11.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import all.vo.TimeTableVO;
import cat1.cat11.vo.ReservationistVO;

public class ReservationistDAO {
	private SqlSession sqlSession;
	
	public ReservationistDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public int resvinsert(ReservationistVO vo) {
		return sqlSession.insert("cat11.resvinsert", vo);
	}
	
	public List<Map<String, Object>> resvlist(TimeTableVO vo) {
		return sqlSession.selectList("cat11.resvlist", vo);
	}
	public int getresvno(ReservationistVO vo) {
		return sqlSession.selectOne("cat11.getresvno", vo);
	}
	public int resvnextval() {
		return sqlSession.selectOne("cat11.resvnextval");
	}
	public String resvbirth(int no) {
		return sqlSession.selectOne("cat11.resvbirth", no);
	}
}
