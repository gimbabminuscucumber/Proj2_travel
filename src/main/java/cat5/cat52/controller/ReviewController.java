package cat5.cat52.controller;

import java.util.HashMap;


import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import all.vo.CommVO;
import cat5.cat52.service.ReviewService;
import cat5.cat52.vo.ReviewVO;
import common.Paging;
import common.ViewPath;

@Controller
public class ReviewController {

	private ReviewService reviewService;
	
	public ReviewController(ReviewService reviewService) {
		this.reviewService = reviewService;
	}
	
	// java(jsp) 파일 실행 코드 
	
		// 페이지 연결 > 
		@RequestMapping("/")						// "/" 는 처음 이동할 경로
		public String index() {						// index 메소드 생성
			return ViewPath.INDEX + "index.jsp";	// ViewPath의 INDEX에 설정한 경로 + "index.jsp" 까지의 경로를 리턴
		}
		
		
		// 게시판 리스트 보기 (페이징 처리)==================================================
		@RequestMapping("/cat52/list")				// 뷰페이지에서 넘어오는 url 경로
		public String list(Model model, Integer page, String type, String word) {
		
			int ctgrno = 52;
			
			if(page == null) {	// 페이지 값이 없으면 
				page = 1;		// 1 반환
			}
			
			if(type != null && type.equals("")) {	// type이 null이 아니거나 공란이면
				type = null;						// type, word에 null 을 담겠다
				word = null;
			}
			
			System.out.println("type = " + type);	// 오류 확인
			System.out.println("word = " + word);	// 오류 확인
			
			Map<String, Object> map = new HashMap<String, Object>();	// map 객체 생성
			
			map.put("type", type);					// "type" = view 페이지에서 사용할 변수
			map.put("word", word);					// "word" = view 페이지에서 사용할 변수
			map.put("review_ctgrno", ctgrno);		// "review_ctgrno" = view 페이지에서 사용할 변수
			
			int readCount = reviewService.getTotal(map);	// 글의 총 개수(getTotal)를 map으로 받아 readCount에 담겠다
															// 부적합한 열 유형 오류 확인 시 확인해야할 가장 중요한거 >> 데이터가 잘 넘어오는가? >> syso 로 확인하기
			Paging paging = new Paging(page, readCount);	// page, readCount 데이터를 받는 paging 객체 생성
			
			map.put("first", paging.getFirst());
			map.put("last", paging.getLast());
		
			List<ReviewVO> list = reviewService.selectList(map);	// reviewService의 selectList에 map을 넣겠다
			List<ReviewVO> rankList = reviewService.rankList();		// reviewService의 rankList()를 ReviewVO에 List형으로 rankList에 담아라
			
			model.addAttribute("rankList", rankList);	// "rankList" 변수에 rankList를 추가해라
			model.addAttribute("list", list);			// "list" = view 페이지에서 사용할 변수   / list = 62행에 만든 데이터를 담은 변수
			model.addAttribute("paging", paging);		// "paging" = view 페이지에서 사용할 변수 / paging = 57행에 만든 데이터를 담은 변수
			
			return ViewPath.REVIEW + "list.jsp";		// view 파일의 list.jsp 파일로 연결하겠다
		}
		
		
		// 게시판 글쓰기 버튼 클릭 시 =======================================================
		@RequestMapping("/cat52/writeform")			// 뷰페이지에서 넘어오는 url 경로
		public String writeForm() {
			return ViewPath.REVIEW + "write.jsp";
		}
		
		@Autowired
		private ServletContext application;
		
		
		// 게시판 글쓰기 완료 클릭 시 =================================================================
		@RequestMapping("/cat52/write")					// view page에서 넘어오는 url 경로
		
