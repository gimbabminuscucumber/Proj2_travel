package cat1.cat11.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import all.dao.CityDAO;
import all.dao.PortDAO;
import all.dao.ShipDAO;
import all.dao.TimeTableDAO;
import all.vo.CityVO;
import all.vo.PortVO;
import all.vo.ShipVO;
import all.vo.TimeTableVO;
import cat1.cat11.dao.CarDAO;
import cat1.cat11.dao.CreditCardDAO;
import cat1.cat11.dao.PersonOnBoardDAO;
import cat1.cat11.dao.ReservationistDAO;
import cat1.cat11.dao.ResvTermsDAO;
import cat1.cat11.dao.SeatInfoDAO;
import cat1.cat11.dao.TicketKindDAO;
import cat1.cat11.dao.TicketSaleDAO;
import cat1.cat11.vo.CarVO;
import cat1.cat11.vo.CreditCardVO;
import cat1.cat11.vo.PersonOnBoardVO;
import cat1.cat11.vo.ReservationistVO;
import cat1.cat11.vo.SeatInfoVO;
import cat1.cat11.vo.TicketKindVO;
import cat1.cat11.vo.TicketSaleVO;

public class Cat11Service {
	private CarDAO car;
	private CreditCardDAO credit;
	private PersonOnBoardDAO pob;
	private ReservationistDAO resv;
	private ResvTermsDAO resvterms;
	private SeatInfoDAO seat;
	private TicketKindDAO kind;
	private TicketSaleDAO sale;
	private PortDAO port;
	private TimeTableDAO time;
	private ShipDAO ship;
	private CityDAO city;
	
	public Cat11Service(CarDAO car, CreditCardDAO credit, PersonOnBoardDAO pob, ReservationistDAO resv,
			ResvTermsDAO resvterms, SeatInfoDAO seat, TicketKindDAO kind, TicketSaleDAO sale, PortDAO port, TimeTableDAO time, ShipDAO ship, CityDAO city) {
		super();
		this.car = car;
		this.credit = credit;
		this.pob = pob;
		this.resv = resv;
		this.resvterms = resvterms;
		this.seat = seat;
		this.kind = kind;
		this.sale = sale;
		this.port = port;
		this.time = time;
		this.ship = ship;
		this.city = city;
	}
	
	// car
	public List<CarVO> carlist(int ship_no){
		return car.carlist(ship_no);
	}
	
	// card
	public int cardinsert(CreditCardVO vo) {
		return credit.cardinsert(vo);
	}
	
	// pob
	public int pobinsert(PersonOnBoardVO vo) {
		return pob.pobinsert(vo);
	}
	
	public int pobno(PersonOnBoardVO vo) {
		return pob.pobno(vo);
	}
	
	// resv
	public int resvinsert(ReservationistVO vo) {
		return resv.resvinsert(vo);
	}
	
	public List<Map<String, Object>> resvlist(TimeTableVO vo){
		return resv.resvlist(vo);
	}
	public int getresvno(ReservationistVO vo) {
		return resv.getresvno(vo);
	}
	public int resvnextval() {
		return resv.resvnextval();
	}
	public String resvbirth(int no) {
		return resv.resvbirth(no);
	}
	
	// terms
	public String getResvTerms() {
		return resvterms.getResvTerms();
	}
	
	public String gongyong() {
		return resvterms.gongyong();
	}
	
	public String sign(int ship_no) {
		return resvterms.sign(ship_no);
	}
	
	public String clicksign(int ship_no) {
		return resvterms.clicksign(ship_no);
	}
	
	public String checksign(int ship_no) {
		return resvterms.checksign(ship_no);
	}
	
	public int signnum(int ship_no) {
		return resvterms.signnum(ship_no);
	}
	
	public String carterms() {
		return resvterms.carterms();
	}
	
	// 좌석
	public SeatInfoVO seatprice(int no) {
		return seat.seatprice(no);
	}
	
	// 시티
	public List<CityVO> citylist() {
		return city.citylist();
	}
	
	// 항구
	public String portaddr(int no) {
		return port.portaddr(no);
	}
	
	public List<PortVO> cityport(int no) {
		return port.cityport(no);
	}
	
	public List<PortVO> portlist(int port_no) {
		return port.portlist(port_no);
	}
	
	public List<PortVO> port() {
		return port.port();
	}
	
	// 배
	public ShipVO shipcomp(int no) {
		return ship.shipcomp(no);
	}
	
	// 할인 티켓
	public List<TicketKindVO> ticketlist(Map<String, Object> map) {
		return kind.ticketlist(map);
	}
	public List<TicketSaleVO> sale(int no) {
		return sale.salelist(no);
	}
	public int saleprice(int no) {
		return sale.saleprice(no);
	}
	
	
}
