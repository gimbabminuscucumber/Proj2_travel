package cat1.cat11.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cat1.cat11.vo.TicketSaleVO;

public class TicketSaleDAO {
	private SqlSession sqlSession;
	
	public TicketSaleDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<TicketSaleVO> salelist(int no) {
		return sqlSession.selectList("cat11.salelist", no);
	}
	
	public int saleprice(int no) {
		return sqlSession.selectOne("cat11.saleprice", no);
	}
}
