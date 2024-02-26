package cat6.cat61.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cat6.cat61.service.Cat61Service;
import cat6.cat61.vo.ReserveInquireVO;
import common.Paging;
import common.ViewPath;

@Controller
public class Cat61Controller {
	private Cat61Service s61;
	
	public Cat61Controller(Cat61Service s61) {
		this.s61 = s61;
	}
	
	@RequestMapping("/cat6/cat61/list")
	public String list(Model model,Integer page,String type,String word) {
		if(page == null) {
			page = 1;
		}
		
		if(type != null && type.equals("")) {
			type = null;
			word = null;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("type",type);
		map.put("word",word);
		
		int boardCount = s61.getTotal(map);
		
		
		Paging paging = new Paging(page, boardCount);
		
	
		map.put("first", paging.getFirst());
		map.put("last", paging.getLast());
		
		List<ReserveInquireVO> list = s61.selectList(map);
//		if(list.isEmpty()) {
//			list = null;
//		}
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		
		return ViewPath.CAT61 + "list.jsp";
	}
	
	@RequestMapping("/cat6/cat61/writeform")
	public String writeForm() {
		return ViewPath.CAT61 + "write.jsp";
	}
	
	@RequestMapping("/cat6/cat61/write")
	public String wirte(Model model,HttpSession session, ReserveInquireVO vo) {
		
		Integer no = (Integer)session.getAttribute("login");
//		Integer mng = (Integer)session.getAttribute("mngcheck");
		
		if(no == null) {
			return "redirect:/login/loginform";
		}
		
		vo.setUser_no(no);	
		
		int su = s61.insert(vo);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "write");
		model.addAttribute("url", "/kisland/cat6/cat61/list");
		
		return ViewPath.CAT61 + "result.jsp";
	}
	
	@RequestMapping("/cat6/cat61/content")
	public String content(Model model,int no) {
		
		//BoardVO map = boardService.selectOne(seq);
		Map<String, Object> map = s61.getContent(no);
		
		model.addAttribute("vo", map);
		
		return ViewPath.CAT61 + "content.jsp";
	}
	
	@RequestMapping("/cat6/cat61/updateform")
	public String updateForm(Model model,int no) {
		ReserveInquireVO vo = s61.selectOne(no);
		
		String content = vo.getResvinquire_content();
		
		vo.setResvinquire_content(content.replaceAll("<br>", "\r\n"));
		
		model.addAttribute("vo", vo);
		
		return ViewPath.CAT61 + "update.jsp";
	}
	
	@RequestMapping("/cat6/cat61/update")
	public String update(Model model,ReserveInquireVO vo) {
		
		String content = vo.getResvinquire_content();
		
		vo.setResvinquire_content(content.replaceAll("\r\n", "<br>"));
		
		
		
		int su = s61.update(vo);
		
		
		
		model.addAttribute("su", su);
		model.addAttribute("status", "update");
		model.addAttribute("url", "/kisland/cat6/cat61/content?no=" + vo.getNo());
		
		return ViewPath.CAT61 + "result.jsp";
		
	}
	
	@RequestMapping("/cat6/cat61/delete")
	public String delete(Model model,int no) {
		
		int su = s61.delete(no);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "delete");
		model.addAttribute("url", "/kisland/cat6/cat61/list");
		
		return ViewPath.CAT61 + "result.jsp";
	}
	
	@RequestMapping("/cat6/cat61/reply")
	public String reply(int no, String resvinquire_comment, HttpServletRequest request) {
		int mngcheck = (int)request.getSession().getAttribute("mngcheck");
		ReserveInquireVO vo = new ReserveInquireVO();
		vo.setManager_no(mngcheck);
		vo.setNo(no);
		resvinquire_comment = resvinquire_comment.replaceAll("\r\n", "<br>");
		vo.setResvinquire_comment(resvinquire_comment);
		
		int su = s61.commentupdate(vo);

		return "redirect:/cat6/cat61/content?no=" + no;
	}
}
