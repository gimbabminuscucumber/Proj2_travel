package cat4.service;

import java.util.List;

import cat4.dao.TerminalAllDAO;
import cat4.dao.TideDAO;
import cat4.vo.ParkingVO;
import cat4.vo.PlaneTerminalVO;
import cat4.vo.PublicTerminalVO;
import cat4.vo.TideVO;
import cat4.vo.TrainTerminalVO;

public class TideService {

	private TideDAO tideDao;
	
	public TideService(TideDAO tideDao) {
		this.tideDao = tideDao;
	}
	
	public List<TideVO> selectTide(int port_no){
		List<TideVO> list = tideDao.selectTide(port_no);
		return list;
	}
	
}
