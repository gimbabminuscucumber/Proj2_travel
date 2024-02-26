package cat7.controller;

import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import all.service.TermsService;
import all.vo.TermsVO;
import common.ViewPath;

@Controller
public class FooterController {

	private TermsService termsService;
	
	public FooterController(TermsService termsService) {
		this.termsService = termsService;
	}
	
	@RequestMapping("/footer/terms")
	public String Terms(Model model) {
		List<TermsVO> list = termsService.selectFooter();
		model.addAttribute("list", list);
		return ViewPath.TERMS + "terms.jsp";
	}
	
	@RequestMapping("/footer/terms2")
	public String Terms2(Model model) {
		List<TermsVO> list = termsService.selectFooter2();
		model.addAttribute("list", list);
		return ViewPath.TERMS + "terms.jsp";
	}
	
	@RequestMapping("/footer/terms3")
	public String Terms3(Model model) {
		List<TermsVO> list = termsService.selectFooter3();
		model.addAttribute("list", list);
		return ViewPath.TERMS + "terms.jsp";
	}
	
}



























