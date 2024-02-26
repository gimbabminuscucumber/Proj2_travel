package cat6.cat61.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import cat6.cat61.vo.ReserveInquireVO;

public class ReserveInquireDAO {
	private SqlSession sqlSession;
	
	public ReserveInquireDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<ReserveInquireVO> selectList(Map<String, Object> map){
		return sqlSession.selectList("cat61.selectList",map);
	}
	
	public ReserveInquireVO selectOne(int no) {
		return sqlSession.selectOne("cat61.selectOne",no);
	}
	
	public int getTotal(Map<String, Object> map) {
		return sqlSession.selectOne("cat61.getTotal",map);
	}
	
	public int readCount(int no) {
		return sqlSession.update("cat61.readCount",no);
	}
	
	public Map<String, Object> getContent(int no){
		return sqlSession.selectOne("cat61.getContent", no);
	}
	
	public int insert(ReserveInquireVO vo) {
		return sqlSession.insert("cat61.insert",vo);
	}
	
	public int delete(int no) {
		return sqlSession.delete("cat61.delete",no);
	}
	
	public int update(ReserveInquireVO vo) {
		return sqlSession.update("cat61.update",vo);
	}
	
	public int updateOrderno(ReserveInquireVO vo) {
		return sqlSession.update("cat61.updateOrderno",vo);
	}
	
	public int commentupdate(ReserveInquireVO vo) {
		return sqlSession.update("cat61.commentupdate", vo);
	}
	
	public int getSeq() {
		return sqlSession.selectOne("cat61.getSeq");
	}
	
	public String managername(int no) {
		return sqlSession.selectOne("cat61.managername", no);
	}
	
}
