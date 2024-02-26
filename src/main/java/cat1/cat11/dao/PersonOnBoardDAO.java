package cat1.cat11.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cat1.cat11.vo.PersonOnBoardVO;

public class PersonOnBoardDAO {
	private SqlSession sqlSession;
	
	public PersonOnBoardDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public int pobinsert(PersonOnBoardVO vo) {
		return sqlSession.insert("cat11.pobinsert", vo);
	}
	
	public int pobno(PersonOnBoardVO vo) {
		return sqlSession.selectOne("cat11.pobno",vo);
	}
	public List<PersonOnBoardVO> poblist(int resv_no){
		return sqlSession.selectList("cat12.poblist", resv_no);
	}
	public List<Integer> pobno(int resv_no){
		return sqlSession.selectList("cat12.pob_no", resv_no);
	}
}
