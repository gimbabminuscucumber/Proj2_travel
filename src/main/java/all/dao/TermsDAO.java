package all.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;

import all.vo.TermsVO;

public class TermsDAO {

	private SqlSession sqlSession;
	
	public TermsDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
//	우형	
	public List<TermsVO> selectFooter(){
		return sqlSession.selectList("footer.selectFooter");
	}
	
	public List<TermsVO> selectFooter2(){
		return sqlSession.selectList("footer.selectFooter2");
	}
	
	public List<TermsVO> selectFooter3(){
		return sqlSession.selectList("footer.selectFooter3");
	}
	
//	소라	
	public List<TermsVO> TermsList(){
		return sqlSession.selectList("terms.termsList");
	} 
	
}
