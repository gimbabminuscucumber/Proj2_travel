package cat6.cat63.service;

import java.io.BufferedReader;

import java.io.IOException;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import cat6.cat63.dao.SuggestDAO;
import cat6.cat63.vo.SuggestVO;

public class SuggestService {

private SuggestDAO suggestDao;
	
	public SuggestService(SuggestDAO suggestDao) {
		this.suggestDao = suggestDao;
	}
	

	// CRUD
//	public int insert(SuggestVO vo) {		// DAO에서 생성한 insert 메소드에 SuggestVO 자료형인 vo를 넣으면
//		return suggestDao.insert(vo);			// suggestDao에 있는 insert 메소드에 vo를 넣어서 반환
//	}
	
	public boolean insert(SuggestVO vo) {		// sugg_num 칼럼을 +1 시키는 메소드
		if(suggestDao.maxNo() == 0) {
			vo.setSugg_num(1);
		}else {
			vo.setSugg_num(suggestDao.maxNo() + 1);
		}
		//System.out.println("??????" + vo.getSugg_num()); // 오류 확인 코드
		boolean check = false;
		
		if(suggestDao.insert(vo) != 0) {
			check = true;
		}
		
		return check;
	}
	
	public int delete(int no) {				// 게시글(no)을 delete 변수에 담겠다
		return suggestDao.delete(no);		// suggestDao의 delete에 no 를 넣겠다
	}
	
	public int update(SuggestVO vo) {
		return suggestDao.update(vo);
	}

	
	// 정보 불러오기 (전체 보기)
	public List<SuggestVO> selectList(Map<String, Object> map){	// map 데이터를 SuggestVO 자료형의 selectList에 담겠다
		List<SuggestVO> list = suggestDao.selectList(map);		// map을 담은 suggestDao의 selectList를 list에 저장해라 
		
		if(list.isEmpty()) {									// list에 데이터가 없으면
			list = null;										// null을 담아라
		}
		
		return list;
	}
	
	// 정보 불러오기
	public SuggestVO selectOne(int no)	{
		return suggestDao.selectOne(no);
	}
	
	// 게시글 총 개수
	public int getTotal(Map<String, Object> map) {
		return suggestDao.getTotal(map);
	}
	
	// 게시글 불러오기
	public Map<String, Object> getContent(int no){
		
		suggestDao.readCount(no);
		
		Map<String, Object> map = suggestDao.getContent(no);
		
		String str = "";
		
		StringBuffer buf = new StringBuffer();
		
		Clob clob = (Clob)map.get("SUGG_CONTENT");		// ** clob은 그대로 사용?? ** 
		
		BufferedReader br = null;
		try {
			br = new BufferedReader(clob.getCharacterStream());
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		try {
			while((str = br.readLine()) != null) {
				buf.append(str);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		map.put("SUGG_CONTENT", buf.toString());
		
		return map;
	}
	
	
}
