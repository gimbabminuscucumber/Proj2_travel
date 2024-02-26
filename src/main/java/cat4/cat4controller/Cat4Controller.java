package cat4.cat4controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import all.vo.InfoBoardVO;
import all.vo.ShipVO;
import cat4.service.InfoBoardService;
import common.ViewPath;

@Controller
public class Cat4Controller {

	private InfoBoardService infoBoardService;
	
	public void setInfoBoardService(InfoBoardService infoBoardService) {
		this.infoBoardService = infoBoardService;
	}
	
	@RequestMapping("/cat4/mainCat4")
	public String mainCat4() {
		return ViewPath.MAIN + "mainPage.jsp";
	}
	
	@RequestMapping("/cat4/site")
	public String site(Model model, int infobrd_ctgrno) {
		
		List<InfoBoardVO> list = infoBoardService.selectList(infobrd_ctgrno);
		
		model.addAttribute("list", list);
		
		return ViewPath.MAIN + "site.jsp";
	}
	
	@RequestMapping("/cat4/godid")
	public String godid(Model model, int infobrd_ctgrno) {
		
		List<InfoBoardVO> list = infoBoardService.selectList(infobrd_ctgrno);
		
		model.addAttribute("list", list);
		
		return ViewPath.SITE + "godid.jsp";
	}
	
	@RequestMapping("/cat4/rydbr")
	public String rydbr(Model model, int infobrd_ctgrno) {
		List<InfoBoardVO> list = infoBoardService.selectList2(infobrd_ctgrno);
		model.addAttribute("list", list);
		return ViewPath.SITE + "rydbr.jsp";
	}
	
	@RequestMapping("/cat4/wldur")
	public String wldur(Model model, int infobrd_ctgrno) {
		List<InfoBoardVO> list = infoBoardService.selectList3(infobrd_ctgrno);
		model.addAttribute("list", list);
		return ViewPath.SITE + "wldur.jsp";
	}
	
	@RequestMapping("/cat4/tjstk")
	public String tjstk(Model model) {
		List<ShipVO> list = infoBoardService.selectList4();
		System.out.println(list.size());
		model.addAttribute("list", list);
		return ViewPath.SITE + "tjstk.jsp";
	}
	
	@RequestMapping("/cat4/qnfvus")
	public String qnfvus(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> map2 = new HashMap<String, Object>();
		Map<String, Object> map3 = new HashMap<String, Object>();
		Map<String, Object> map4 = new HashMap<String, Object>();
		Map<String, Object> map5 = new HashMap<String, Object>();
		int infobrd_ctgrno = 455;
		int no = 39;
		int no2 = 40;
		int no3 = 41;
		int no4 = 42;
		int no5 = 43;
		map.put("infobrd_ctgrno", infobrd_ctgrno);
		map2.put("infobrd_ctgrno", infobrd_ctgrno);
		map3.put("infobrd_ctgrno", infobrd_ctgrno);
		map4.put("infobrd_ctgrno", infobrd_ctgrno);
		map5.put("infobrd_ctgrno", infobrd_ctgrno);
		map.put("no", no);
		map2.put("no", no2);
		map3.put("no", no3);
		map4.put("no", no4);
		map5.put("no", no5);
		List<InfoBoardVO> list = infoBoardService.selectList5(map);
		List<InfoBoardVO> list2 = infoBoardService.selectList5(map2);
		List<InfoBoardVO> list3 = infoBoardService.selectList5(map3);
		List<InfoBoardVO> list4 = infoBoardService.selectList5(map4);
		List<InfoBoardVO> list5 = infoBoardService.selectList5(map5);
		System.out.println(list.size());
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		model.addAttribute("list5", list5);
		return ViewPath.SITE + "qnfvus.jsp";
	}
	
	@RequestMapping("/cat4/travelready")
	public String travelready(Model model) {
		List<InfoBoardVO> list = infoBoardService.selectReady();
		model.addAttribute("list", list);
		return ViewPath.READY + "ready.jsp";
	}
	
	
}
