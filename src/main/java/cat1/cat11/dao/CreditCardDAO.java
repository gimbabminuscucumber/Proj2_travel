package cat1.cat11.dao;

import org.apache.ibatis.session.SqlSession;

import cat1.cat11.vo.CreditCardVO;

public class CreditCardDAO {
	private SqlSession sqlSession;
	
	public CreditCardDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public int cardinsert(CreditCardVO vo) {
		return sqlSession.insert("cat11.cardinsert", vo);
	}
	
	public CreditCardVO recipe(int resv_no) {
		return sqlSession.selectOne("cat12.recipe", resv_no);
	}
	
}
