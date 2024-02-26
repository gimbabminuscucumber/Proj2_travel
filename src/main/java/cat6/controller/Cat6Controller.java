package cat6.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import all.vo.ManagerVO;
import cat6.service.IslandBoardService;
import cat6.vo.AccommoVO;
import cat6.vo.IslandBoardVO;
import cat6.vo.TransportationVO;
import cat6.vo.TravelDateVO;
import cat6.vo.TravelPurposeVO;
import cat6.vo.TravelScheduleVO;
import common.Paging;
import common.ViewPath;

@Controller
public class Cat6Controller {
	
	private IslandBoardService islandBoardService;
	
	public Cat6Controller(IslandBoardService islandBoardService) {
		this.islandBoardService = islandBoardService;
	}

	@RequestMapping("/cat4/consulting")
	public String consulting(Model model, Integer page, String type, String word) {
		
		if(page == null) {
			page = 1;
		}
		
		if(type != null && type.equals("")) {
			type = null;
			word = null;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("type", type);
		map.put("word", word);
		
		int boardCount = islandBoardService.getTotal(map);
		
		Paging paging = new Paging(page, boardCount);
		
		map.put("first", paging.getFirst());
		map.put("last", paging.getLast());
		
		List<IslandBoardVO> list = islandBoardService.selectList(map);
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		
		return ViewPath.CONSULTING + "list.jsp";
	}
	
	@RequestMapping("/board/writeform")
	public String writeForm(Model model) {
		
		List<ManagerVO> list = islandBoardService.selectManager();
		List<AccommoVO> alist = islandBoardService.selectAccommo();
		List<TransportationVO> tlist = islandBoardService.selectTransportation();
		List<TravelDateVO> dlist = islandBoardService.selectTraveldate();
		List<TravelPurposeVO> plist = islandBoardService.selectTravelpurpose();
		List<TravelScheduleVO> slist = islandBoardService.selectTravelschedule();
		
		model.addAttribute("list", list);
		model.addAttribute("alist", alist);
		model.addAttribute("tlist", tlist);
		model.addAttribute("dlist", dlist);
		model.addAttribute("plist", plist);
		model.addAttribute("slist", slist);
		
		return ViewPath.CONSULTING + "write.jsp";
	}
	
	@RequestMapping("/board/write")
	public String write(Model model, HttpSession session, HttpServletRequest request, IslandBoardVO vo) {
		
		int a = Integer.parseInt(request.getParameter("no"));
		int b = Integer.parseInt(request.getParameter("pno"));
		int c = Integer.parseInt(request.getParameter("tno"));
		int d = Integer.parseInt(request.getParameter("ano"));
		int e = Integer.parseInt(request.getParameter("mno"));
		int f = Integer.parseInt(request.getParameter("tmno"));
		
		Integer no = (Integer)session.getAttribute("login");

		
		if(no == null) {
			return "redirect:/login/loginform";
		}
		
		vo.setUser_no(no);
		
		vo.setTdate_no(a);
		vo.setTpurpose_no(b);
		vo.setTrans_no(c);
		vo.setAccom_no(d);
		vo.setManager_no(e);
		vo.setTschedule_no(f);
		
		int su = islandBoardService.insert(vo);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "write");
		model.addAttribute("url", "/kisland/cat4/consulting");
		
		return ViewPath.CONSULTING + "result.jsp";
	}
	
	@RequestMapping("/board/content")
	public String content(Model model, int no, int tdate_no, int trans_no, int tpurpose_no, int accom_no, int tschedule_no) {
		Map<String, Object> map = islandBoardService.getContent(no);
		System.out.println(tdate_no);
		System.out.println(trans_no);
		System.out.println(tpurpose_no);
		System.out.println(accom_no);
		System.out.println(tschedule_no);
		
		System.out.println(map);
		model.addAttribute("map", map);
		
		String tdate_date = islandBoardService.contentTdate(tdate_no);
		String trans_vehicle = islandBoardService.contentTrans(trans_no);
		String tpurpose_purpose = islandBoardService.contentPurpose(tpurpose_no);
		String accom_room = islandBoardService.contentAccom(accom_no);
		String tschedule_month = islandBoardService.contentSchedule(tschedule_no);
		
		model.addAttribute("tdate_date", tdate_date);
		model.addAttribute("trans_vehicle", trans_vehicle);
		model.addAttribute("tpurpose_purpose", tpurpose_purpose);
		model.addAttribute("accom_room", accom_room);
		model.addAttribute("tschedule_month", tschedule_month);
		
		return ViewPath.CONSULTING + "content.jsp";
	}
	
