package cat1.cat11.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import cat1.cat11.vo.TicketKindVO;

public class TicketKindDAO {
	private SqlSession sqlSession;
	
	public TicketKindDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<TicketKindVO> ticketlist(Map<String, Object> map){
		return sqlSession.selectList("cat11.ticketlist", map);
	}
}
