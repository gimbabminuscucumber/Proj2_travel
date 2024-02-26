package cat2.cat25.service;

import java.util.List;
import java.util.Map;

import all.vo.PortVO;
import cat2.cat25.dao.ShipStatusInfoDAO;

public class ShipStatusInfoService {
	private ShipStatusInfoDAO shipstatusinfoDao ;

	public ShipStatusInfoService(ShipStatusInfoDAO shipstatusinfoDao) {
		this.shipstatusinfoDao = shipstatusinfoDao;
	}
	
	public List<Map<String,Object>> selectList(){
		return shipstatusinfoDao.selectList();
	}
	
	public List<PortVO> selectPort(){
		return shipstatusinfoDao.selectPort();
	}
	
	
}