	@RequestMapping("/board/delete")
	public String delete(Model model, int no) {
		int su = islandBoardService.delete(no);
		
		System.out.println(su);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "delete");
		model.addAttribute("url", "/kisland/cat4/consulting");
		
		return ViewPath.CONSULTING + "result.jsp";

	}
	
	@RequestMapping("/board/updateform")
	public String updateForm(Model model, int no) {
		
		List<ManagerVO> list = islandBoardService.selectManager();
		List<AccommoVO> alist = islandBoardService.selectAccommo();
		List<TransportationVO> tlist = islandBoardService.selectTransportation();
		List<TravelDateVO> dlist = islandBoardService.selectTraveldate();
		List<TravelPurposeVO> plist = islandBoardService.selectTravelpurpose();
		List<TravelScheduleVO> slist = islandBoardService.selectTravelschedule();
		
		model.addAttribute("list", list);
		model.addAttribute("alist", alist);
		model.addAttribute("tlist", tlist);
		model.addAttribute("dlist", dlist);
		model.addAttribute("plist", plist);
		model.addAttribute("slist", slist);
		
		IslandBoardVO vo = islandBoardService.selectOne(no);
		
		String content = vo.getIslboard_content();
		
		vo.setIslboard_content(content.replaceAll("<br>", "\r\n"));
		
		model.addAttribute("vo", vo);
		
		return ViewPath.CONSULTING + "update.jsp";
	}
	
	@RequestMapping("/board/update")
	public String update(Model model, IslandBoardVO vo) {
		String content = vo.getIslboard_content();
		vo.setIslboard_content(content.replaceAll("\r\n", "<br>"));
		
		int su = islandBoardService.update(vo);
		
		int tdate_no = vo.getTdate_no();
		int trans_no = vo.getTrans_no();
		int tpurpose_no = vo.getTpurpose_no();
		int accom_no = vo.getAccom_no();
		int tschedule_no = vo.getTschedule_no();
		System.out.println(tdate_no);
		System.out.println(trans_no);
		System.out.println(tpurpose_no);
		System.out.println(accom_no);
		System.out.println(tschedule_no);

		model.addAttribute("su", su);
		model.addAttribute("status", "update");
		model.addAttribute("url", "/kisland/board/content?no=" + vo.getNo() + "&tschedule_no=" + tschedule_no + "&accom_no=" + accom_no + "&tpurpose_no=" + tpurpose_no + "&trans_no=" + trans_no + "&tdate_no=" + tdate_no);
		System.out.println(vo.getNo());
		
		return ViewPath.CONSULTING + "result.jsp";
	}
	
	@RequestMapping("/board/replyform")
	public String replyform(HttpServletRequest request) {
		return ViewPath.CONSULTING + "replyform.jsp";
	}
	
	@RequestMapping("/board/reply")
	public String reply(Model model, IslandBoardVO vo, HttpServletRequest request) {
		int i = Integer.parseInt(request.getParameter("no"));
		System.out.println(i);
		
		int su = islandBoardService.reply(vo);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "update");
		model.addAttribute("url", "/kisland/board/content?no=" + vo.getNo() + "&tdate_no=" + vo.getTdate_no()+ "&trans_no=" + vo.getTrans_no() + "&tpurpose_no=" + vo.getTpurpose_no() + "&accom_no=" + vo.getAccom_no() + "&tschedule_no=" + vo.getTschedule_no());
		
		return ViewPath.CONSULTING + "result.jsp";
	}
	
}
