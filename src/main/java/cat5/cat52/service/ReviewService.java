package cat5.cat52.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import all.vo.CommVO;
import cat5.cat52.dao.ReviewDAO;
import cat5.cat52.vo.ReviewVO;

public class ReviewService {

	private ReviewDAO reviewDao;			// 이 클래스에서 ReviewDAO 자료형인 reviewDao 를 쓰겠다
	
	public ReviewService(ReviewDAO reviewDao) {	// ReviewService 메소드에서 reviewDao 를 파라피터 값으로 쓰겠다
		this.reviewDao = reviewDao;
	}
	
	

	// DAO에서 생성한 CRUD를 반환할 메소드 
	public int insert(ReviewVO vo) {		// DAO에서 생성한 insert 메소드에 ReviewVO 자료형인 vo를 넣으면
		return reviewDao.insert(vo);		// reviewDao에 있는 insert 메소드에 vo를 넣어서 반환
	}
	
	public int delete(int no) {				// DAO에서 생성한 delete 메소드에 no를 넣으면
		return reviewDao.delete(no);		// reviewDao에 있는 delete 메소드에 no를 넣어서 반환
	}
	
	public int update(ReviewVO vo) {		// DAO에서 생성한 update 메소드에 ReviewVO 자료형인 vo를 넣으면
		return reviewDao.update(vo);		// reviewDao에 있는 update 메소드에 vo를 넣어서 반환
	}


	// 추가 기능 구현 메소드	
	public int matchIsland(String island_name) {
		return reviewDao.matchIsland(island_name);
	}
	
	public int suCount(int su_sum) {
		return reviewDao.suCount(su_sum);
	}
	
	public double reviewAvg(double review_score) {
		return reviewDao.reviewAvg(review_score);
	}
	
	public List<ReviewVO> rankList() {
		return reviewDao.rankList();	
	}
		
		
	// ReviewVO를 통해 받은 데이터들을 담을 list 메소드
		
	// 페이징 처리를 위해 map 파라미터 사용하는 메소드
	public List<ReviewVO> selectList(Map<String, Object> map){	// key를 String으로, value를 Object로 받는 map을 파라미터로 받는, ReviewVO 자료형을 가진 selectList 에 
		List<ReviewVO> list = reviewDao.selectList(map);		// map을 파라미터로 담은 reviewDao의 selectList를, ReviewVO 자료형인 list에 담겠다

		if(list.isEmpty()) {									// 만약 list가 비었으면
			list = null;										// list에 null을 담아서
		}
	
		return list;											// list를 반환해라
	}
	
	
	// 정보 불러오기
	public ReviewVO selectOne(int no) {
		return reviewDao.selectOne(no);
	}

	// 총 게시글 개수
	public int getTotal(Map<String, Object> map) {	
		return reviewDao.getTotal(map);
	}
	
	// 게시글 불러오기
	public Map<String, Object> getContent(int no) {	
		
		reviewDao.readCount(no);
		
		Map<String, Object> map = reviewDao.getContent(no);
		
		return map;
	}
	
	// 게시글 번호
	public int reviewNum() {
		return reviewDao.reviewNum();
	}
	
	public int comminsert(CommVO vo) {
		return reviewDao.comminsert(vo);
	}
	public String getusername(int no) {
		return reviewDao.getusername(no);
	}
	
}
