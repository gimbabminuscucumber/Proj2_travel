package cat6.cat62.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import all.vo.InfoBoardVO;
import cat6.cat62.service.FaqService;
import common.Paging;
import common.ViewPath;

@Controller
public class FaqController {
	
	private FaqService faqService;
	
	public FaqController(FaqService faqService) {
		this.faqService = faqService;
	}

	
	@RequestMapping("/cat62/list")
	public String list1() {

		return ViewPath.FAQ + "list.jsp";
	}
	@RequestMapping("/cat62/list1")
	public String list1(Model model) {
		
		List<InfoBoardVO> list = faqService.selectList1();
		
		model.addAttribute("list", list);

		return ViewPath.FAQ + "list1.jsp";
	}
	@RequestMapping("/cat62/list2")
	public String list2(Model model) {
		
		List<InfoBoardVO> list = faqService.selectList2();
		
		model.addAttribute("list", list);
		
		return ViewPath.FAQ + "list2.jsp";
	}
	@RequestMapping("/cat62/list3")
	public String list3(Model model) {
		
		List<InfoBoardVO> list = faqService.selectList3();
		
		model.addAttribute("list", list);
		
		return ViewPath.FAQ + "list3.jsp";
	}
	@RequestMapping("/cat62/list4")
	public String list4(Model model) {
		
		List<InfoBoardVO> list = faqService.selectList41();
		
		model.addAttribute("list", list);
		
		return ViewPath.FAQ + "list4.jsp";
	}
	@RequestMapping("/cat62/list5")
	public String list5(Model model) {
		
		List<InfoBoardVO> list = faqService.selectList5();
		
		model.addAttribute("list", list);
		
		return ViewPath.FAQ + "list5.jsp";
	}

	
	@Autowired
	private ServletContext application;
	
	
	@RequestMapping("/cat62/content")
	public String content(Model model, int no) {
		
		Map<String, Object> map = faqService.getContent(no);
		
		model.addAttribute("vo", map);
		
		return ViewPath.FAQ + "content.jsp";
	}
	
}