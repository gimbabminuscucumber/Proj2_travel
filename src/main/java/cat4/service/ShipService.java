package cat4.service;

import java.util.List;

import all.dao.ShipDAO;
import all.vo.ShipVO;

public class ShipService {

	private ShipDAO shipDao;
	
	public ShipService(ShipDAO shipDao) {
		this.shipDao = shipDao;
	}
	
	public List<ShipVO> selectShip(){
		List<ShipVO> list = shipDao.selectShip();
		return list;
	}
	
	public ShipVO selectInfo(int no) {
		return shipDao.selectInfo(no);
	}
	
}
