package cat6.cat63.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import cat6.cat63.vo.SuggestVO;

public class SuggestDAO {

private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	

	// CRUD
	public int insert(SuggestVO vo) {
		return sqlSession.insert("cat63.insert", vo);
	}
	
	public int delete(int no) {
		return sqlSession.delete("cat63.delete", no);
	}
	
	public int update(SuggestVO vo) {
		return sqlSession.update("cat63.update", vo);
	}
	
	
	// SuggestVO에 담긴 데이터들을 map에 담아 list로 출력 (전체 데이터 보기)
	public List<SuggestVO> selectList(Map<String, Object> map){
		return sqlSession.selectList("cat63.selectList", map);
	}
	
	// 정보 불러오기
	public SuggestVO selectOne(int no) {					// 게시글(no) 데이터를 담은 SuggesetVO 자료형인 selectOne 변수
		return sqlSession.selectOne("cat63.selectOne", no);	// mapper에 있는 suggest의 selectOne에 게시글(no) 데이터를 담아서 하나씩(.selectOne) 불러와라
	}
	
	// 총 게시글 개수 (페이징)
	public int getTotal(Map<String, Object> map) {			// map 형태의 데이터를 getTotal에 저장
		return sqlSession.selectOne("cat63.getTotal", map);	// mapper(suggest)에 있는 getTotal에 map 데이터를 담아서 하나씩(.selectOne) 불러와라
	}
	
	// 게시글 카운팅
	public int readCount(int no) {
		return sqlSession.update("cat63.readCount", no);
	}
	
	// 게시글 불러오기
	public Map<String, Object> getContent(int no){
		return sqlSession.selectOne("cat63.getContent", no);
	}
	
	// 칼럼값 +1 시키기
	public int maxNo() {
		if(sqlSession.selectOne("cat63.maxNo") == null) {
			return 0;
		}else {
			return sqlSession.selectOne("cat63.maxNo");
		}
	}
	
	
}
