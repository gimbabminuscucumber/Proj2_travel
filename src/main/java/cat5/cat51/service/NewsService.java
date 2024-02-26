package cat5.cat51.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import all.dao.MngBrdDAO;
import all.vo.MngBrdVO;
import cat6.cat63.dao.SuggestDAO;
import cat6.cat63.vo.SuggestVO;

public class NewsService {

	private MngBrdDAO mngbrdDao;
	
	public NewsService(MngBrdDAO mngbrdDao) {
		this.mngbrdDao = mngbrdDao;
	}
	

	// CRUD
	public int insert(MngBrdVO vo) {			
		return mngbrdDao.MngBrdinsert(vo);		
	}
	
	
	public int delete(int no) {					
		return mngbrdDao.MngBrdDdelete(no);	
	}
	
	public int update(MngBrdVO vo) {
		return mngbrdDao.MngBrdupdate(vo);
	}

	
	// 정보 불러오기 (전체 보기)
	public List<MngBrdVO> selectList(Map<String, Object> map){	
		List<MngBrdVO> list = mngbrdDao.MngBrdList(map);
		
		return list;	
		
	}
	
	// 정보 불러오기
	public MngBrdVO selectOne(int no)	{
		return mngbrdDao.MngBrdOne(no);
	}
	
	// 게시글 총 개수
	public int getTotal(Map<String, Object> map) {
		return mngbrdDao.MngBrdGetTotal(map);
	}
	
	// 게시글 불러오기
	public Map<String, Object> getContent(int no){
		
		mngbrdDao.MngBrdReadCount(no);
		
		Map<String, Object> map = mngbrdDao.MngBrdGetContent(no);
		
		String str = "";
		
		StringBuffer buf = new StringBuffer();
		
		Clob clob = (Clob)map.get("MNGBRD_CONTENT");
		
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
		
		map.put("MNGBRD_CONTENT", buf.toString());
		
		return map;
	}
	
	
	
}
