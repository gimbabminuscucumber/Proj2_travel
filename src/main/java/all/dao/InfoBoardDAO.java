package all.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import all.vo.InfoBoardVO;
import all.vo.ShipVO;

public class InfoBoardDAO{
private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<InfoBoardVO> selectList(int infobrd_ctgrno) {
		return sqlSession.selectList("site.selectList", infobrd_ctgrno);
	}
	
	public List<InfoBoardVO> selectList2(int infobrd_ctgrno) {
		return sqlSession.selectList("site.selectList2", infobrd_ctgrno);
	}
	
	public List<InfoBoardVO> selectList3(int infobrd_ctgrno) {
		return sqlSession.selectList("site.selectList3", infobrd_ctgrno);
	}
	
	public List<ShipVO> selectList4() {
		return sqlSession.selectList("site.selectList4");
	}
	
	public List<InfoBoardVO> selectList5(Map<String, Object> map) {
		System.out.println(map);
		return sqlSession.selectList("site.selectList5", map);
	}
	
	public List<InfoBoardVO> selectReady(){
		return sqlSession.selectList("ready.selectReady");
	}
	
	// 동은 =======================================================
		public List<InfoBoardVO> selectList1(){
			return sqlSession.selectList("cat62.selectList1");
		}
		public List<InfoBoardVO> selectList2(){
			return sqlSession.selectList("cat62.selectList2");
		}
		public List<InfoBoardVO> selectList3(){
			return sqlSession.selectList("cat62.selectList3");
		}
		public List<InfoBoardVO> selectList41(){
			return sqlSession.selectList("cat62.selectList4");
		}
		public List<InfoBoardVO> selectList5(){
			return sqlSession.selectList("cat62.selectList5");
		}
		
		// 정보 불러오기 (하나씩)
		public InfoBoardVO selectOne(int no) {
			return sqlSession.selectOne("cat62.selectOne", no);
		}
		
		// 총 게시글 개수 (페이징 처리)
		public int getTotal(Map<String, Object> map) {	
			return sqlSession.selectOne("cat62.getTotal", map);
		}

		// 게시글 카운팅
		public int readCount(int no) {
			return sqlSession.update("cat62.readCount", no);
		}

		// 게시글 불러오기
		public Map<String, Object> getContent(int no) {
			return sqlSession.selectOne("cat62.getContent", no);
		}
	
}