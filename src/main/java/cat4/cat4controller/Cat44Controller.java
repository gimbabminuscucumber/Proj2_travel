package cat4.cat4controller;

import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cat4.service.TideService;
import cat4.vo.TideVO;
import common.ViewPath;

@Controller
public class Cat44Controller {

	private TideService tideService;
	
	public Cat44Controller(TideService tideService) {
		this.tideService = tideService;
	}
	
	@RequestMapping("/cat44/tide")
	public String tide() {
		return ViewPath.TIDE + "tide.jsp";
	}
	
	@RequestMapping("/cat44/tideinfo")
	public String tideinfo(Model model, int port_no) {
		List<TideVO> list = tideService.selectTide(port_no);
		model.addAttribute("list", list);
		return ViewPath.TIDE + "tideinfo.jsp";
	}
	
}
