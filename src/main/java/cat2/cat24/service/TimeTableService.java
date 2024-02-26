package cat2.cat24.service;

import java.util.List;


import java.util.Map;

import all.dao.PortDAO;
import all.dao.TimeTableDAO;
import all.vo.PortVO;
import all.vo.TimeTableVO;


public class TimeTableService {	
private PortDAO portDao;
private TimeTableDAO timatableDao;
	
	public TimeTableService(PortDAO portDao,TimeTableDAO timatableDao) {
		this.portDao = portDao;
		this.timatableDao = timatableDao;
	}
	
	
	public List<PortVO> selectPort() {
		return portDao.selectPort();
	}
	
	public List<Map<String,Object>> selectList(TimeTableVO vo){
		return timatableDao.selectList(vo);
	}
	

}
