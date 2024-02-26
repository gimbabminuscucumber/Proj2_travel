package all.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import all.dao.MngBrdDAO;
import all.vo.MngBrdVO;

public class MngBrdService {
	
	private MngBrdDAO mngbrdDao;
	
	public MngBrdService(MngBrdDAO mngbrdDao) {
		this.mngbrdDao = mngbrdDao;
	}
	
	
//	윤석
	public int MngBrdInsert(MngBrdVO vo) {	
		return mngbrdDao.MngBrdinsert(vo);
	}
	
	public int MngBrdGetTotal(Map<String, Object> map) {
		return mngbrdDao.MngBrdGetTotal(map);
	}
	
	public int MngBrdGetNum21() {
		return mngbrdDao.MngBrdGetNum21();
	}
	
	public int MngBrdGetNum22() {
		return mngbrdDao.MngBrdGetNum22();
	}
	
	public List<MngBrdVO> MngBrdList(Map<String, Object> map){
		return mngbrdDao.MngBrdList(map);
	}
	
	
	public MngBrdVO MngBrdOne(int no) {
		return mngbrdDao.MngBrdOne(no);
	} 
	
	public Map<String, Object> MngBrdGetContent(int no){
		
		mngbrdDao.MngBrdReadCount(no);
		
		Map<String, Object> map = mngbrdDao.MngBrdGetContent(no);
		
		String str ="";
		StringBuffer buf = new StringBuffer();
		
		Clob clob = (Clob)map.get("MNGBRD_CONTENT");
		
		BufferedReader br = null;
		try {
			br = new BufferedReader(clob.getCharacterStream());			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			while ((str = br.readLine()) !=null) {
				buf.append(str);				
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		map.put("MNGBRD_CONTENT", buf.toString());
		
		return map;
	} 
	
	public Map<String, Object> MngBrdGetContent1(int num){
		
		
		Map<String, Object> map = mngbrdDao.MngBrdGetContent1(num);
		
		String str ="";
		StringBuffer buf = new StringBuffer();
		
		Clob clob = (Clob)map.get("MNGBRD_CONTENT");
		
		BufferedReader br = null;
		try {
			br = new BufferedReader(clob.getCharacterStream());			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			while ((str = br.readLine()) !=null) {
				buf.append(str);				
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		map.put("MNGBRD_CONTENT", buf.toString());
		
		return map;
	} 

	
	public int MngBrdUpdate(MngBrdVO vo) {
		return mngbrdDao.MngBrdupdate(vo);
	}
	
	public int MngBrdReadCount(int no) {
		return mngbrdDao.MngBrdReadCount(no);
	}
	
	public int MngBrdDelete(int no) {
		return mngbrdDao.MngBrdDdelete(no);
	}
	

//	소라
	public int MngBrdGetNum31() {
		return mngbrdDao.MngBrdGetNum31();
	}
	
	public int MngBrdGetNum32() {
		return mngbrdDao.MngBrdGetNum32();
	}
	
	public int MngBrdGetNum33() {
		return mngbrdDao.MngBrdGetNum33();
	}
	
	public int MngBrdGetNum34() {
		return mngbrdDao.MngBrdGetNum34();
	}
	
	public int MngBrdGetNum35() {
		return mngbrdDao.MngBrdGetNum35();
	}
	
	public int MngBrdGetNum36() {
		return mngbrdDao.MngBrdGetNum36();
	}
	
	public int MngBrdGetNum37() {
		return mngbrdDao.MngBrdGetNum37();
	}
	
	public int MngBrdGetNum51() {
		return mngbrdDao.MngBrdGetNum51();
	}
	
}
