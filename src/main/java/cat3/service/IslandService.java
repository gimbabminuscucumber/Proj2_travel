package cat3.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import all.vo.CityVO;
import all.vo.IslandVO;
import all.vo.StateVO;
import cat3.dao.IslandDAO;

public class IslandService {
	
	private IslandDAO islandDao;
	
	public IslandService(IslandDAO islandDao) {
		this.islandDao = islandDao;
	}
	
	
	public int IslandInsert(IslandVO vo) {	
		return islandDao.IslandInsert(vo);
	}
	
	public List<IslandVO> IslandList(){
		return islandDao.IslandList();
	}
	
	public IslandVO IslandOne(int no) {
		return islandDao.IslandOne(no);
	} 
	
	public IslandVO IslandGetContent(int no){								
		return islandDao.IslandGetContent(no);
	} 

	
	public int IslandUpdate(IslandVO vo) {
		return islandDao.IslandUpdate(vo);
	}
	
	public int IslandDelete(int no) {
		return islandDao.IslandDdelete(no);
	}
	
	// 게시글 부분
	
//	public MngBrdVO IslandMngbrd(int no) {
//		
//		MngBrdVO vo = islandDao.IslandMngbrd(no);
//		
//		String str ="";
//		StringBuffer buf = new StringBuffer();
//		
//		Clob clob = (Clob)vo.getMngbrd_content();
//		
//		BufferedReader br = null;
//		try {
//			br = new BufferedReader(clob.getCharacterStream());			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
//		try {
//			while ((str = br.readLine()) !=null) {
//				buf.append(str);				
//			}
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		
//		vo.put("MNGBRD_CONTENT", buf.toString());
//		
//		return vo;
//	}
	
	// 검색
	
	public List<IslandVO> SearchList(int no){
		return islandDao.SearchList(no);
	}
	
	public List<StateVO> StateList(){
		return islandDao.StateList();
	}

}
