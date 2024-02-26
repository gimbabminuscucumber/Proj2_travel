package cat5.cat52.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;

import all.vo.CommVO;
import cat5.cat52.vo.ReviewVO;

public class ReviewDAO {

	// SqlSession 생성
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	// CRUD
			public int insert(ReviewVO vo) {	
				return sqlSession.insert("cat52.insert",vo);
			}
			
			public int delete(int no) {
				return sqlSession.delete("cat52.delete",no);
			}
			
			public int update(ReviewVO vo) {
				return sqlSession.update("cat52.update",vo);
			}
			
			public int matchIsland(String island_name) {						// 게시글 작성시, island_name > island_no < island_name 으로 넘기는 매소드 (String > int > String)
				return sqlSession.selectOne("cat52.matchIsland", island_name);
			}
			
			public int suCount(int su_sum) {										// 평가 게시글 작성시, 평가한 섬의 수를 카운팅하는 메소드
				return sqlSession.selectOne("cat52.suCount", su_sum);
			}
			
			public double reviewAvg(double review_score) {						// 섬에 대해 평가한 평균 점수
				return sqlSession.selectOne("cat52.reviewAvg", review_score);
			}

			public List<ReviewVO> rankList() {								// 평가한 섬 베스트5
				return sqlSession.selectList("cat52.rankList");
			}
			
			
			// reviewVO에 담긴 데이터들을 map에 담아 list로 출력 (전체 데이터 보기)
			// map 파라미터를 받는 list 메소드 >> 페이징 처리시에 사용
			public List<ReviewVO> selectList(Map<String, Object> map){
				return sqlSession.selectList("cat52.selectList", map);
			}
			
			// 정보 불러오기 (하나씩)
			public ReviewVO selectOne(int no) {
				return sqlSession.selectOne("cat52.selectOne", no);
			}
			
			// 총 게시글 개수 (페이징 처리)
			public int getTotal(Map<String, Object> map) {	
				return sqlSession.selectOne("cat52.getTotal", map);
			}

			// 게시글 카운팅
			public int readCount(int no) {
				return sqlSession.update("cat52.readCount", no);
			}

			// 게시글 불러오기
			public Map<String, Object> getContent(int no) {
				return sqlSession.selectOne("cat52.getContent", no);
			}


			public int reviewNum() {
				return sqlSession.selectOne("cat52.reviewNum()");
			}
			
			public int comminsert(CommVO vo) {
				return sqlSession.insert("cat52.comminsert", vo);
			}
			public String getusername(int no) {
				return sqlSession.selectOne("cat52.getusername", no);
			}
	
}