		public String write(Model model, HttpSession session, ReviewVO vo) {
			
			Integer userinfo_no = (Integer)session.getAttribute("login");	// 유저 정보 불러오기 >> session에 저장된 login의 유저정보(no)를 Integer로 불러와라
			
			vo.setUser_no(userinfo_no);				// userinfo값(유저 번호)을 vo에 있는 setUserinfo에 저장
			
			if(userinfo_no == null) {					// 유저 정보가(user_no) 없다면
				return "redirect:/login/loginform";		// "/login/loginform" url을 호출 (url 경로는 중복 불가)
			}
	
			int island_no = reviewService.matchIsland(vo.getIsland_name());
			vo.setIsland_no(island_no);
			
			double score = (vo.getReview_stuff() 
					+ vo.getReview_environ() 
					+ vo.getReview_traffic() 
					+ vo.getReview_lodge() 
					+ vo.getReview_water()) / 5.0;		// 섬 평가 항목들의 합
			
			vo.setReview_score(score);	// 섬 평가 항목들의 합을 setter에 넣겠다
			
			// integer : API 에 포함되어 있는거라 디폴트가 null 값
			// 글쓰기 칸 안에서 띄어쓰기 적용
			//String content = vo.getReview_content(); 					// vo에 있는 getReview_content에 들어갈 데이터를 content에 저장
			//vo.setReview_content(content.replaceAll("\r\n", "<br>"));	// content에 들어가는 "\r\n"을 "<br>"로 변경	>> summernote 사용하면 필요 없는 코드
			
			int su = reviewService.insert(vo); 			// reviewService의 insert 메소드에 vo를 넣어서 su에 저장
			
			model.addAttribute("su", su);
			model.addAttribute("status", "write");
			model.addAttribute("url", "/kisland/cat52/list");	// write.jsp 에서 '쓰기' 기능 완료 했을 떄 넘어오는 데이터를 "/kisland/cat52/list" url로 넘기겠다
			model.addAttribute("vo", vo);	
			
			System.out.println("getComm_no" + vo.getComm_no());	// 오류 확인 코드
			
			return ViewPath.REVIEW + "result.jsp";
		}
		

		
		// 게시글 수정 버튼 클릭 시 =================================================================
		@RequestMapping("/cat52/updateform")
		public String updateForm(Model model, int no) {
			
			ReviewVO vo = reviewService.selectOne(no);
			
			model.addAttribute("vo", vo);
			
			return ViewPath.REVIEW + "update.jsp";
		}
		
		
		
		// 게시글 수정 ==========================================================================
		@RequestMapping("/cat52/update")
		public String update(Model model, ReviewVO vo) {
			
			int su = reviewService.update(vo);

			System.out.println("su = " + su);		// 오류 확인
			System.out.println("vo = " + vo);		// 오류 확인
			System.out.println("island_no() = " + vo.getIsland_no());		// 오류 확인
			System.out.println("island_name() = " + vo.getIsland_name());	// 오류 확인
			
			
			int island_no = reviewService.matchIsland(vo.getIsland_name());	// 섬 이름 가져오는 메소드
			vo.setIsland_no(island_no);
			
			
			model.addAttribute("su", su);
			model.addAttribute("status", "update");
			model.addAttribute("url", "/kisland/cat52/content?no=" + vo.getNo());
			
			return ViewPath.REVIEW + "result.jsp";
		}
		
		
		
		// 게시판 글쓰기 (내용) =================================================================
		@RequestMapping("/cat52/content")
		public String content(Model model, int no) {	// model, no(게시글 번호) 데이터를 content 변수에 담기
		
			Map<String, Object> map = reviewService.getContent(no);	// reviewService에서 getContent에 게시글(no)을 map형태로 저장
			
			model.addAttribute("vo", map);				// vo의 데이터를 map 형태로 불러오기
			
			return ViewPath.REVIEW + "content.jsp";		
		}
		
		
		

		// 게시글 삭제 ==========================================================================
		@RequestMapping("/cat52/delete")
		public String delete(Model model, int no) {
			
			int su = reviewService.delete(no);
			
			model.addAttribute("su", su);
			model.addAttribute("status", "delete");
			model.addAttribute("url", "/kisland/cat52/list");
		
			return ViewPath.REVIEW + "result.jsp";
		}
		
		
		

		// 답변 ==========================================================================
		@RequestMapping("/cat52/reply/{no}")
		
		public String reply(Model model,@PathVariable("no") int no) {
			model.addAttribute("no", no);
			
			return ViewPath.REVIEW + "write.jsp";
		}
		
		
		@RequestMapping(value="/cat52/replywrite", produces = "application/text;charset=utf8")
		@ResponseBody		
		public String replywrite(HttpServletRequest request, String comm_comment) {
			int no = (Integer)request.getSession().getAttribute("login");
			
			CommVO vo = new CommVO();
			
			vo.setUser_no(no);
			vo.setComm_comment(comm_comment);
			
			String name = reviewService.getusername(no);

			int su = reviewService.comminsert(vo);
			
			return name + " : " + comm_comment;
			
		
		}
		
	
}
