package cat1.cat11.controller;

import java.util.List;

import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import all.vo.PortVO;
import all.vo.ShipVO;
import all.vo.TimeTableVO;
import cat1.cat11.service.Cat11Service;
import cat1.cat11.vo.SeatInfoVO;

@RestController
public class AjaxController {
	private Cat11Service cs;
	
	public AjaxController(Cat11Service cs) {
		this.cs = cs;
	}
	
	@RequestMapping("/cat1/cat11/cityajax")
	public List<PortVO> cityport(int no) {
		List<PortVO> cityport = cs.cityport(no);
		System.out.println(cityport);
		if(cityport.isEmpty()) {
			cityport = null;
		}

		return cityport;
	}
	
	@RequestMapping("/cat1/cat11/portajax")
	public List<PortVO> portlist(int port_no1) {
		List<PortVO> portlist = cs.portlist(port_no1);
		for(PortVO vo : portlist) {
			System.out.println(vo.getPort_name());
		}
		if(portlist.isEmpty()) {
			portlist = null;
		}
		
		return portlist;
	}
	
	@RequestMapping("/cat1/cat11/shipajax")
	public List<Map<String, Object>> resvlist(int port_no1, int port_no2, String timetable_date) {
		TimeTableVO vo = new TimeTableVO();
		vo.setPort_no1(port_no1);
		vo.setPort_no2(port_no2);
		vo.setTimetable_date(timetable_date);
		List<Map<String, Object>> list = cs.resvlist(vo);
		
		return list;
	}
	
	@RequestMapping("/cat1/cat11/depinfoajax")
	public ShipVO depinfo(int no) {
		ShipVO vo = cs.shipcomp(no);
		
		if(vo == null) {
			vo = null;
		}
		
		return vo;
	}
	
	@RequestMapping("/cat1/cat11/seatinfoajax")
	public SeatInfoVO seatinfoajax(int seat_no) {
		SeatInfoVO vo = cs.seatprice(seat_no);

		return vo;
	}
	
	@RequestMapping(value="/cat1/cat11/clicktermsajax", produces = "application/text;charset=utf8")
	public String clicktermsajax(int ship_no) {	
		String clickterms = cs.clicksign(ship_no);
		if(clickterms == null) {
			clickterms = null;
		}
		return clickterms;
	}
	
	@RequestMapping(value="/cat1/cat11/checktermsajax", produces = "application/text;charset=utf8")
	public String checktermsajax(int ship_no) {
		String checkterms = cs.checksign(ship_no);
		
		return checkterms;
	}
	
	@RequestMapping(value="/cat1/cat11/cartermsajax", produces = "application/text;charset=utf8")
	public String cartermsajax() {
		String carterms = cs.carterms();
		return carterms;
	}
	
	@RequestMapping(value="/cat1/cat11/signajax", produces = "application/text;charset=utf8")
	public String sign(int ship_no) {
		String sign = cs.sign(ship_no);
		return sign;
	}
	
	@RequestMapping("/cat1/cat11/salepriceajax")
	public Object salepriceajax(int sale_no) {
		int sale_rate = cs.saleprice(sale_no);
		return sale_rate;
	}
	
}