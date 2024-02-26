package cat4.cat4controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cat4.service.TerminalAllService;
import cat4.vo.ParkingVO;
import cat4.vo.PlaneTerminalVO;
import cat4.vo.PublicTerminalVO;
import cat4.vo.TrainTerminalVO;
import common.ViewPath;

@Controller
public class Cat42Controller {

	private TerminalAllService terminalallService;
	
	public Cat42Controller(TerminalAllService terminalallService) {
		this.terminalallService = terminalallService;
	}
	
	@RequestMapping("/cat42/terminalinfo")
	public String terminalinfo() {
		return ViewPath.TERMINAL + "info.jsp";
	}
	
//	@RequestMapping("/cat42/terminalmap")
//	public String terminalmap(Model model, HttpServletRequest request) {
//		int port_no = Integer.parseInt(request.getParameter("port_no"));
//		System.out.println(port_no);
//		List<ParkingVO> plist = terminalallService.selectParking(port_no);
//		System.out.println(plist);
//		model.addAttribute(plist);
//		return ViewPath.TERMINAL + "map.jsp";
//	}
	
	@RequestMapping("/cat42/terminalmap")
	public String terminalmap(Model model, int port_no) {
		List<PlaneTerminalVO> pllist = terminalallService.selectPlaneTerminal(port_no);
		for(PlaneTerminalVO vo : pllist) {
			System.out.println(vo.getPlane_name());
		}
		List<ParkingVO> plist = terminalallService.selectParking(port_no);
		List<TrainTerminalVO> tlist = terminalallService.selectTrainTerminal(port_no);
		List<PublicTerminalVO> ptlist = terminalallService.selectPublicTerminal(port_no);
		
		model.addAttribute("ptlist", ptlist);
		model.addAttribute("tlist", tlist);
		model.addAttribute("plist",plist);
		model.addAttribute("pllist", pllist);
		return ViewPath.TERMINAL + "map.jsp";
	}
	
}
