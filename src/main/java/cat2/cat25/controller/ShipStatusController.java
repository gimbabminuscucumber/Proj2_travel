package cat2.cat25.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import all.vo.PortVO;
import cat2.cat25.service.ShipStatusInfoService;
import common.ViewPath;

@Controller
public class ShipStatusController {
	private ShipStatusInfoService shipstatusService;

	public ShipStatusController(ShipStatusInfoService shipstatusService) {
		this.shipstatusService = shipstatusService;
	}
	
	@RequestMapping("/cat25/list")
	public String result(Model model) {
		
		List<Map<String,Object>> list = shipstatusService.selectList();
		if(list.isEmpty()) {
			list= null;
		}
		List<PortVO> port = shipstatusService.selectPort();
		if(port.isEmpty()) {
			port= null;
		}
		
		model.addAttribute("list", list);
		model.addAttribute("port", port);
		System.out.println(list);
		System.out.println(port);
		
		return ViewPath.CAT25 + "list.jsp";
	}
	
	
	
}
