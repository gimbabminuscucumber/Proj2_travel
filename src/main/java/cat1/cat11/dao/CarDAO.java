package cat1.cat11.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import cat1.cat11.vo.CarVO;

public class CarDAO {
	private SqlSession sqlSession;
	
	public CarDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<CarVO> carlist(int ship_no){
		return sqlSession.selectList("cat11.carlist", ship_no);
	}

}
