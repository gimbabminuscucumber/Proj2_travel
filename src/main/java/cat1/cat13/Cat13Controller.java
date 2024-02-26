package cat1.cat13;

import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import all.service.TermsService;
import all.vo.TermsVO;
import common.ViewPath;

@Controller
public class Cat13Controller {

	private TermsService termsService;
	
	public Cat13Controller(TermsService termsService) {
		this.termsService = termsService;
	}
	
	@RequestMapping("/cat1/cat13/list")
	public String list(Model model) {
		
		List<TermsVO> list = termsService.TermsList();
		model.addAttribute("list", list);
		
		return ViewPath.TICKET + "list.jsp";
	}
	
}
