package cat1.cat11.dao;

import org.apache.ibatis.session.SqlSession;

import cat1.cat11.vo.SeatInfoVO;

public class SeatInfoDAO {
	private SqlSession sqlSession;
	
	public SeatInfoDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public SeatInfoVO seatprice(int no) {
		return sqlSession.selectOne("cat11.seatprice", no);
	}
}
