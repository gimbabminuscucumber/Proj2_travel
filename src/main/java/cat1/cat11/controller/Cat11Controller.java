package cat1.cat11.controller;

import java.util.HashMap;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import all.vo.CityVO;
import all.vo.PortVO;
import all.vo.TimeTableVO;
import cat1.cat11.service.Cat11Service;
import cat1.cat11.vo.CarVO;
import cat1.cat11.vo.ReservationistVO;
import cat1.cat11.vo.SeatInfoVO;
import cat1.cat11.vo.TicketKindVO;
import cat1.cat11.vo.TicketSaleVO;
import common.ViewPath;

@Controller
public class Cat11Controller {
	private Cat11Service s11;
	
	public Cat11Controller(Cat11Service s11) {
		this.s11 = s11;
	}
	
	@RequestMapping("/cat1/cat11")
	public String start(Model model) {
		String msg = s11.getResvTerms();
		String url = "/kisland/cat1/cat11/choise";
		
		String getTerms = s11.getResvTerms();
		model.addAttribute("getTerms", getTerms);
		
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		
		return ViewPath.CAT1 + "start.jsp";
	}
	
	@RequestMapping("/cat1/cat11/choise")
	public String resv(Model model) {
		List<CityVO> citylist = s11.citylist();
		List<PortVO> port = s11.port();
		if(port.isEmpty()) {
			port = null;
		}
		if(citylist.isEmpty()) {
			citylist = null;
		}
		
		model.addAttribute("citylist", citylist);
		model.addAttribute("port", port);
		
		return ViewPath.CAT11 + "main.jsp";
	}
	
	@RequestMapping("/cat1/cat11/sale")
	public String sale(Model model, int no) {
		List<TicketSaleVO> sale = s11.sale(no);
		if(sale.isEmpty()) {
			sale = null;
		}
		
		model.addAttribute("sale", sale);
		return ViewPath.CAT11 + "sale.jsp";
	}
	
	@RequestMapping("/cat1/cat11/carlist")
	public String carlist(int ship_no, Model model) {
		List<CarVO> carlist = s11.carlist(ship_no);
		if(carlist.isEmpty()) {
			carlist = null;
		}
		
		model.addAttribute("carlist", carlist);
		
		return ViewPath.CAT11 + "carlist.jsp";
	}
	
	@RequestMapping("/cat1/cat11/seatprice")
	public String seatprice(int seatno, Model model) {
		SeatInfoVO vo = s11.seatprice(seatno);
		
		model.addAttribute("vo", vo);
		return ViewPath.CAT11 + "seatprice.jsp";
	}
	
	@RequestMapping("/cat1/cat11/seattotal")
	public String seattotal(int price, Model model) {
		model.addAttribute("seatprice", price);
		
		return "redirect:/cat1/cat11/total";
	}
	
	@RequestMapping("/cat1/cat11/selectperson")
	public String selectperson(Model model,
			@RequestParam(value = "seat_person", required = false) String seat_person,
			@RequestParam(value = "seat_student", required = false) String seat_student,
			@RequestParam(value = "seat_child", required = false) String seat_child, 
			@RequestParam(value = "seat_grand", required = false) String seat_grand,
			@RequestParam(value = "person", required = false) String person, 
			@RequestParam(value = "student", required = false) String student, 
			@RequestParam(value = "child", required = false) String child, 
			@RequestParam(value = "grand", required = false) String grand, 
			@RequestParam(value = "baby", required = false) String baby, 
			@RequestParam(value = "car", required = false) String car,
			String[] ship_no, String[] seat_no, String[] timetable_no) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<TicketKindVO> ticket1 = null;
		List<TicketKindVO> ticket2 = null;
		List<TicketKindVO> ticket3 = null;
		List<TicketKindVO> ticket4 = null;
		List<TicketKindVO> ticket5 = null;
		List<TicketSaleVO> sale1 = null;
		List<TicketSaleVO> sale2 = null;
		List<TicketSaleVO> sale3 = null;
		List<TicketSaleVO> sale4 = null;
		List<TicketSaleVO> sale5 = null;
		List<TicketSaleVO> sale6 = null;
		List<TicketSaleVO> sale7 = null;
		List<TicketSaleVO> sale8 = null;
		List<TicketSaleVO> sale9 = null;

		model.addAttribute("ship_no", ship_no);
		model.addAttribute("seat_no", seat_no);
		model.addAttribute("timetable_no", timetable_no);
		
		model.addAttribute("seat_person", seat_person);
		model.addAttribute("seat_student", seat_student);
		model.addAttribute("seat_child", seat_child);
		model.addAttribute("seat_grand", seat_grand);
		
		List<CarVO> carlist = s11.carlist(Integer.parseInt(ship_no[0]));
		if(carlist.isEmpty()) {
			carlist = null;
		}
		
		model.addAttribute("carlist", carlist);
		
