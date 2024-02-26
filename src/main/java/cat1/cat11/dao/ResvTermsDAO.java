package cat1.cat11.dao;

import org.apache.ibatis.session.SqlSession;

public class ResvTermsDAO {
	private SqlSession sqlSession;
	 
	public ResvTermsDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public String getResvTerms() {
		return sqlSession.selectOne("cat11.getResvTerms");
	}
	
	public String gongyong() {
		return sqlSession.selectOne("cat11.gongyong");
	}
	
	public String sign(int ship_no) {
		return sqlSession.selectOne("cat11.sign", ship_no);
	}
	
	public String clicksign(int ship_no) {
		return sqlSession.selectOne("cat11.clicksign", ship_no);
	}
	
	public String checksign(int ship_no) {
		return sqlSession.selectOne("cat11.checksign", ship_no);
	}
	
	public int signnum(int ship_no) { 
		return sqlSession.selectOne("cat11.signnum", ship_no);
	}
	
	public String carterms() {
		return sqlSession.selectOne("cat11.carterms");
	}
}
