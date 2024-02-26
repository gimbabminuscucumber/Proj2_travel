package cat4.cat4controller;

import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import all.vo.ShipVO;
import cat4.service.ShipService;
import common.ViewPath;

@Controller
public class Cat41Controller {

	private ShipService shipService;
	
	public Cat41Controller(ShipService shipService) {
		this.shipService = shipService;
	}
	
	@RequestMapping("/cat4/shipcompany")
	public String shipcompany(Model model) {
		List<ShipVO> list = shipService.selectShip();
		model.addAttribute("list", list);
		return ViewPath.SHIP + "shipcompany.jsp";
	}
	
	@RequestMapping("/cat4/shipinfo")
	public String shipinfo(Model model, int no) {
		System.out.println(no);
		ShipVO vo = shipService.selectInfo(no);
		model.addAttribute("vo", vo);
		
		return ViewPath.SHIP + "info.jsp";
	}
	
}
