package cat3;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import all.service.MngBrdService;
import all.vo.MngBrdVO;
import common.Paging;
import common.ViewPath;

@Controller
public class Cat34Controller {
	
	private MngBrdService mngbrdService;
	
	public Cat34Controller(MngBrdService mngbrdService) {
		this.mngbrdService = mngbrdService;
	}

	
	@RequestMapping("/cat34/list")
	public String list(Model model, Integer page, String type, String word) {

		int ctgrno = 34;
		int num = 1;
		
		if(page==null) {
			page = 1;	
		}
		
		if(type !=null && type.equals("")) {
			type = null;
			word = null;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("type", type);
		map.put("word", word);
		map.put("mngbrd_ctgrno", ctgrno);
		map.put("num", num);
		
		int mngbrdCount = mngbrdService.MngBrdGetTotal(map);
		Paging paging = new Paging(page, mngbrdCount);
		
		map.put("first", paging.getFirst());
		map.put("last", paging.getLast());	
		
		List<MngBrdVO> list = mngbrdService.MngBrdList(map);
		
		if(list.isEmpty()) {
			list = null;
		}
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);

		return ViewPath.CAT34 + "content.jsp";
	}

	
	@RequestMapping("/cat34/writeform")
	public String insertForm() {
		return ViewPath.CAT34 + "write.jsp";
	}
	
	@Autowired
	private ServletContext application;
	
	@RequestMapping("/cat34/write")
	public String insert(Model model, HttpSession session, MngBrdVO vo, HttpServletRequest request) {
		
		Integer mngcheck = (Integer)request.getSession().getAttribute("mngcheck");
		vo.setManager_no(mngcheck);
		
		int num = mngbrdService.MngBrdGetNum34();
		vo.setNum(num);
		
		int su = mngbrdService.MngBrdInsert(vo);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "write");
		model.addAttribute("url", "/kisland/cat34/content");
		
		model.addAttribute("vo", vo);

		return ViewPath.CAT34 + "result.jsp";
	}
	
	
	@RequestMapping("/cat34/content")
	public String content(Model model, String num) {
		
		int nu = 1;
		int n = 1;
		if(num == null) {
			nu = 0;
		}
		
		Map<String, Object> map = mngbrdService.MngBrdGetContent1(n+nu);
		
		model.addAttribute("vo", map);
		
		return ViewPath.CAT34 + "content.jsp";
	}
	
	@RequestMapping("/cat34/updateform")
	public String updateForm(Model model, int no) {
		
		MngBrdVO vo = mngbrdService.MngBrdOne(no);
		
		model.addAttribute("vo", vo);
		
		return ViewPath.CAT34 + "update.jsp";
	}
	
	@RequestMapping("/cat34/update")
	public String update(Model model, MngBrdVO vo) {
	
		int su = mngbrdService.MngBrdUpdate(vo);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "update");
		model.addAttribute("url", "/kisland/cat34/content?no=" + vo.getNo());
				
		return ViewPath.CAT34 + "result.jsp";
	}
	
	@RequestMapping("/cat34/delete")
	public String delete(Model model, int no) {
		
		int su = mngbrdService.MngBrdDelete(no);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "delete");
		model.addAttribute("url", "/kisland/cat34/list");
		
		return ViewPath.CAT34 + "result.jsp";
	}


}








