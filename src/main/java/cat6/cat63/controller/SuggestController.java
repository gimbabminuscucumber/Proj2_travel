package cat6.cat63.controller;

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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import cat6.cat63.service.SuggestService;
import cat6.cat63.vo.SuggestVO;
import common.Paging;
import common.ViewPath;

@Controller
public class SuggestController {

private SuggestService suggestService;
	
	public SuggestController(SuggestService suggestService) {
		this.suggestService = suggestService;
	}
	
	// 게시판 리스트 보기 (페이징 처리)==================================================
	@RequestMapping("/cat63/list")
	public String list(Model model, Integer page, String type, String word) {
	
		if(page == null) {
			page = 1;
		}

		if(type != null && type.equals("")) {
			type = null;
			word = null;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("type", type);
		map.put("word", word);
	
		int suggestCount = suggestService.getTotal(map);
		
		Paging paging = new Paging(page, suggestCount);
		
		map.put("first", paging.getFirst());
		map.put("list", paging.getLast());
	
		
		List<SuggestVO> list = suggestService.selectList(map);
		
//		if(list.isEmpty()) {
//			list = null;
//		}
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);

		return ViewPath.SUGGEST + "list.jsp";
	}
	
	
	// 게시판 글쓰기 버튼 클릭 시 =======================================================
	@RequestMapping("/cat63/writeform")
	public String writeFomr() {
		return ViewPath.SUGGEST + "write.jsp";
	}
	
	@Autowired
	private ServletContext application;
	
	// 게시판 글쓰기 (유저 로그인시) =================================================================
	@RequestMapping("/cat63/write")				
	//public String write(Model model, SuggestVO vo) {	// 비로그인에서 글쓰기

	public String write(Model model, HttpSession session, SuggestVO vo) {
		
		Integer userinfo_no = (Integer)session.getAttribute("login");	
																	
		vo.setUser_no(userinfo_no);						

		if(userinfo_no == null) {					
			return "redirect:/login/loginform";		
		}

		// 첨부파일
		String savePath = application.getRealPath("/resources/upload/");
		String filename = null;
		
		MultipartFile fileupload = vo.getSugg_upload();
				
		if(fileupload !=null && !fileupload.isEmpty()) {
			
			filename = fileupload.getOriginalFilename();
			
			File saveFile = new File(savePath, filename);
			
			if(!saveFile.exists()) {
				saveFile.mkdirs();
			}else {
				long time = System.currentTimeMillis();
				filename = String.format("%s%d%s", filename.substring(0, filename.lastIndexOf(".")),time,filename.substring(filename.lastIndexOf(".")));
				
				saveFile = new File(savePath, filename);
			}
			
			try {
				fileupload.transferTo(saveFile);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			vo.setSugg_file(filename);
		}else {
			vo.setSugg_file("no_file");
		}
		

		boolean check = suggestService.insert(vo);		// sugg_num 칼럼 +1 시키기는 코드
		
		if(check) {
			return "redirect:/cat63/list";
		}else {
			return "redirect:/cat63/writeform";
		}
	}	
	
	
	// 게시판 글쓰기 (내용) =================================================================
	@RequestMapping("/cat63/content")
	public String content(Model model, int no) {	// model, no(게시글 번호) 데이터를 content 변수에 담기
	
		Map<String, Object> map = suggestService.getContent(no);	// reviewService의 getContent 메소에 게시글(no)을 map형태로 저장
		
		model.addAttribute("vo", map);				// vo의 데이터를 map 형태로 불러오기
		
		return ViewPath.SUGGEST + "content.jsp";		
	}
	
	
	

	// 게시글 수정 버튼 클릭 시 =================================================================
	@RequestMapping("/cat63/updateform")
	public String updateForm(Model model, int no) {
		
		SuggestVO vo = suggestService.selectOne(no);
		
//		// summernote 사용하면 필요없는 코드
//		String content = vo.getSugg_content();
//		vo.setSugg_content(content.replaceAll("<br>", "\r\n"));	
		
		model.addAttribute("vo", vo);
		
		return ViewPath.SUGGEST + "update.jsp";
	}
	
	
	// 게시글 수정 ==========================================================================
	@RequestMapping("/cat63/update")
	public String update(Model model, SuggestVO vo) {
		
//		// summernote 사용하면 필요없는 코드
//		String content = vo.getSugg_content();
//		vo.setSugg_content(content.replaceAll("<br>", "\r\n"));
		
		int su = suggestService.update(vo);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "update");
		model.addAttribute("url", "/kisland/cat63/content?no=" + vo.getNo());	
	
		return ViewPath.SUGGEST + "result.jsp";
	}
	

	// 게시글 삭제 ==========================================================================
	@RequestMapping("/cat63/delete")
	public String delete(Model model, int no) {
		
		int su = suggestService.delete(no);
		
		model.addAttribute("su", su);
		model.addAttribute("status", "delete");
		model.addAttribute("url", "/kisland/cat63/list");	
	
		return ViewPath.SUGGEST + "result.jsp";
	}
	

	// 답변 ==========================================================================
	@RequestMapping("/cat63/reply/{no}")				// 게시글(no)에 대한 답변 url
	public String reply(Model model,@PathVariable("no") int no) {
		model.addAttribute("no", no);
		
		return ViewPath.SUGGEST + "write.jsp";
	}
}