		int p = 0;
		int s = 0;
		int ch = 0;
		int gr = 0;
		int b = 0;
		int c = 0;
		if(person != "") {
			p = Integer.parseInt(person);
		}
		if(student != "") {
			s = Integer.parseInt(student);
		}
		if(child != "") {
			ch = Integer.parseInt(child);
		}
		if(grand != "") {
			gr = Integer.parseInt(grand);
		}
		if(baby != "") {
			b = Integer.parseInt(baby);
		}
		try {
			c = Integer.parseInt(car);
		}catch(Exception e) {
			c = 0;
		}
		
		int sp = Integer.parseInt(seat_person);
		int ss = Integer.parseInt(seat_student);
		int sc = Integer.parseInt(seat_child);
		int sg = Integer.parseInt(seat_grand);
		
		int sep = sp * p;
		int ses = ss * s;
		int sec = sc * ch;
		int seg = sg * gr;
		
		int resvlist_price = sep + ses + sec + seg;
		
		model.addAttribute("resvlist_price", resvlist_price);
		model.addAttribute("p", p);
		model.addAttribute("s", s);
		model.addAttribute("ch", ch);
		model.addAttribute("gr", gr);
		model.addAttribute("b", b);
		model.addAttribute("c", c);
		
		String type = null;
		
		if(person != "0") {
			type = "대인";
			map.put("type", type);
			ticket1 = s11.ticketlist(map);
			sale1 = s11.sale(1);
			sale5 = s11.sale(5);
			model.addAttribute("sale1", sale1);
			model.addAttribute("sale5", sale5);
			model.addAttribute("ticket1", ticket1);
		}
		
		if(student != "0") {
			type = "중고";
			map.put("type", type);
			ticket2 = s11.ticketlist(map);
			sale2 = s11.sale(2);
			sale6 = s11.sale(6);
			model.addAttribute("sale2", sale2);
			model.addAttribute("sale6", sale6);
			model.addAttribute("ticket2", ticket2);
		}
		
		if(child != "0") {
			type = "소아";
			map.put("type", type);
			ticket3 = s11.ticketlist(map);
			sale4 = s11.sale(4);
			sale8 = s11.sale(8);
			model.addAttribute("sale4", sale4);
			model.addAttribute("sale8", sale8);
			model.addAttribute("ticket3", ticket3);
		}
		
		if(grand != "0") {
			type = "경로";
			map.put("type", type);
			ticket4 = s11.ticketlist(map);
			sale3 = s11.sale(3);
			sale7 = s11.sale(7);
			model.addAttribute("sale3", sale3);
			model.addAttribute("sale7", sale7);
			model.addAttribute("ticket4", ticket4);
		}
		 
