package cat2.cat23.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cat2.cat23.service.CarCostService;
import all.vo.ShipVO;
import common.ViewPath;

@Controller
public class CarCostController {
	private CarCostService carcostService;
	
	public CarCostController(CarCostService carcostService) {
		this.carcostService = carcostService;
	}


	@RequestMapping("/cat23/insertForm")
	public String insertForm(Model model ) {
		List<ShipVO> list =  carcostService.selectInterval();
		
		
		model.addAttribute("list", list);
		
		
		return ViewPath.CAT23 + "insertForm.jsp";
	}
	
	
	@RequestMapping("/cat23/result")
	public String result(Model model, String ship_interval) {
		
		List<Map<String,Object>> list = carcostService.selectList(ship_interval);
		if(list.isEmpty()) {
			list= null;
		}
		
		
		model.addAttribute("list", list);
		System.out.println(list);
		System.out.println(ship_interval);
		
		return ViewPath.CAT23 + "result.jsp";
	}
	
	
	
}
