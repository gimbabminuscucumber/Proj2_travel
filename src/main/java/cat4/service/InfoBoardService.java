package cat4.service;

import java.util.List;
import java.util.Map;

import all.dao.InfoBoardDAO;
import all.vo.InfoBoardVO;
import all.vo.ShipVO;

public class InfoBoardService {

	private InfoBoardDAO infoBoardDao;
	
	public void setInfoBoardDao(InfoBoardDAO infoBoardDao) {
		this.infoBoardDao = infoBoardDao;
	}
	
	public List<InfoBoardVO> selectList(int infobrd_ctgrno) {
		List<InfoBoardVO> list = infoBoardDao.selectList(infobrd_ctgrno);
		return list;
	}
	
	public List<InfoBoardVO> selectList2(int infobrd_ctgrno) {
		List<InfoBoardVO> list = infoBoardDao.selectList2(infobrd_ctgrno);
		return list;
	}
	
	public List<InfoBoardVO> selectList3(int infobrd_ctgrno) {
		List<InfoBoardVO> list = infoBoardDao.selectList3(infobrd_ctgrno);
		return list;
	}
	
	public List<ShipVO> selectList4() {
		List<ShipVO> list = infoBoardDao.selectList4();
		System.out.println(list);
		return list;
	}
	
	public List<InfoBoardVO> selectList5(Map<String, Object> map) {
		List<InfoBoardVO> list = infoBoardDao.selectList5(map);
		System.out.println(list);
		return list;
	}
	
	public List<InfoBoardVO> selectReady(){
		List<InfoBoardVO> list = infoBoardDao.selectReady();
		return list;
	}
	
}
