package cat1.cat12.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cat1.cat11.service.Cat11Service;
import cat1.cat11.vo.CreditCardVO;
import cat1.cat11.vo.PersonOnBoardVO;
import cat1.cat11.vo.ReservationistVO;
import cat1.cat11.vo.SeatInfoVO;
import cat1.cat12.service.Cat12Service;
import cat1.cat12.vo.ReservationListVO;
import common.ViewPath;

@Controller
public class Cat12Controller {
	private Cat12Service s12;
	private Cat11Service s11;
	
	public Cat12Controller(Cat12Service s12, Cat11Service s11) {
		this.s12 = s12;
		this.s11 = s11;
	}
	
	@RequestMapping("/cat1/cat12/insert")
	public String list(String[] ship_no, String[] seat_no, String[] timetable_no,
			String resvlist_price, ReservationistVO rvo, String[] sale_no, 
			String[] pob_name, String[] pob_gender, String[] pob_birth, String[] pob_tel, 
			@RequestParam(value = "resv_foreign", required = false) String[] pob_foreign, 
			String[] pob_emergtel, SeatInfoVO seatvo, CreditCardVO cvo, 
			Model model, String card_expdatem, String card_expdated, String card_expdatey,
			String resv_sale_no) {
		int num = 0;
		int resvlistprice = Integer.parseInt(resvlist_price);
		int su = 0;
		PersonOnBoardVO pvo = new PersonOnBoardVO();
		
		
//		전부 insert
		for(int i = 0; i < ship_no.length; i++) {
			if(ship_no[i].isEmpty() || seat_no[i].isEmpty() || timetable_no[i].isEmpty()) {
				break;
			}
			rvo.setNo(s11.resvnextval());
			rvo.setSeat_no(Integer.parseInt(seat_no[i]));
			rvo.setTimetable_no(Integer.parseInt(timetable_no[i]));
			if(rvo.getResv_foreign() == 0) {
				rvo.setResv_foreign(1);
			}
			su = s11.resvinsert(rvo);
			pvo.setPob_name(rvo.getResv_name());
			pvo.setPob_gender(rvo.getResv_gender());
			pvo.setPob_birth(rvo.getResv_birth());
			pvo.setPob_tel(rvo.getResv_tel());
			pvo.setPob_foreign(rvo.getResv_foreign());
			pvo.setSale_no(rvo.getSale_no());
			pvo.setPob_emergtel(rvo.getResv_emergtel());
			if(rvo.getResv_foreign() == 0) {
				rvo.setResv_foreign(2);
				pvo.setPob_foreign(2);
			}else {
				rvo.setResv_foreign(1);
				pvo.setPob_foreign(1);
			}
			pvo.setResv_no(rvo.getNo());
			num = s11.pobinsert(pvo);
			
			
			if(pob_name != null) {
				for(int j = 0; j < pob_name.length; j++) {
					if(pob_name[j].isEmpty()) {
						break;
					}
					pvo.setPob_name(pob_name[j]);
					pvo.setPob_gender(pob_gender[j]);
					pvo.setPob_birth(pob_birth[j]);
					pvo.setPob_tel(pob_tel[j]);
					try {
						pvo.setPob_foreign(Integer.parseInt(pob_foreign[j]));
					}catch(Exception e) {
						pvo.setPob_foreign(1);
					}
					pvo.setSale_no(Integer.parseInt(sale_no[j]));
					pvo.setPob_emergtel(pob_emergtel[j]);
					pvo.setResv_no(rvo.getNo());
					num = s11.pobinsert(pvo);
				}
			}
			
			
			List<Integer> pobno = s12.pobno(rvo.getNo());
			ReservationListVO vo = new ReservationListVO();
			for(int j = 0; j < pobno.size(); j++) {
				if(pobno.isEmpty()) {
					break;
				}
				vo.setSeat_no(Integer.parseInt(seat_no[i]));
				vo.setShip_no(Integer.parseInt(ship_no[i]));
				vo.setTimetable_no(Integer.parseInt(timetable_no[i]));
				vo.setPob_no(pobno.get(j));
				vo.setResv_no(rvo.getNo());
				vo.setResvlist_price(resvlistprice);
				su = s12.insert(vo);
				
				if(su == 0) {
					break;
				}
			}
		}
		
		List<Integer> sale_rate = new ArrayList<Integer>();

		String msg = null;
		String url = null;
		cvo.setResv_no(rvo.getNo());
		cvo.setCard_expdate(card_expdatey + card_expdatem + card_expdated);
		su = s11.cardinsert(cvo);
		if(su != 0) {
			if(ship_no.length > 1) {
				msg = "예매가 완료되었습니다. 예매 조회 페이지로 이동합니다.";
				url = "/kisland/cat1/cat12/list?resv_no=" + rvo.getNo() + "&cnt=2&pob_no=" + pvo.getNo() + "&resvlist_price=" + resvlistprice;
			}else {
				msg = "예매가 완료되었습니다. 예매 조회 페이지로 이동합니다.";
				url = "/kisland/cat1/cat12/list?resv_no=" + rvo.getNo() + "&cnt=1&resvlist_price=" + resvlistprice;;
			}
		}else {
			msg = "예매가 정상적으로 처리되지 않았습니다. 처음 페이지로 이동합니다.";
			url = "/kisland/cat1/cat11/choise";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return ViewPath.CAT12 + "result.jsp";
	}
	
	@RequestMapping("/cat1/cat12/list")
	public String list(String resv_no, String pob_no, String cnt, String pob_name, String pob_tel, String pob_birth, 
			String card_num1, String card_num2, String card_num3, String card_num4, 
			String resv_name, String resv_tel, String resv_birth, Model model, 
			String sale_kind, String resv_sale_kind, String resvlist_price) {
		
		PersonOnBoardVO pvo = new PersonOnBoardVO();
		ReservationistVO rvo = new ReservationistVO();
		int resvno = 0;
		if(resv_no != null) {
			resvno = Integer.parseInt(resv_no);
		}
		System.out.println("cnt = " +cnt);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<Map<String, Object>> list = s12.resvlistinit(resvno);
		if(list.isEmpty()) {
			list = null;
		}
		
		if(resv_name != "" && resv_name != null) {
			rvo.setResv_name(resv_name);
			rvo.setResv_tel(resv_tel);
			rvo.setResv_birth(resv_birth);
			System.out.println(resv_name);
			System.out.println(resv_tel);
			System.out.println(resv_birth);
			List<PersonOnBoardVO> pl = s12.getresvno(rvo);
			int pno = 0;
			for(PersonOnBoardVO vo : pl) {
				pno = vo.getNo();
			}
			map.put("resv_no", pno);
			map.put("resv_name", resv_name);
			map.put("resv_tel", resv_tel);
			map.put("resv_birth", resv_birth);
			
			list = s12.resvlistmain(map);
			cnt = "1";
			
			if(list.isEmpty()) {
				list = null;
			}
		}else if(pob_name != "" && pob_name != null) {
			pvo.setPob_name(pob_name);
			pvo.setPob_birth(pob_birth);
			pvo.setPob_tel(pob_tel);
			System.out.println("pb : " + pob_name);
			
			List<Integer> pno = s12.getresvnopob(pvo);
			System.out.println(pno.get(0));
			System.out.println(pno.get(1));
			map.put("pob_no", pno.get(0));
			map.put("pob_name", pob_name);
			map.put("pob_tel", pob_tel);
			map.put("pob_birth", pob_birth);
			cnt = "1";

			list = s12.resvlistpob(map);
			
			if(list.isEmpty()) {
				list = null;
			}
		}else if(card_num1 != "" && card_num1 != null) {
			CreditCardVO cvo = new CreditCardVO();
			
			cvo.setCard_num1(card_num1);
			cvo.setCard_num2(card_num2);
			cvo.setCard_num3(card_num3);
			cvo.setCard_num4(card_num4);
			
			List<ReservationistVO> rl = s12.getresvnocard(cvo);
			int cno = 0;
			for(ReservationistVO vo : rl) {
				cno = vo.getNo();
			}
			map.put("resv_no", cno);
			map.put("card_num1", card_num1);
			map.put("card_num2", card_num2);
			map.put("card_num3", card_num3);
			map.put("card_num4", card_num4);
			
			list = s12.resvlistcard(map);
			
			if(list.isEmpty()) {
				list = null;
			}
		}
		
		System.out.println("re : " +resvlist_price);
		model.addAttribute("resvlist_price", resvlist_price);
		model.addAttribute("sale_kind", sale_kind);
		model.addAttribute("resv_sale_kind", resv_sale_kind);
		model.addAttribute("list", list);
		model.addAttribute("count", cnt);
		
		return ViewPath.CAT12 + "list.jsp";
	}
	
	@RequestMapping("/cat1/cat12/updateform")
	public String updateform(Model model, String pob_no, String resv_no, String cnt,
			String resvlist_price) {
		
		int resvno = 0;
		int pobno = 0;
		
		if(pob_no != null) {
			pobno = Integer.parseInt(pob_no);
		}
		if(resv_no != null) {
			resvno = Integer.parseInt(resv_no);
		}
		
		String salep = s12.pobsale(pobno);
		
		ReservationistVO rvo = s12.checkresv(resvno);
		PersonOnBoardVO pvo = s12.checkpob(pobno);
		
		if(rvo.getNo() != pvo.getResv_no()) {
			rvo = null;
		}
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("sale_kind", salep);
		model.addAttribute("rvo", rvo);
		model.addAttribute("pvo", pvo);
		model.addAttribute("pob_no", pob_no);
		model.addAttribute("resvlist_price", resvlist_price);
		model.addAttribute("resv_no", resv_no);
		return ViewPath.CAT12 + "update.jsp";
	}
	
	@RequestMapping("/cat1/cat12/update")
	public String update(Model model, PersonOnBoardVO pvo, ReservationistVO rvo, 
			String resv_no, String no, String cnt, String resvlist_price) {
		String msg = null;
		String url = null;
		int pobno = 0;
		int resvno = 0;
		System.out.println(no);
		System.out.println(pvo.getNo());
		System.out.println(pvo.getPob_name());
		System.out.println(pvo.getPob_tel());
		System.out.println(pvo.getPob_birth());
		System.out.println(resv_no);
		if(no != null) {
			pobno = Integer.parseInt(no);
			resvno = Integer.parseInt(resv_no);
		}
		pvo.setNo(pobno);
		System.out.println("set " + pvo.getNo());
		if(rvo == null) {
			int su = s12.pobupdate(pvo);
			System.out.println("1 " + su);
			if(su != 0) {
				msg = "정보가 정상적으로 변경되셨습니다.";
				url = "/kisland/cat1/cat12/list?resv_no=" + resv_no + "&cnt=" + cnt + "&resvlist_price=" + resvlist_price;
			}else {
				msg = "정보가 잘못 입력되셨습니다.";
				url = "/kisland/cat1/cat12/updateform?resv_no=" + resv_no + "&pob_no=" + no + "&cnt=" + cnt + "&resvlist_price=" + resvlist_price;;
			}
		}else {
			int su = s12.pobupdate(pvo);
			System.out.println("2 " + su);
			if(su != 0) {
				rvo.setNo(resvno);
				rvo.setResv_name(pvo.getPob_name());
				rvo.setResv_birth(pvo.getPob_birth());
				rvo.setResv_gender(pvo.getPob_gender());
				rvo.setResv_tel(pvo.getPob_tel());
				
				su = s12.resvupdate(rvo);
				if(su != 0) {
					msg = "정보가 정상적으로 변경되셨습니다.";
					url = "/kisland/cat1/cat12/list?resv_no=" + resvno + "&cnt=" + cnt + "&resvlist_price=" + resvlist_price;;
				}else {
					msg = "정보가 잘못 입력되셨습니다.";
					url = "/kisland/cat1/cat12/updateform?resv_no=" + resvno + "&pob_no=" + pobno + "&cnt=" + cnt + "&resvlist_price=" + resvlist_price;;
				}
			}else {
				msg = "정보가 잘못 입력되셨습니다.";
				url = "/kisland/cat1/cat12/updateform?resv_no=" + resvno + "&pob_no=" + pobno + "&cnt=" + cnt + "&resvlist_price=" + resvlist_price;;
			}
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return ViewPath.CAT12 + "result.jsp";
	}
	
	@RequestMapping("/cat1/cat12/delete")
	public String delete(String resv_no, String pob_no, String resvlist_no, String cnt,
			String resvlist_price, Model model) {
		String msg = null;
		String url = null;
		
		int resvno = 0;
		int resvlistno = 0;
		int pobno = 0;
		
		if(pob_no != null) {
			pobno = Integer.parseInt(pob_no);
		}
		if(resv_no != null) {
			resvno = Integer.parseInt(resv_no);
		}
		if(resvlist_no != null) {
			resvlistno = Integer.parseInt(resvlist_no);
		}
			int su = s12.pobdelete(pobno);
			System.out.println("su = " + su);
			if(su != 0 ) {
				msg = "예매권이 정상적으로 반환되었습니다.";
				url = "/kisland/cat1/cat12/list?resv_no=" + resv_no + "&cnt=" + cnt + "&resvlist_price=" + resvlist_price;
			}else {
				msg = "예매권 반환에 실패하셨습니다.";
				url = "/kisland/cat1/cat12/list?resv_no=" + resv_no+ "&cnt=" + cnt + "&resvlist_price=" + resvlist_price;
			}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		return ViewPath.CAT12 + "result.jsp";
	}
	
	@RequestMapping("/cat1/cat12/cardOne")
	public String recipe(@RequestParam("resv_no") int resv_no, Model model, String resvlist_price) {
		CreditCardVO vo = s12.recipe(resv_no);
		System.out.println(resvlist_price);
		int resvlistprice = Integer.parseInt(resvlist_price);
		model.addAttribute("resvlist_price", resvlistprice);
		model.addAttribute("vo", vo);
		
		return ViewPath.CAT12 + "recipe.jsp";
	}
	
	@RequestMapping("cat1/cat12/resvticket")
	public String resvticket(@RequestParam("pob_no") int pob_no, Model model) {
		PersonOnBoardVO vo = s12.getPob(pob_no);
		
		model.addAttribute("vo", vo);
		
		return ViewPath.CAT12 + "ticket.jsp";
	}

}
