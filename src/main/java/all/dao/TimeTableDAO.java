package all.dao;

import java.util.List;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import all.vo.TimeTableVO;

public class TimeTableDAO {
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		
	}
	public List<Map<String, Object>> selectList(TimeTableVO vo){
		return sqlSession.selectList("cat24.selectList",vo);
	}

}
