package cat3.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import all.vo.CityVO;
import all.vo.IslandVO;
import all.vo.MngBrdVO;
import all.vo.StateVO;

public class IslandDAO {
	
	private SqlSession sqlSession;
	
	public void setSqlSession (SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	public List<IslandVO> IslandList(){
		return sqlSession.selectList("island.islandList");
	}
	
	public IslandVO IslandOne(int no) {
		return sqlSession.selectOne("island.islandOne", no);
	}
		
	public int IslandInsert(IslandVO vo) {
		return sqlSession.insert("island.islandInsert", vo);
	}
	
	public IslandVO IslandGetContent(int no) {
		return sqlSession.selectOne("island.islandGetContent", no);
	}
	
	public int IslandUpdate(IslandVO vo) {
		return sqlSession.update("island.islandUpdate", vo);
	}

	public int IslandDdelete(int no) {
		return sqlSession.delete("island.islandDelete", no);
	}
	
	// board content
	
//	public MngBrdVO IslandMngbrd(int no) {
//		return sqlSession.selectOne("island.islandMngbrd", no);
//	}
	
	
	// 검색 part ; select option
	
	public List<IslandVO> SearchList(int no){
		return sqlSession.selectList("island.searchList", no);
	}
	
	public List<StateVO> StateList(){
		return sqlSession.selectList("island.stateList");
	}

}
