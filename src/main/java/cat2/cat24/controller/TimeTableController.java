package cat2.cat24.controller;

import java.util.List;


import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cat2.cat24.service.TimeTableService;
import all.vo.PortVO;
import all.vo.TimeTableVO;
import common.ViewPath;

@Controller
public class TimeTableController {
	private TimeTableService timetableService;
	
	public TimeTableController(TimeTableService timetableService) {
		this.timetableService = timetableService;
	}
	
	
	@RequestMapping("/cat24/insertForm")
	public String insertForm(Model model ) {
		List<PortVO> list =  timetableService.selectPort();
		if(list.isEmpty()) {
			list= null;
		}
		
		model.addAttribute("list", list);
		System.out.println("ㅎㅇ"+list);
		
		return ViewPath.CAT24 + "insertForm.jsp";
	}
	
	@RequestMapping("/cat24/result")
	public String result(Model model, TimeTableVO vo) {
		
		List<Map<String,Object>> list = timetableService.selectList(vo);
		if(list.isEmpty()) {
			list= null;
		}
		
		
		model.addAttribute("list", list);
		System.out.println(list);
		System.out.println(vo);
		
		return ViewPath.CAT24 + "result.jsp";
	}
	

}