		if(baby != "0") {
			type = "유아";
			map.put("type", type);
			ticket5 = s11.ticketlist(map);
			sale9 = s11.sale(9);
			model.addAttribute("sale9", sale9);
			model.addAttribute("ticket5", ticket5);
		}
		return ViewPath.CAT11 + "resvinfo.jsp";
	}
	
	@RequestMapping("/cat1/cat11/main")
	public String main(Model model) {
		
		List<CityVO> citylist = s11.citylist();
		if(citylist.isEmpty()) {
			citylist = null;
		}
		
		model.addAttribute("citylist", citylist);
		return ViewPath.CAT11 + "main.jsp";
	}
	
	@RequestMapping("/cat1/cat11/resvjoin")
	public String resvjoin(ReservationistVO rvo, Model model, String[] sale_no,
			String[] pob_name, String[] pob_gender, String[] pob_birth, String[] pob_tel, 
			@RequestParam(value = "resv_foreign", required = false) String[] pob_foreign, 
			String[] pob_emergtel,
			String[] ship_no, String[] seat_no, String[] timetable_no,
			String resvlist_price, String sale_no1, String sale_no2, String sale_no3, 
			String sale_no4, 
			String p, String s, String ch, String gr, String b, String c, 
			String car_price, String seat_person, String seat_student, 
			String seat_child, String seat_grand, String resv_sale_no,
			String port_name1, String port_name2) {
		
		SeatInfoVO seatvo = null;
		int seatp = 0;
		int seats = 0;
		int seatch = 0;
		int seatgr = 0;
		if(seat_person != "") {
			seatp = Integer.parseInt(seat_person);
		}
		if(seat_student != "") {
			seats = Integer.parseInt(seat_student);
		}
		if(seat_child != "") {
			seatch = Integer.parseInt(seat_child);
		}
		if(seat_grand != "") {
			seatgr = Integer.parseInt(seat_grand);
		}
		
		int sale1 = 0;
		int sale2 = 0;
		int sale3 = 0;
		int sale4 = 0;
		int sale5 = 0;
		int sale6 = 0;
		int sale7 = 0;
		int sale8 = 0;
		int sale9 = 0;
		if(sale_no1 != "") {
			sale1 = Integer.parseInt(sale_no1);
		}
		if(sale_no2 != "") {
			sale2 = Integer.parseInt(sale_no2);
		}
		if(sale_no3 != "") {
			sale3 = Integer.parseInt(sale_no3);
		}
		if(sale_no4 != "") {
			sale4 = Integer.parseInt(sale_no4);
		}
			
		int ps = 1;
		int ss = 0;
		int chs = 0;
		int grs = 0;
		int bs = 0;
		int cs = 0;
		if(p != "") {
			ps = Integer.parseInt(p);
		}
		if(s != "") {
			ss = Integer.parseInt(s);
		}
		if(ch != "") {
			chs = Integer.parseInt(ch);
		}
		if(gr != "") {
			grs = Integer.parseInt(gr);
		}
		if(b != "") {
			bs = Integer.parseInt(b);
		}
		try {
			cs = Integer.parseInt(c);
		}catch(Exception e) {
			cs = 0;
		}
		
		System.out.println(sale_no1);
		double totalp = 0;
		double totals = 0;
		double totalch = 0;
		double totalgr = 0;
		int totalcar = 0;
		if(ps != 0) {
			totalp = ps * seatp * (1 - (s11.saleprice(sale1) / 100.));
			System.out.println("eeee : "+totalp);
			if(ship_no.length > 1) {
				totalp += ps * seatp * (1 - (s11.saleprice(sale1) / 100.));
			}	
		}
		
		if(ss != 0) {
			totals = ss * seats * (1 - (s11.saleprice(sale2) / 100.));
			if(ship_no.length > 1) {
				totals += ss * seats * (1 - (s11.saleprice(sale2) / 100.));
			}	
		}
		
		if(chs != 0) {
			totalch = chs * seatch * (1 - (s11.saleprice(sale4) / 100.));
			if(ship_no.length > 1) {
				totalch += chs * seatch * (1 - (s11.saleprice(sale4) / 100.));
			}
		}
		
		if(grs != 0) {
			totalgr = grs * seatgr * (1 - (s11.saleprice(sale3) / 100.));
			if(ship_no.length > 1) {
				totalgr += grs * seatgr * (1 - (s11.saleprice(sale3) / 100.));
			}
		}
		
		if(cs != 0) {
			if(car_price != "" || car_price != null) {
				totalcar = Integer.parseInt(car_price);
			}
		}
		int resvlistprice = (int)(totalp + totals + totalch + totalgr + totalcar);
		
		if(!seat_no[0].isEmpty()) {
			seatvo = s11.seatprice(Integer.parseInt(seat_no[0]));
		}
		rvo.setSale_no(Integer.parseInt(resv_sale_no));
		model.addAttribute("resvlist_price", resvlistprice);
		model.addAttribute("sale_no", sale_no);
		model.addAttribute("rvo", rvo);
		model.addAttribute("pob_name", pob_name);
		model.addAttribute("pob_gender", pob_gender);
		model.addAttribute("pob_tel", pob_tel);
		model.addAttribute("pob_birth", pob_birth);
		model.addAttribute("pob_foreign", pob_foreign);
		model.addAttribute("pob_emergtel", pob_emergtel);
		model.addAttribute("seatvo", seatvo);
		model.addAttribute("ship_no", ship_no);
		model.addAttribute("seat_no", seat_no);
		model.addAttribute("timetable_no", timetable_no);
		model.addAttribute("port_name1", port_name1);
		model.addAttribute("port_name2", port_name2);
		
		return ViewPath.CAT11 + "selectseat.jsp";
	}
	
	@RequestMapping("/cat1/cat11/payment")
	public String payment(Model model, String[] ship_no, String[] seat_no, String[] timetable_no,
			String resvlist_price,
			ReservationistVO rvo, String[] sale_no,
			String[] pob_name, String[] pob_gender, String[] pob_birth, String[] pob_tel, 
			@RequestParam(value = "resv_foreign", required = false) String[] pob_foreign, 
			String[] pob_emergtel, SeatInfoVO seatvo, String resv_sale_no) {
		rvo.setSale_no(Integer.parseInt(resv_sale_no));
		System.out.println("leng : " + sale_no.length);
		System.out.println("shiple " + ship_no.length);
		model.addAttribute("rvo", rvo);
		model.addAttribute("sale_no", sale_no);
		model.addAttribute("pob_name", pob_name);
		model.addAttribute("pob_gender", pob_gender);
		model.addAttribute("pob_tel", pob_tel);
		model.addAttribute("pob_birth", pob_birth);
		model.addAttribute("pob_foreign", pob_foreign);
		model.addAttribute("pob_emergtel", pob_emergtel);
		model.addAttribute("seatvo", seatvo);
		model.addAttribute("ship_no", ship_no);
		model.addAttribute("seat_no", seat_no);
		model.addAttribute("timetable_no", timetable_no);
		model.addAttribute("resvlist_price", resvlist_price);

		return ViewPath.CAT11 + "creditcard.jsp";
	}
	
}
