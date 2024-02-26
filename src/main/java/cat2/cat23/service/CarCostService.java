package cat2.cat23.service;

import java.util.List;
import java.util.Map;

import all.dao.ShipDAO;
import all.vo.ShipVO;

public class CarCostService {
private ShipDAO shipDao;
	
	public CarCostService(ShipDAO shipDao) {
		this.shipDao = shipDao;
	}
	
	public List<ShipVO> selectInterval() {
		return shipDao.selectInterval();
	}
	
	public List<Map<String,Object>> selectList(String ship_interval){
		return shipDao.selectList(ship_interval);
	}
	
	
	
}
