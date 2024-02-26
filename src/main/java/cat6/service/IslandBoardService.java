package cat6.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import all.vo.ManagerVO;
import cat6.dao.IslandBoardDAO;
import cat6.vo.AccommoVO;
import cat6.vo.IslandBoardVO;
import cat6.vo.TransportationVO;
import cat6.vo.TravelDateVO;
import cat6.vo.TravelPurposeVO;
import cat6.vo.TravelScheduleVO;

public class IslandBoardService {

	private IslandBoardDAO islandBoardDao;
	
	public IslandBoardService(IslandBoardDAO islandBoardDao) {
		this.islandBoardDao = islandBoardDao;
	}
	
	public List<IslandBoardVO> selectList(Map<String, Object> map){
		List<IslandBoardVO> list = islandBoardDao.selectList(map);
		
		if(list.isEmpty()) {
			list = null;
		}
		return list;
	}
	
	public IslandBoardVO selectOne(int no) {
		return islandBoardDao.selectOne(no);
	}
	
	public int getTotal(Map<String, Object> map) {
		return islandBoardDao.getTotal(map);
	}
	
	public int readCount(int no) {
		return islandBoardDao.readCount(no);
	}
	
	public Map<String, Object> getContent(int no){
		islandBoardDao.readCount(no);
		Map<String, Object> map = islandBoardDao.getContent(no);
		System.out.println(map);
		
		String str = "";
		
		StringBuffer buf = new StringBuffer();
		
		Clob clob = (Clob)map.get("ISLBOARD_CONTENT");
		
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
		
		map.put("ISLBOARD_CONTENT", buf.toString());
		
		return map;
	}
	
	public int insert(IslandBoardVO vo) {
		return islandBoardDao.insert(vo);
	}
	
	public List<ManagerVO> selectManager(){
		return islandBoardDao.selectManager();
	}
	
	public List<AccommoVO> selectAccommo(){
		return islandBoardDao.selectAccommo();
	}
	
	public List<TransportationVO> selectTransportation(){
		return islandBoardDao.selectTransportation();
	}
	
	public List<TravelDateVO> selectTraveldate(){
		return islandBoardDao.selectTraveldate();
	}
	
	public List<TravelPurposeVO> selectTravelpurpose(){
		return islandBoardDao.selectTravelpurpose();
	}
	
	public List<TravelScheduleVO> selectTravelschedule(){
		return islandBoardDao.selectTravelschedule();
	}
	
	public int delete(int no) {
		return islandBoardDao.delete(no);
	}
	
	public int update(IslandBoardVO vo) {
		return islandBoardDao.update(vo);
	}
	
	public int reply(IslandBoardVO vo) {
		return islandBoardDao.reply(vo);
	}
	
	public String contentTdate(int tdate_no) {
		return islandBoardDao.contentTdate(tdate_no);
	}
	
	public String contentTrans(int trans_no) {
		return islandBoardDao.contentTrans(trans_no);
	}
	
	public String contentPurpose(int tpurpose_no) {
		return islandBoardDao.contentPurpose(tpurpose_no);
	}
	
	public String contentAccom(int accom_no) {
		return islandBoardDao.contentAccom(accom_no);
	}
	
	public String contentSchedule(int tschedule_no) {
		return islandBoardDao.contentSchedule(tschedule_no);
	}
	
}
