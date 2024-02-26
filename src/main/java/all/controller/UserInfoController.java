package all.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import all.service.UserInfoService;
import all.vo.TermsVO;
import all.vo.UserInfoVO;
import common.ViewPath;

@Controller
public class UserInfoController {
	
	private UserInfoService userinfoService;
	
	public UserInfoController(UserInfoService userinfoService) {
		this.userinfoService = userinfoService;
	}
	
	
	
	
	
	@RequestMapping("/userinfo/mypage")
	public String myPage(Model model,HttpSession session) {
		Integer no = (Integer)session.getAttribute("login");
		
		if(no == null) {
			return "redirect:/login/loginform";
		}
		
		UserInfoVO vo = userinfoService.selectOne(no);
		
		model.addAttribute("vo", vo);
		
		return ViewPath.USERINFO + "myPage.jsp";
	}
	
	@RequestMapping("/userinfo/updateform")
	public String updateForm(Model model,HttpSession session) {
		
		Integer no = (Integer)session.getAttribute("login");
		
		if(no == null) {
			return "redirect:/login/loginform";
		}
		
		UserInfoVO vo = userinfoService.selectOne(no);
		
		model.addAttribute("vo", vo);
		
		return ViewPath.USERINFO + "updateForm.jsp";
	}

	@RequestMapping("/userinfo/deleteform")
	public String updateForm() {
		
		return ViewPath.USERINFO + "deleteForm.jsp";
	}
	
	@RequestMapping("/userinfo/update")
	public String update(Model model,HttpSession session,UserInfoVO vo) {
		
		Integer no = (Integer)session.getAttribute("login");
		
		if(no == null) {
			return "redirect:/login/loginform";
		}
		
		vo.setNo(no);
		
		int su = userinfoService.update(vo);
		
		String msg = null;
		String url = null;
		
		if(su != 0){
			msg = "수정완료!!MyPage로...";
			url = "/kisland/userinfo/mypage";
		}else{
			msg = "수정실패!!이전페이지로...";
			url = "/kisland/userinfo/updateform";
		}
		
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		
		return ViewPath.USERINFO + "result.jsp";
	}
	
	@RequestMapping("/userinfo/delete")
	public String delete(HttpServletRequest request,HttpServletResponse response,String password) {
		
		Integer no = (Integer)request.getSession().getAttribute("login");
		
		if(no == null) {
			return "redirect:/login/loginform";
		}
		
		UserInfoVO vo = userinfoService.selectOne(no);
		
		String msg = null;
		String url = null;
		
		if(!vo.getUser_password().equals(password)) {
			msg = "비밀번호가 틀렸습니다. 이전페이지로...";
			url = "/kisland/userinfo/deleteform";
		}else {
			int su = userinfoService.delete(no);
			
			if(su != 0) {
				msg = "탈퇴 성공..";
				url = "/kisland/";
				
				Cookie[] cks = request.getCookies();
				
				if(cks != null) {
					for(Cookie ck:cks) {
						if(ck.getName().equals("ckid")) {
							if(ck.getValue().equals(vo.getUser_id())) {
								ck.setMaxAge(0);
								ck.setPath("/");
								response.addCookie(ck);
								break;
							}
						}
					}
				}
				
				request.getSession().invalidate();
				
			}else {
				msg = "탈퇴 실패. 이전페이지로...";
				url = "/kisland/userinfo/deleteform";
			}
		}
		
		request.setAttribute("url", url);
		request.setAttribute("msg", msg);
		
		return ViewPath.USERINFO + "result.jsp";
	}
	
	@RequestMapping(value = "/userinfo/checkId" ,produces = "application/text;charset=utf8" )
	@ResponseBody
	public String checkId(String id) {
		//System.out.println("????");
		if(userinfoService.checkId(id)) {
			return "이미 사용중인 ID입니다.";
		}else {
			return "사용 가능한 ID입니다";
		}
		
	}
	
	@RequestMapping("/userinfo/jointerms")
	public String joinTerms(Model model) {
		List<TermsVO> terms = userinfoService.selectTerms();
		
		model.addAttribute("terms", terms);
		
		return ViewPath.USERINFO + "joinTerms.jsp";
	}
	
	@RequestMapping("/userinfo/joinform")
	public String joinForm(Model model, String user_terms) {
		
		model.addAttribute("user_terms", user_terms);
		System.out.println(user_terms);
		
		return ViewPath.USERINFO + "joinForm.jsp";
		
		
	}
	
	@RequestMapping("/userinfo/join")
	public String join(Model model,UserInfoVO vo) {
		int su = userinfoService.insert(vo);
		String url = null;
		String msg = null;
		
		if(su != 0){
			msg = "회원가입 성공!..로그인페이지로..";
			url = "/kisland/login/loginform?user_id=" + vo.getUser_id();		
		}else{
			msg = "회원가입 실패!..이전페이지로..";
			url = "history.back()";		
		}
		model.addAttribute("url", url);
		model.addAttribute("msg", msg);
		
		return ViewPath.USERINFO + "result.jsp";
	}
	
	@RequestMapping("/userinfo/userlist")
	   public String userlist(Model model) {
	      List<UserInfoVO> userlist = userinfoService.userList();
	      
	      model.addAttribute("userlist", userlist);
	      
	      return ViewPath.USERINFO + "userList.jsp";
	   }

}














