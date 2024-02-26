package all.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import all.service.LoginService;
import all.vo.UserInfoVO;
import common.ViewPath;

@Controller
public class LoginController {

	private LoginService loginService;
	
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	
	@RequestMapping("/login/loginform")
	public String LoginForm(HttpServletRequest request,String user_id) {
		
		boolean check = false;
		
		if(user_id == null) {
			Cookie[] cks = request.getCookies();
			
			if(cks != null) {
				for(Cookie ck : cks) {
					if(ck.getName().equals("ckid")) {
						user_id = ck.getValue();
						check = true;
						break;
					}
				}
			}
		}
		
		request.setAttribute("user_id", user_id);
		request.setAttribute("check", check);
		
		return ViewPath.LOGIN + "login.jsp";
	}
	
	@RequestMapping("/login/check")
	public String checkLogin(HttpServletRequest request,HttpServletResponse response,UserInfoVO vo) {
		
		int no = loginService.checkLogin(vo);
		int mng = loginService.checkMng(vo);
		int status = loginService.selectStatus(vo);
		
		String msg = null;
		boolean check = false;
		
		if(no != 0) {
			if(no == mng) {
				msg = vo.getUser_id() + "관리자님이 로그인하셨습니다.";
				check = true;
				
				request.getSession().setAttribute("login", no);
				//관리자 로그인시 밑의의 값 저장 
				request.getSession().setAttribute("mngcheck", mng);
				
				request.getSession().setAttribute("status", status);
				
				System.out.println(mng);
				//아이디 기억하기 체크 유무
				String ckid = request.getParameter("ckid");
				
				Cookie ck = null;
				
				//쿠키파일 읽어 오기...
				Cookie[] cks = request.getCookies();
				
				//기존 쿠키파일 검색
				if(cks != null){
					for(Cookie c : cks){
						if(c.getName().equals("ckid")){
							ck = c;
							break;
						}
					}
				}
				
				if(ckid != null){ //체크 되어 있을때
					if(ck == null){ // 쿠키파일 없을때
						ck = new Cookie("ckid",vo.getUser_id());
						
						//root로 경로 설정
						ck.setPath("/");
					
						//유효시간 설정
						ck.setMaxAge(60*60*24);
					
						//클라이언트에게 쿠키파일 생성
						response.addCookie(ck);
					}else{ //있을때
						if(!ck.getValue().equals(vo.getUser_id())){
							ck.setValue(vo.getUser_id());
							ck.setPath("/");
							response.addCookie(ck);
						}
					}
				}else{ // 체크 안되어 있을때
					if(ck != null){
						if(ck.getValue().equals(vo.getUser_id())){
							ck.setPath("/");
							ck.setMaxAge(0);
							response.addCookie(ck);
						}
					}
				}
			
			}else {
				msg = vo.getUser_id() + "님이 로그인하셨습니다.";
				check = true;
				
				request.getSession().setAttribute("login", no);
				
				//아이디 기억하기 체크 유무
				String ckid = request.getParameter("ckid");
				
				Cookie ck = null;
				
				//쿠키파일 읽어 오기...
				Cookie[] cks = request.getCookies();
				
				//기존 쿠키파일 검색
				if(cks != null){
					for(Cookie c : cks){
						if(c.getName().equals("ckid")){
							ck = c;
							break;
						}
					}
				}
				
				if(ckid != null){ //체크 되어 있을때
					if(ck == null){ // 쿠키파일 없을때
						ck = new Cookie("ckid",vo.getUser_id());
						
						//root로 경로 설정
						ck.setPath("/");
					
						//유효시간 설정
						ck.setMaxAge(60*60*24);
					
						//클라이언트에게 쿠키파일 생성
						response.addCookie(ck);
					}else{ //있을때
						if(!ck.getValue().equals(vo.getUser_id())){
							ck.setValue(vo.getUser_id());
							ck.setPath("/");
							response.addCookie(ck);
						}
					}
				}else{ // 체크 안되어 있을때
					if(ck != null){
						if(ck.getValue().equals(vo.getUser_id())){
							ck.setPath("/");
							ck.setMaxAge(0);
							response.addCookie(ck);
						}
					}
				}
			}
			
			
		}
		else{
			msg = "아이디 혹은 비밀번호가 잘못되었습니다.";	
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("check", check);
		
		return ViewPath.LOGIN + "result.jsp";
	}

	@RequestMapping("/login/findform")
	public String findForm() {
		return ViewPath.LOGIN + "findform.jsp";
	}
	
	@RequestMapping("/login/find")
	public String find(Model model,UserInfoVO vo,String mode) {
		
		String find = null;
		System.out.println("ㅎㅇ"+vo.getUser_id());
		if(vo.getUser_id() == null) {
			find = loginService.findId(vo);
			System.out.println(find);
		}else {
			find = loginService.findPw(vo);
			System.out.println(find);
		}
		
		
		boolean check = false;
		if(find != null){
			check = true;
			String re = "";
			for(int i = 0; i < find.length(); i++){
				if(i % 2 == 0){
					re += find.charAt(i);
				}else{
					re += "*";
				}
			}
			
			if(mode.equals("user_id")){
				model.addAttribute("user_id", re);
			}else{
				model.addAttribute("user_password", re);
			}
		}
		
		model.addAttribute("check", check);
		
		
		return ViewPath.LOGIN + "findresult.jsp";
	}
	
	@RequestMapping("/login/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return ViewPath.LOGIN + "logout.jsp";
	}
	
}



























