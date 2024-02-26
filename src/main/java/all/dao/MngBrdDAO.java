package all.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;


import all.vo.MngBrdVO;

public class MngBrdDAO {
	
	private SqlSession sqlSession;
	
	public void setSqlSession (SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}


	public List<MngBrdVO> MngBrdList(Map<String, Object> map){
		return sqlSession.selectList("mngbrd.mngbrdList", map);
	}
	
	
	public MngBrdVO MngBrdOne(int no) {
		return sqlSession.selectOne("mngbrd.mngbrdOne", no);
	}
		
	public int MngBrdinsert(MngBrdVO vo) {
		return sqlSession.insert("mngbrd.mngbrdInsert", vo);
	}
	
	//	윤석
	public int MngBrdGetNum21() {
		return sqlSession.selectOne("mngbrd.mngbrdGetNum21");
	}
	
	public int MngBrdGetNum22() {
		return sqlSession.selectOne("mngbrd.mngbrdGetNum22");
	}
	
//	소라
	public int MngBrdGetNum31() {
		return sqlSession.selectOne("mngbrd.mngbrdGetNum31");
	}
	
	public int MngBrdGetNum32() {
		return sqlSession.selectOne("mngbrd.mngbrdGetNum32");
	}
	
	public int MngBrdGetNum33() {
		return sqlSession.selectOne("mngbrd.mngbrdGetNum33");
	}
	
	public int MngBrdGetNum34() {
		return sqlSession.selectOne("mngbrd.mngbrdGetNum34");
	}
	
	public int MngBrdGetNum35() {
		return sqlSession.selectOne("mngbrd.mngbrdGetNum35");
	}
	
	public int MngBrdGetNum36() {
		return sqlSession.selectOne("mngbrd.mngbrdGetNum36");
	}

	public int MngBrdGetNum37() {
		return sqlSession.selectOne("mngbrd.mngbrdGetNum37");
	}
	
//	동은
	public int MngBrdGetNum51() {
		return sqlSession.selectOne("mngbrd.mngbrdGetNum51");
	}
	
	
	public Map<String, Object> MngBrdGetContent(int no) {
		return sqlSession.selectOne("mngbrd.mngbrdGetContent", no);
	}
	public Map<String, Object> MngBrdGetContent1(int num) {
		return sqlSession.selectOne("mngbrd.mngbrdGetContent1", num);
	}
	
	public int MngBrdupdate(MngBrdVO vo) {
		return sqlSession.update("mngbrd.mngbrdUpdate", vo);
	}
	
	public int MngBrdReadCount(int no) {
		return sqlSession.update("mngbrd.mngbrdReadCount", no);
	}
	
	public int MngBrdGetTotal(Map<String, Object> map) {
		return sqlSession.selectOne("mngbrd.mngbrdGetTotal", map);
	}

	public int MngBrdDdelete(int no) {
		return sqlSession.delete("mngbrd.mngbrdDelete", no);
	}

}
