package cat4.service;

import java.util.List;

import cat4.dao.TerminalAllDAO;
import cat4.vo.ParkingVO;
import cat4.vo.PlaneTerminalVO;
import cat4.vo.PublicTerminalVO;
import cat4.vo.TrainTerminalVO;

public class TerminalAllService {

	private TerminalAllDAO terminalallDao;
	
	public TerminalAllService(TerminalAllDAO terminalallDao) {
		this.terminalallDao = terminalallDao;
	}
	
	public List<ParkingVO> selectParking(int port_no){
		List<ParkingVO> list = terminalallDao.selectParking(port_no);
		return list;
	}
	
	
	public List<PublicTerminalVO> selectPublicTerminal(int port_no){
		List<PublicTerminalVO> list = terminalallDao.selectPublicTerminal(port_no);
		return list;
	}
	
	public List<TrainTerminalVO> selectTrainTerminal(int port_no){
		List<TrainTerminalVO> list = terminalallDao.selectTrainTerminal(port_no);
		return list;
	}
	
	public List<PlaneTerminalVO> selectPlaneTerminal(int port_no){
		List<PlaneTerminalVO> list = terminalallDao.selectPlaneTerminal(port_no);
		return list;
	}
	
}
